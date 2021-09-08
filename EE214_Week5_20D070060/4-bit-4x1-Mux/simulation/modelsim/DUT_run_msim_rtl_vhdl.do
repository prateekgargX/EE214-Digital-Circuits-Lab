transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/TopLevel.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/gates.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/DUT.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/MUX_2x1.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/MUX_4x1.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/MUX_4bit_4x1 .vhdl}

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
