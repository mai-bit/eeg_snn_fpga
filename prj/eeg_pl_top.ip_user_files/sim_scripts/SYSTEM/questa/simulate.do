onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SYSTEM_opt

do {wave.do}

view wave
view structure
view signals

do {SYSTEM.udo}

run -all

quit -force
