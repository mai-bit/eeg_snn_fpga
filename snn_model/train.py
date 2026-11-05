# EEG SNN Training based on snnTorch (snn-fpga architecture)
# Architecture: Direct Voltage Injection No-Leak IF Neurons
# Aligned to 16x16 Synaptic Crossbar Tiles

import snntorch as snn
from snntorch import surrogate

import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader
import numpy as np
import os

# ========================================================
# Network Architecture (Aligned to 16x16 hardware tiles)
# ========================================================
num_inputs = 64       # 64 Raw EEG samples (0.25s window @ 250Hz, 4 input tiles)
num_hidden = 64       # 64 Hidden IF neurons (4 tiles)
num_outputs = 16      # 16 Output neurons (Class 0: Theta, 1: Alpha, 2: Beta; rest padded to 16)
thresh = 1.0

# Temporal Dynamics
num_steps = 16        # T=16 hardware simulation timesteps
beta = 1.0            # No-leak IF neuron (multiplier-less hardware)

# Define Network
class Net(nn.Module):
    def __init__(self):
        super().__init__()
        grad = surrogate.fast_sigmoid(slope=25)

        # Initialize layers with No-leak IF Neurons
        self.spkgen = snn.Leaky(beta=beta, threshold=thresh, reset_mechanism="zero", reset_delay=False, spike_grad=grad)
        self.fc1 = nn.Linear(num_inputs, num_hidden, bias=False)
        self.lif1 = snn.Leaky(beta=beta, threshold=thresh, reset_mechanism="zero", reset_delay=False, spike_grad=grad)
        self.fc2 = nn.Linear(num_hidden, num_outputs, bias=False)
        self.lif2 = snn.Leaky(beta=beta, threshold=thresh, reset_mechanism="zero", reset_delay=False, spike_grad=grad)

        # Kaiming normal initialization for 64-input scale
        nn.init.kaiming_normal_(self.fc1.weight, nonlinearity='relu')
        nn.init.kaiming_normal_(self.fc2.weight, nonlinearity='relu')

    def forward(self, x, debug=False, device=torch.device("cpu")):
        mem0 = self.spkgen.init_leaky()
        mem1 = self.lif1.init_leaky()
        mem2 = self.lif2.init_leaky()
        spk0 = torch.zeros((x.shape[0], num_inputs)).to(device) 
        spk1 = torch.zeros((x.shape[0], num_hidden)).to(device)
        spk2 = torch.zeros((x.shape[0], num_outputs)).to(device)

        spk0_rec = []
        mem0_rec = []
        spk1_rec = []
        mem1_rec = []
        spk2_rec = []
        mem2_rec = []

        for step in range(num_steps):
            spk0_next, mem0 = self.spkgen(x, mem0)
            cur1 = self.fc1(spk0)
            spk1_next, mem1 = self.lif1(cur1, mem1)
            cur2 = self.fc2(spk1)
            spk2_next, mem2 = self.lif2(cur2, mem2) 

            mem0 = torch.clamp(mem0, -2*self.spkgen.threshold, 2*self.spkgen.threshold)
            mem1 = torch.clamp(mem1, -2*self.lif1.threshold, 2*self.lif1.threshold)
            mem2 = torch.clamp(mem2, -2*self.lif2.threshold, 2*self.lif2.threshold)

            mem0_rec.append(mem0) 
            spk0_rec.append(spk0)
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

    def quantize(self, new_thresh):
        with torch.no_grad():
            self.spkgen.threshold = new_thresh
            self.lif1.threshold = new_thresh
            self.lif2.threshold = new_thresh
            self.fc1.weight.data = torch.round(self.fc1.weight * new_thresh)
            self.fc2.weight.data = torch.round(self.fc2.weight * new_thresh)


# ========================================================
# EEG Dataset Loader (External CSV or Calibrated Synthesis)
# ========================================================
class EEGDataset(Dataset):
    def __init__(self, n_samples=1200, is_train=True, csv_file=None):
        self.data = []
        self.labels = []

        if csv_file and os.path.exists(csv_file):
            print(f"Loading EEG data from {csv_file}...")
            arr = np.loadtxt(csv_file, delimiter=',')
            raw_x = arr[:, :num_inputs]
            raw_y = arr[:, num_inputs].astype(int)
            raw_x = (raw_x - raw_x.min(axis=1, keepdims=True)) / (raw_x.max(axis=1, keepdims=True) - raw_x.min(axis=1, keepdims=True) + 1e-6)
            self.data = torch.tensor(raw_x, dtype=torch.float32)
            self.labels = torch.tensor(raw_y, dtype=torch.long)
        else:
            Fs = 250.0
            np.random.seed(42 if is_train else 123)
            n_each = n_samples // 3

            for label, f_center in [(0, 5.5), (1, 10.0), (2, 20.0)]:
                for _ in range(n_each):
                    t = np.arange(num_inputs) / Fs
                    phase = np.random.uniform(0, 2 * np.pi)
                    f_jitter = f_center + np.random.uniform(-0.8, 0.8)
                    wave = np.sin(2 * np.pi * f_jitter * t + phase)
                    wave += 0.3 * np.sin(4 * np.pi * f_jitter * t + phase)
                    wave += 0.25 * np.random.randn(num_inputs)
                    wave = (wave - wave.min()) / (wave.max() - wave.min() + 1e-6)
                    self.data.append(wave)
                    self.labels.append(label)

            self.data = torch.tensor(np.array(self.data), dtype=torch.float32)
            self.labels = torch.tensor(np.array(self.labels), dtype=torch.long)

    def __len__(self):
        return len(self.labels)

    def __getitem__(self, idx):
        return self.data[idx], self.labels[idx]


if __name__ == "__main__":
    batch_size = 32
    dtype = torch.float
    device = torch.device("cpu")

    print("==================================================")
    print("  snn-fpga: EEG SNN Training (Raw Waveform Mode)  ")
    print(f"  Inputs: {num_inputs} | Hidden: {num_hidden} | Outputs: {num_outputs}")
    print(f"  Timesteps: {num_steps} | Model: No-leak IF")
    print("==================================================")

    train_dataset = EEGDataset(n_samples=1500, is_train=True)
    test_dataset = EEGDataset(n_samples=300, is_train=False)

    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)
    test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=False)

    net = Net().to(device)
    loss_fn = nn.CrossEntropyLoss()
    optimizer = torch.optim.Adam(net.parameters(), lr=1e-2, betas=(0.9, 0.999))

    num_epochs = 10
    print("\nStarting training loop...")

    for epoch in range(num_epochs):
        net.train()
        total_loss = 0.0
        correct = 0
        total = 0

        for data, targets in train_loader:
            data = data.to(device)
            targets = targets.to(device)

            spk_rec, _ = net(data, device=device)
            spk_sum = spk_rec.sum(dim=0)
            loss_val = loss_fn(spk_sum, targets)

            optimizer.zero_grad()
            loss_val.backward()
            optimizer.step()

            total_loss += loss_val.item()
            _, predicted = spk_sum.max(1)
            total += targets.size(0)
            correct += (predicted == targets).sum().item()

        train_acc = 100.0 * correct / total
        print(f"Epoch [{epoch+1}/{num_epochs}] Loss: {total_loss/len(train_loader):.4f} | Train Acc: {train_acc:.2f}%")

    # Evaluation on Test Set
    net.eval()
    test_correct = 0
    test_total = 0
    with torch.no_grad():
        for data, targets in test_loader:
            data = data.to(device)
            targets = targets.to(device)
            spk_rec, _ = net(data, device=device)
            _, predicted = spk_rec.sum(dim=0).max(1)
            test_total += targets.size(0)
            test_correct += (predicted == targets).sum().item()

    test_acc = 100.0 * test_correct / test_total
    print(f"\nFinal Test Set Accuracy: {test_acc:.2f}%")

    model_save_path = "./eeg_64_spk.h5"
    torch.save(net.state_dict(), model_save_path)
    print(f"Saved trained model to: {model_save_path}")
