transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sequence-Generator-Struct/Flipflops.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sequence-Generator-Struct/DUT.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sequence-Generator-Struct/Sequence_generator_struct.vhdl}

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sequence-Generator-Struct/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
