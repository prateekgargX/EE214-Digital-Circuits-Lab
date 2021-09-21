transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {DUT.vho}

vcom -93 -work work {D:/Acads/Sem3/EE 214-Digital Circuits Lab/Projects/4_bit_Adder_Subtractor/testbench.vhdl}

vsim -t 1ps -L maxv -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
