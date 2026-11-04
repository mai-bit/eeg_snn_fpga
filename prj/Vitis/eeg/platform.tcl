# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\FPGA\prj\eeg_brain_snn\prj\Vitis\eeg\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\FPGA\prj\eeg_brain_snn\prj\Vitis\eeg\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {eeg}\
-hw {D:\FPGA\prj\eeg_brain_snn\prj\Vitis\SYSTEM_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {D:/FPGA/prj/eeg_brain_snn/prj/Vitis}

platform write
platform generate -domains 
platform active {eeg}
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform active {eeg}
platform config -updatehw {D:/FPGA/prj/eeg_brain_snn/prj/Vitis/SYSTEM_wrapper.xsa}
platform generate
platform clean
platform generate
platform active {eeg}
platform config -updatehw {D:/FPGA/prj/eeg_brain_snn/prj/Vitis/SYSTEM_wrapper.xsa}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/FPGA/prj/eeg_brain_snn/prj/Vitis/SYSTEM_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/FPGA/prj/eeg_brain_snn/prj/Vitis/SYSTEM_wrapper.xsa}
platform generate -domains 
