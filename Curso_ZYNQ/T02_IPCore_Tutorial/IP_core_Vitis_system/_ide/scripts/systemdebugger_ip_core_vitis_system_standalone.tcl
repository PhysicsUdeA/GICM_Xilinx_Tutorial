# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T02_IPCore_Tutorial\IP_core_Vitis_system\_ide\scripts\systemdebugger_ip_core_vitis_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T02_IPCore_Tutorial\IP_core_Vitis_system\_ide\scripts\systemdebugger_ip_core_vitis_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A93AB6A" && level==0 && jtag_device_ctx=="jsn-Xilinx PYNQ-Z1-003017A93AB6A-23727093-0"}
fpga -file C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T02_IPCore_Tutorial/IP_core_Vitis/_ide/bitstream/design_IP_core_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T02_IPCore_Tutorial/design_IP_core_wrapper/export/design_IP_core_wrapper/hw/design_IP_core_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T02_IPCore_Tutorial/IP_core_Vitis/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T02_IPCore_Tutorial/IP_core_Vitis/Debug/IP_core_Vitis.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
