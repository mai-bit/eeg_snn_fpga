#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mode="${1:-fast}"
cpb=16
trace=--trace
args=(+trace)
if [[ "$mode" == real ]]; then cpb=1736; trace=; args=(); fi
mkdir -p "work/sim/$mode"
verilator --binary -j 4 --timing $trace -Wno-fatal --top-module tb_chain \
  -GCPB="$cpb" --Mdir "work/sim/$mode/obj" \
  sim/tb_chain.sv rtl/uart_rx.v rtl/tgam_parser.v rtl/eeg_top_pl.v \
  > "work/sim/$mode/build.log" 2>&1
(cd "work/sim/$mode"; ./obj/Vtb_chain "${args[@]}" | tee run.log)
