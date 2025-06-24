vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_easy_counter_0_0/sim/pynq_bd_easy_counter_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_alu_0_0/sim/pynq_bd_alu_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_rega5_0_0/sim/pynq_bd_rega5_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_regb5_0_0/sim/pynq_bd_regb5_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_selDataRegister_0_0/sim/pynq_bd_selDataRegister_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_triState_0_0/sim/pynq_bd_triState_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_ProgramCounter_0_0/sim/pynq_bd_ProgramCounter_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_stack_0_0/sim/pynq_bd_stack_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_indice_0_0/sim/pynq_bd_indice_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_selDirRegister_0_0/sim/pynq_bd_selDirRegister_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_dirValRegister_0_0/sim/pynq_bd_dirValRegister_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_control_0_0/sim/pynq_bd_control_0_0.vhd" \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \


