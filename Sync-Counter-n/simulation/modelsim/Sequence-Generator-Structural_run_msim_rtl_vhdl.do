transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sync-Counter-n/Gates.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sync-Counter-n/Flipflops.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sync-Counter-n/DUT.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sync-Counter-n/Sequence_generator_struct.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sync-Counter-n/mod_2^n_counter.vhdl}
vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sync-Counter-n/logic_unit.vhdl}

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sync-Counter-n/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
