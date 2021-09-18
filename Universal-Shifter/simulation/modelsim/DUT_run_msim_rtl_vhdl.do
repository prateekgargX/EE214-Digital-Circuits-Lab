transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/gates.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/DUT.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/MUX_2x1.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/Bit_Reversal.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/Right_Shift_4.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/Right_Shift_2.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/Right_Shift_1.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/Universal_Shifter.vhdl}

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Moodle Submissions/Universal-Shifter/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
