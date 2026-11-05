import os
import sys
import shutil
import torch
from torch import nn
import torch.nn.functional as F
import snntorch as snn
from train import Net, EEGDataset, num_inputs, num_hidden, num_outputs
from compiler.tiles import MLPTiles
from compiler.compile import compile_to_arr, compile_to_py_img
from compiler.quantize import quantize
import time

QUANT_VAL = 64 # for weight quantization
THRESH = 64 # must be a multiple of quant_val

out_folder = "compile_out"
if len(sys.argv) > 2:
    out_folder = sys.argv[2]

os.makedirs(out_folder, exist_ok=True)

mode = "c"
if len(sys.argv) > 1:
    mode = sys.argv[1]

# Output file path
if mode == "c":
    out_path = os.path.join(out_folder, "model_params.h")
else:
    out_path = os.path.join(out_folder, "weights.py")

f_out = open(out_path, "w")
old_stdout = sys.stdout
sys.stdout = f_out

try:
    model = Net()
    model_path = os.path.join(os.path.dirname(__file__), "eeg_64_spk.h5")
    state_dict = torch.load(model_path, weights_only=True)
    model.load_state_dict(state_dict)

    test_dataset = EEGDataset(n_samples=16, is_train=False)
    sample_x, sample_y = test_dataset[0]

    quantize(model, torch.tensor(QUANT_VAL))
    spk0, spk1, spk2, mem0, mem1 = model((sample_x.view(1, -1) * QUANT_VAL).round(), debug=True)

    tile = MLPTiles(model)

    if mode == "c":
        compile_to_arr(tile, img=sample_x.view(num_inputs), spk=[spk0, spk1, spk2], mem=[mem0, mem1, None])
    elif mode == "py":
        compile_to_py_img(tile, img=sample_x.view(num_inputs), spk=[spk0, spk1, spk2])
        shutil.copy(os.path.join(os.path.dirname(__file__), "py_to_mem.py"), os.path.join(out_folder, "py_to_mem.py"))

finally:
    sys.stdout = old_stdout
    f_out.close()

print(f"Successfully generated {out_path} with mode {mode}")
