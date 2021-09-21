transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Acads/Sem3/EE 214-Digital Circuits Lab/Projects/Decoder_2x4/gates.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE 214-Digital Circuits Lab/Projects/Decoder_2x4/DUT.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE 214-Digital Circuits Lab/Projects/Decoder_2x4/Decoder_2x4.vhdl}

vcom -93 -work work {D:/Acads/Sem3/EE 214-Digital Circuits Lab/Projects/Decoder_2x4/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
