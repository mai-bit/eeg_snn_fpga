import os
import sys
import csv
import json
import random
import numpy as np
import torch
import torch.nn as nn
from torch.utils.data import DataLoader, TensorDataset

import snntorch as snn
from snntorch import surrogate
import snntorch.functional as SF

# ========================================================
# Network Architecture (Aligned to 16x16 snn-fpga hardware tiles)
# ========================================================
num_inputs = 64       # 64 Features
num_hidden = 64       # 64 Hidden IF neurons (4 tiles)
num_outputs = 16      # 16 Output neurons (Class 0: Relaxed, 1: Med Math, 2: Hard Math; rest padded)
num_steps = 16        # T=16 hardware simulation timesteps
beta = 1.0            # No-leak IF neuron (multiplier-less)
thresh = 1.0

class Net(nn.Module):
    def __init__(self):
        super().__init__()
        grad = surrogate.fast_sigmoid(slope=25)
        self.spkgen = snn.Leaky(beta=beta, threshold=thresh, reset_mechanism="zero", reset_delay=False, spike_grad=grad)
        self.fc1 = nn.Linear(num_inputs, num_hidden, bias=False)
        self.lif1 = snn.Leaky(beta=beta, threshold=thresh, reset_mechanism="zero", reset_delay=False, spike_grad=grad)
        self.fc2 = nn.Linear(num_hidden, num_outputs, bias=False)
        self.lif2 = snn.Leaky(beta=beta, threshold=thresh, reset_mechanism="zero", reset_delay=False, spike_grad=grad)

        # Scale weights to avoid spike starvation across 16 timesteps
        nn.init.kaiming_normal_(self.fc1.weight, nonlinearity='relu')
        nn.init.kaiming_normal_(self.fc2.weight, nonlinearity='relu')
        with torch.no_grad():
            self.fc1.weight.data *= 3.5
            self.fc2.weight.data *= 3.5

    def forward(self, x, debug=False, device=torch.device("cpu")):
        mem0 = self.spkgen.init_leaky()
        mem1 = self.lif1.init_leaky()
        mem2 = self.lif2.init_leaky()
        spk0 = torch.zeros((x.shape[0], num_inputs)).to(device) 
        spk1 = torch.zeros((x.shape[0], num_hidden)).to(device)
        spk2 = torch.zeros((x.shape[0], num_outputs)).to(device)

        spk0_rec, mem0_rec = [], []
        spk1_rec, mem1_rec = [], []
        spk2_rec, mem2_rec = [], []

        for step in range(num_steps):
            spk0_next, mem0 = self.spkgen(x, mem0)
            cur1 = self.fc1(spk0)
            spk1_next, mem1 = self.lif1(cur1, mem1)
            cur2 = self.fc2(spk1)
            spk2_next, mem2 = self.lif2(cur2, mem2) 

            mem0 = torch.clamp(mem0, -2*self.spkgen.threshold, 2*self.spkgen.threshold)
            mem1 = torch.clamp(mem1, -2*self.lif1.threshold, 2*self.lif1.threshold)
            mem2 = torch.clamp(mem2, -2*self.lif2.threshold, 2*self.lif2.threshold)

            spk0_rec.append(spk0)
            mem0_rec.append(mem0)
            spk1_rec.append(spk1)
            mem1_rec.append(mem1)
            spk2_rec.append(spk2)
            mem2_rec.append(mem2)

            spk0 = spk0_next
            spk1 = spk1_next
            spk2 = spk2_next

        if not debug:
            return torch.stack(spk2_rec, dim=0), torch.stack(mem2_rec, dim=0)
        return spk0_rec, spk1_rec, spk2_rec, mem0_rec, mem1_rec

# ========================================================
# Data Preprocessing from 50-Subject MindWave CSV
# ========================================================
def load_and_preprocess(csv_path, samples_per_class=2500):
    print(f"Loading real EEG dataset from: {csv_path}...")
    X_by_class = {0: [], 1: [], 2: []}

    with open(csv_path, "r", encoding="utf-8") as f:
        r = csv.DictReader(f)
        for i, row in enumerate(r):
            if i % 2 == 1:
                continue
            if row['neuro_poor_signal_strength'] != '0':
                continue
            tid = int(row['task_id']) - 1 # 0: Relaxed, 1: Med Math, 2: Hard Math
            if tid not in [0, 1, 2]:
                continue

            raw = np.array(json.loads(row['neuro_raw_eeg']), dtype=np.float32)

            for idx in range(0, len(raw) - 128, 128):
                chunk = raw[idx:idx+128]
                # FFT energy spectrum (64 positive frequency bins, capturing Delta, Theta, Alpha, Beta, Gamma)
                fft_mag = np.abs(np.fft.rfft(chunk - np.mean(chunk)))[:64]
                fft_mag = np.log1p(fft_mag)
                fft_mag = (fft_mag - np.mean(fft_mag)) / (np.std(fft_mag) + 1e-5)
                # Normalize to [0.0, 1.0] for IF spike generation
                fft_mag = np.clip((fft_mag + 2.5) / 5.0, 0.0, 1.0)
                X_by_class[tid].append(fft_mag)

    print("Extracted window counts:")
    for c in range(3):
        print(f"  Class {c}: {len(X_by_class[c])} windows")

    min_samples = min(len(X_by_class[c]) for c in range(3))
    n_sel = min(min_samples, samples_per_class)

    X_all, Y_all = [], []
    for c in range(3):
        random.seed(42)
        sel = random.sample(X_by_class[c], n_sel)
        X_all.extend(sel)
        Y_all.extend([c] * n_sel)

    combined = list(zip(X_all, Y_all))
    random.seed(123)
    random.shuffle(combined)

    X_tensor = torch.tensor(np.array([x[0] for x in combined]), dtype=torch.float32)
    Y_tensor = torch.tensor(np.array([x[1] for x in combined]), dtype=torch.long)

    split = int(len(X_tensor) * 0.8)
    train_ds = TensorDataset(X_tensor[:split], Y_tensor[:split])
    test_ds = TensorDataset(X_tensor[split:], Y_tensor[split:])
    print(f"Dataset split: Train = {len(train_ds)}, Test = {len(test_ds)}")
    return train_ds, test_ds

if __name__ == "__main__":
    csv_path = r"C:\Users\LynnHoo\Downloads\merged_eeg_datas_50_subjects.csv"
    if len(sys.argv) > 1:
        csv_path = sys.argv[1]

    train_ds, test_ds = load_and_preprocess(csv_path, samples_per_class=3000)
    train_loader = DataLoader(train_ds, batch_size=64, shuffle=True)
    test_loader = DataLoader(test_ds, batch_size=64, shuffle=False)

    device = torch.device("cpu")
    net = Net().to(device)
    optimizer = torch.optim.Adam(net.parameters(), lr=8e-3)
    loss_fn = SF.ce_rate_loss()

    epochs = 12
    print(f"\nTraining snn-fpga Model on Real EEG Data ({epochs} epochs)...")

    for epoch in range(epochs):
        net.train()
        total_loss, correct, total = 0.0, 0, 0

        for x, y in train_loader:
            x, y = x.to(device), y.to(device)
            spk_rec, _ = net(x)
            loss = loss_fn(spk_rec[:, :, :3], y)

            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            total_loss += loss.item()
            pred = spk_rec[:, :, :3].sum(dim=0).argmax(dim=-1)
            correct += (pred == y).sum().item()
            total += y.size(0)

        train_acc = 100.0 * correct / total

        # Test evaluation
        net.eval()
        t_corr, t_tot = 0, 0
        with torch.no_grad():
            for x, y in test_loader:
                x, y = x.to(device), y.to(device)
                spk_rec, _ = net(x)
                pred = spk_rec[:, :, :3].sum(dim=0).argmax(dim=-1)
                t_corr += (pred == y).sum().item()
                t_tot += y.size(0)

        test_acc = 100.0 * t_corr / t_tot
        print(f"Epoch [{epoch+1:2d}/{epochs}] | Loss: {total_loss/len(train_loader):.4f} | Train Acc: {train_acc:.1f}% | Test Acc: {test_acc:.1f}%")

    # Save trained checkpoint
    save_path = os.path.join(os.path.dirname(__file__), "eeg_64_spk.h5")
    torch.save(net.state_dict(), save_path)
    print(f"\nModel checkpoint saved to {save_path}")
