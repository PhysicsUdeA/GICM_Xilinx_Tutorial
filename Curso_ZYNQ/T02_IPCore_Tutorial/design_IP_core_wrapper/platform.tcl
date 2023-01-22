# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T02_IPCore_Tutorial\design_IP_core_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T02_IPCore_Tutorial\design_IP_core_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_IP_core_wrapper}\
-hw {C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T02_IPCore_Tutorial\IPCore_Prj\design_IP_core_wrapper.xsa}\
-out {C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T02_IPCore_Tutorial}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_IP_core_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
