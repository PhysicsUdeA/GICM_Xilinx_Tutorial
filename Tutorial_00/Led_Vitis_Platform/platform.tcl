# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\GitHub\GICM_Xilinx_Tutorial\Tutorial_00\Led_Vitis_Platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\GitHub\GICM_Xilinx_Tutorial\Tutorial_00\Led_Vitis_Platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Led_Vitis_Platform}\
-hw {C:\GitHub\GICM_Xilinx_Tutorial\Tutorial_00\Led_Vivado_Prj\design_Led_Ctrl_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/GitHub/GICM_Xilinx_Tutorial/Tutorial_00}

platform write
platform generate -domains 
platform active {Led_Vitis_Platform}
platform generate
