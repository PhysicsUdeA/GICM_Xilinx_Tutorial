onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_fir_filter  -L xilinx_vip -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_fir_filter xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {design_fir_filter.udo}

run 1000ns

endsim

quit -force
