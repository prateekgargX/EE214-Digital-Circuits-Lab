transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-2/4-bit-4x1-MUX/4bit_4x1_MUX_1.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-2/4-bit-4x1-MUX/DUT.vhdl}

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-2/4-bit-4x1-MUX/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
