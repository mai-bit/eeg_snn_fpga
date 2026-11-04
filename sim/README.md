# TGAM acquisition chain simulation

Run from WSL/Linux with Verilator 5 and a C++ compiler:

    bash sim/run.sh fast
    bash sim/run.sh real

Fast mode uses 16 clock cycles per UART bit and writes chain.vcd.
Real mode uses 1736 clock cycles per bit with a 100 MHz clock
(approximately 57600 baud); no large waveform is generated.

The test drives actual 8-N-1 serial bits into eeg_pl_top and models
synchronous 32-bit BRAM writes. It checks RAW signed conversion,
checksum rejection, eight band fields, status packing, ring wrap,
reset/recovery, disabled legacy notifications and unwritten SNN slots.
A six-byte variable-layout packet is deliberately rejected to document
the current parser limitation; this is not protocol conformance.

Scope: custom RTL through the BRAM write interface. This does not simulate
vendor AXI/BRAM IP, ARM execution/cache/MMU, board constraints or analog EEG.
Historical generated Vivado netlists/bitstreams are not exercised.
Producer sequence rollover and UART baud mismatch tolerance are not covered.
Build logs preserve existing RTL width warnings; -Wno-fatal permits review.
