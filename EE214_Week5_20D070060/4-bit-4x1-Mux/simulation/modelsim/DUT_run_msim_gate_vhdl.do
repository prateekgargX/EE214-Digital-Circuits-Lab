transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {DUT.vho}

vcom -93 -work work {D:/Acads/Sem3/EE214-Digital_Circuits_Lab/Week-5/4-bit-4x1-Mux/testbench.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=DUT_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
