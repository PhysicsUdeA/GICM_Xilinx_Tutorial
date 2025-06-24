onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+pynq_bd  -L xil_defaultlib -L secureip -O5 xil_defaultlib.pynq_bd

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {pynq_bd.udo}

run 1000ns

endsim

quit -force
