# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T01_VITIS_Tutorial\Vitis_XADC_system\_ide\scripts\systemdebugger_vitis_xadc_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\GitHub\GICM_Xilinx_Tutorial\Curso_ZYNQ\T01_VITIS_Tutorial\Vitis_XADC_system\_ide\scripts\systemdebugger_vitis_xadc_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A93AB6A" && level==0 && jtag_device_ctx=="jsn-Xilinx PYNQ-Z1-003017A93AB6A-23727093-0"}
fpga -file C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T01_VITIS_Tutorial/Vitis_XADC/_ide/bitstream/design_Vitis_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T01_VITIS_Tutorial/design_Vitis_wrapper/export/design_Vitis_wrapper/hw/design_Vitis_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T01_VITIS_Tutorial/Vitis_XADC/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/GitHub/GICM_Xilinx_Tutorial/Curso_ZYNQ/T01_VITIS_Tutorial/Vitis_XADC/Debug/Vitis_XADC.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
