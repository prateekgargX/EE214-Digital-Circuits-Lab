transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Sequence-Generator-Structural.vho}

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital-Circuits-Lab/Projects/HW-3/Sequence-Generator-Structural/testbench.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=Sequence-Generator-Structural_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
