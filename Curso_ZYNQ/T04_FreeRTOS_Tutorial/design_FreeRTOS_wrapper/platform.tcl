# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T04_FreeRTOS_Tutorial\design_FreeRTOS_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T04_FreeRTOS_Tutorial\design_FreeRTOS_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_FreeRTOS_wrapper}\
-hw {C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T04_FreeRTOS_Tutorial\FreeRTOS_Vivado_Prj\design_FreeRTOS_wrapper.xsa}\
-out {C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T04_FreeRTOS_Tutorial}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_hello_world}
platform generate -domains 
platform active {design_FreeRTOS_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
