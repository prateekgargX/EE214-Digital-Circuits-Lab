-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/24/2021 19:39:11"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	timer_controller IS
    PORT (
	inp : IN std_logic_vector(2 DOWNTO 0);
	reset : IN std_logic;
	clock_50 : IN std_logic;
	clock_1 : IN std_logic;
	out_LED : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END timer_controller;

-- Design Ports Information


ARCHITECTURE structure OF timer_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_1 : std_logic;
SIGNAL ww_out_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \state_transition_proc~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \y_present~8_combout\ : std_logic;
SIGNAL \y_present.t2~regout\ : std_logic;
SIGNAL \y_present~6_combout\ : std_logic;
SIGNAL \y_present.t1~regout\ : std_logic;
SIGNAL \y_present.rst~regout\ : std_logic;
SIGNAL \timer_c|Equal3~0_combout\ : std_logic;
SIGNAL \outp~0_combout\ : std_logic;
SIGNAL \timer_c|timer1[0]~63\ : std_logic;
SIGNAL \timer_c|timer1[1]~23\ : std_logic;
SIGNAL \timer_c|timer1[1]~23COUT1_65\ : std_logic;
SIGNAL \timer_c|timer1[2]~25\ : std_logic;
SIGNAL \timer_c|timer1[2]~25COUT1_66\ : std_logic;
SIGNAL \timer_c|timer1[3]~27\ : std_logic;
SIGNAL \timer_c|timer1[3]~27COUT1_67\ : std_logic;
SIGNAL \timer_c|timer1[4]~29\ : std_logic;
SIGNAL \timer_c|timer1[4]~29COUT1_68\ : std_logic;
SIGNAL \timer_c|timer1[5]~31\ : std_logic;
SIGNAL \timer_c|timer1[6]~33\ : std_logic;
SIGNAL \timer_c|timer1[6]~33COUT1_69\ : std_logic;
SIGNAL \timer_c|timer1[7]~39\ : std_logic;
SIGNAL \timer_c|timer1[7]~39COUT1_70\ : std_logic;
SIGNAL \timer_c|timer1[8]~61\ : std_logic;
SIGNAL \timer_c|timer1[8]~61COUT1_71\ : std_logic;
SIGNAL \timer_c|timer1[9]~47\ : std_logic;
SIGNAL \timer_c|timer1[9]~47COUT1_72\ : std_logic;
SIGNAL \timer_c|timer1[10]~57\ : std_logic;
SIGNAL \timer_c|timer1[11]~59\ : std_logic;
SIGNAL \timer_c|timer1[11]~59COUT1_73\ : std_logic;
SIGNAL \timer_c|timer1[12]~43\ : std_logic;
SIGNAL \timer_c|timer1[12]~43COUT1_74\ : std_logic;
SIGNAL \timer_c|timer1[13]~45\ : std_logic;
SIGNAL \timer_c|timer1[13]~45COUT1_75\ : std_logic;
SIGNAL \timer_c|timer1[14]~51\ : std_logic;
SIGNAL \timer_c|timer1[14]~51COUT1_76\ : std_logic;
SIGNAL \timer_c|timer1[15]~37\ : std_logic;
SIGNAL \timer_c|timer1[16]~49\ : std_logic;
SIGNAL \timer_c|timer1[16]~49COUT1_77\ : std_logic;
SIGNAL \timer_c|timer1[17]~41\ : std_logic;
SIGNAL \timer_c|timer1[17]~41COUT1_78\ : std_logic;
SIGNAL \timer_c|timer1[18]~35\ : std_logic;
SIGNAL \timer_c|timer1[18]~35COUT1_79\ : std_logic;
SIGNAL \timer_c|timer1[19]~53\ : std_logic;
SIGNAL \timer_c|timer1[19]~53COUT1_80\ : std_logic;
SIGNAL \timer_c|timer1[20]~55\ : std_logic;
SIGNAL \timer_c|timer1[21]~17\ : std_logic;
SIGNAL \timer_c|timer1[21]~17COUT1_81\ : std_logic;
SIGNAL \timer_c|timer1[22]~19\ : std_logic;
SIGNAL \timer_c|timer1[22]~19COUT1_82\ : std_logic;
SIGNAL \timer_c|timer1[23]~21\ : std_logic;
SIGNAL \timer_c|timer1[23]~21COUT1_83\ : std_logic;
SIGNAL \timer_c|timer1[24]~15\ : std_logic;
SIGNAL \timer_c|timer1[24]~15COUT1_84\ : std_logic;
SIGNAL \timer_c|timer1[25]~9\ : std_logic;
SIGNAL \timer_c|timer1[26]~11\ : std_logic;
SIGNAL \timer_c|timer1[26]~11COUT1_85\ : std_logic;
SIGNAL \timer_c|timer1[27]~13\ : std_logic;
SIGNAL \timer_c|timer1[27]~13COUT1_86\ : std_logic;
SIGNAL \timer_c|timer1[28]~3\ : std_logic;
SIGNAL \timer_c|timer1[28]~3COUT1_87\ : std_logic;
SIGNAL \timer_c|timer1[29]~5\ : std_logic;
SIGNAL \timer_c|timer1[29]~5COUT1_88\ : std_logic;
SIGNAL \timer_c|timer1[30]~7\ : std_logic;
SIGNAL \timer_c|LessThan0~0_combout\ : std_logic;
SIGNAL \timer_c|LED~0_combout\ : std_logic;
SIGNAL \clock_1~combout\ : std_logic;
SIGNAL \timer_c|LED~1_combout\ : std_logic;
SIGNAL \timer_c|LED~2_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~6_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~7_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~1_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~2_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~3_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~4_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~5_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~9_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~8_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~10_combout\ : std_logic;
SIGNAL \timer_c|LessThan0~11_combout\ : std_logic;
SIGNAL \out_LED~0_combout\ : std_logic;
SIGNAL \timer_c|LED~4_combout\ : std_logic;
SIGNAL \outp~1_combout\ : std_logic;
SIGNAL \timer_c|timer2[0]~63\ : std_logic;
SIGNAL \timer_c|timer2[1]~45\ : std_logic;
SIGNAL \timer_c|timer2[1]~45COUT1_65\ : std_logic;
SIGNAL \timer_c|timer2[2]~47\ : std_logic;
SIGNAL \timer_c|timer2[2]~47COUT1_66\ : std_logic;
SIGNAL \timer_c|timer2[3]~49\ : std_logic;
SIGNAL \timer_c|timer2[3]~49COUT1_67\ : std_logic;
SIGNAL \timer_c|timer2[4]~51\ : std_logic;
SIGNAL \timer_c|timer2[4]~51COUT1_68\ : std_logic;
SIGNAL \timer_c|timer2[5]~53\ : std_logic;
SIGNAL \timer_c|timer2[6]~55\ : std_logic;
SIGNAL \timer_c|timer2[6]~55COUT1_69\ : std_logic;
SIGNAL \timer_c|timer2[7]~57\ : std_logic;
SIGNAL \timer_c|timer2[7]~57COUT1_70\ : std_logic;
SIGNAL \timer_c|timer2[8]~59\ : std_logic;
SIGNAL \timer_c|timer2[8]~59COUT1_71\ : std_logic;
SIGNAL \timer_c|timer2[9]~61\ : std_logic;
SIGNAL \timer_c|timer2[9]~61COUT1_72\ : std_logic;
SIGNAL \timer_c|timer2[10]~43\ : std_logic;
SIGNAL \timer_c|timer2[11]~37\ : std_logic;
SIGNAL \timer_c|timer2[11]~37COUT1_73\ : std_logic;
SIGNAL \timer_c|timer2[12]~39\ : std_logic;
SIGNAL \timer_c|timer2[12]~39COUT1_74\ : std_logic;
SIGNAL \timer_c|timer2[13]~41\ : std_logic;
SIGNAL \timer_c|timer2[13]~41COUT1_75\ : std_logic;
SIGNAL \timer_c|timer2[14]~21\ : std_logic;
SIGNAL \timer_c|timer2[14]~21COUT1_76\ : std_logic;
SIGNAL \timer_c|timer2[15]~35\ : std_logic;
SIGNAL \timer_c|timer2[16]~5\ : std_logic;
SIGNAL \timer_c|timer2[16]~5COUT1_77\ : std_logic;
SIGNAL \timer_c|timer2[17]~7\ : std_logic;
SIGNAL \timer_c|timer2[17]~7COUT1_78\ : std_logic;
SIGNAL \timer_c|timer2[18]~9\ : std_logic;
SIGNAL \timer_c|timer2[18]~9COUT1_79\ : std_logic;
SIGNAL \timer_c|timer2[19]~11\ : std_logic;
SIGNAL \timer_c|timer2[19]~11COUT1_80\ : std_logic;
SIGNAL \timer_c|timer2[20]~19\ : std_logic;
SIGNAL \timer_c|timer2[21]~17\ : std_logic;
SIGNAL \timer_c|timer2[21]~17COUT1_81\ : std_logic;
SIGNAL \timer_c|timer2[22]~29\ : std_logic;
SIGNAL \timer_c|timer2[22]~29COUT1_82\ : std_logic;
SIGNAL \timer_c|timer2[23]~31\ : std_logic;
SIGNAL \timer_c|timer2[23]~31COUT1_83\ : std_logic;
SIGNAL \timer_c|timer2[24]~33\ : std_logic;
SIGNAL \timer_c|timer2[24]~33COUT1_84\ : std_logic;
SIGNAL \timer_c|timer2[25]~1\ : std_logic;
SIGNAL \timer_c|timer2[26]~23\ : std_logic;
SIGNAL \timer_c|timer2[26]~23COUT1_85\ : std_logic;
SIGNAL \timer_c|timer2[27]~25\ : std_logic;
SIGNAL \timer_c|timer2[27]~25COUT1_86\ : std_logic;
SIGNAL \timer_c|timer2[28]~27\ : std_logic;
SIGNAL \timer_c|timer2[28]~27COUT1_87\ : std_logic;
SIGNAL \timer_c|timer2[29]~13\ : std_logic;
SIGNAL \timer_c|timer2[29]~13COUT1_88\ : std_logic;
SIGNAL \timer_c|timer2[30]~15\ : std_logic;
SIGNAL \timer_c|LED~6_combout\ : std_logic;
SIGNAL \timer_c|LED~5_combout\ : std_logic;
SIGNAL \timer_c|LED~7_combout\ : std_logic;
SIGNAL \timer_c|LED~13_combout\ : std_logic;
SIGNAL \timer_c|LED~14_combout\ : std_logic;
SIGNAL \timer_c|LED~15_combout\ : std_logic;
SIGNAL \timer_c|LED~16_combout\ : std_logic;
SIGNAL \timer_c|LED~11_combout\ : std_logic;
SIGNAL \timer_c|LED~12_combout\ : std_logic;
SIGNAL \timer_c|LED~9_combout\ : std_logic;
SIGNAL \timer_c|LED~8_combout\ : std_logic;
SIGNAL \timer_c|LED~10_combout\ : std_logic;
SIGNAL \timer_c|LED~17_combout\ : std_logic;
SIGNAL \out_LED~1_combout\ : std_logic;
SIGNAL \timer_c|timer3~62_combout\ : std_logic;
SIGNAL \timer_c|timer3[0]~64\ : std_logic;
SIGNAL \timer_c|timer3[1]~33\ : std_logic;
SIGNAL \timer_c|timer3[1]~33COUT1_66\ : std_logic;
SIGNAL \timer_c|timer3[2]~35\ : std_logic;
SIGNAL \timer_c|timer3[2]~35COUT1_67\ : std_logic;
SIGNAL \timer_c|timer3[3]~37\ : std_logic;
SIGNAL \timer_c|timer3[3]~37COUT1_68\ : std_logic;
SIGNAL \timer_c|timer3[4]~39\ : std_logic;
SIGNAL \timer_c|timer3[4]~39COUT1_69\ : std_logic;
SIGNAL \timer_c|timer3[5]~41\ : std_logic;
SIGNAL \timer_c|timer3[6]~43\ : std_logic;
SIGNAL \timer_c|timer3[6]~43COUT1_70\ : std_logic;
SIGNAL \timer_c|timer3[7]~21\ : std_logic;
SIGNAL \timer_c|timer3[7]~21COUT1_71\ : std_logic;
SIGNAL \timer_c|timer3[8]~23\ : std_logic;
SIGNAL \timer_c|timer3[8]~23COUT1_72\ : std_logic;
SIGNAL \timer_c|timer3[9]~25\ : std_logic;
SIGNAL \timer_c|timer3[9]~25COUT1_73\ : std_logic;
SIGNAL \timer_c|timer3[10]~27\ : std_logic;
SIGNAL \timer_c|timer3[11]~51\ : std_logic;
SIGNAL \timer_c|timer3[11]~51COUT1_74\ : std_logic;
SIGNAL \timer_c|timer3[12]~29\ : std_logic;
SIGNAL \timer_c|timer3[12]~29COUT1_75\ : std_logic;
SIGNAL \timer_c|timer3[13]~47\ : std_logic;
SIGNAL \timer_c|timer3[13]~47COUT1_76\ : std_logic;
SIGNAL \timer_c|timer3[14]~49\ : std_logic;
SIGNAL \timer_c|timer3[14]~49COUT1_77\ : std_logic;
SIGNAL \timer_c|timer3[15]~53\ : std_logic;
SIGNAL \timer_c|timer3[16]~55\ : std_logic;
SIGNAL \timer_c|timer3[16]~55COUT1_78\ : std_logic;
SIGNAL \timer_c|timer3[17]~57\ : std_logic;
SIGNAL \timer_c|timer3[17]~57COUT1_79\ : std_logic;
SIGNAL \timer_c|timer3[18]~31\ : std_logic;
SIGNAL \timer_c|timer3[18]~31COUT1_80\ : std_logic;
SIGNAL \timer_c|timer3[19]~45\ : std_logic;
SIGNAL \timer_c|timer3[19]~45COUT1_81\ : std_logic;
SIGNAL \timer_c|timer3[20]~59\ : std_logic;
SIGNAL \timer_c|timer3[21]~61\ : std_logic;
SIGNAL \timer_c|timer3[21]~61COUT1_82\ : std_logic;
SIGNAL \timer_c|timer3[22]~17\ : std_logic;
SIGNAL \timer_c|timer3[22]~17COUT1_83\ : std_logic;
SIGNAL \timer_c|timer3[23]~15\ : std_logic;
SIGNAL \timer_c|timer3[23]~15COUT1_84\ : std_logic;
SIGNAL \timer_c|timer3[24]~19\ : std_logic;
SIGNAL \timer_c|timer3[24]~19COUT1_85\ : std_logic;
SIGNAL \timer_c|timer3[25]~9\ : std_logic;
SIGNAL \timer_c|timer3[26]~11\ : std_logic;
SIGNAL \timer_c|timer3[26]~11COUT1_86\ : std_logic;
SIGNAL \timer_c|timer3[27]~13\ : std_logic;
SIGNAL \timer_c|timer3[27]~13COUT1_87\ : std_logic;
SIGNAL \timer_c|timer3[28]~5\ : std_logic;
SIGNAL \timer_c|timer3[28]~5COUT1_88\ : std_logic;
SIGNAL \timer_c|timer3[29]~3\ : std_logic;
SIGNAL \timer_c|timer3[29]~3COUT1_89\ : std_logic;
SIGNAL \timer_c|timer3[30]~7\ : std_logic;
SIGNAL \timer_c|LessThan2~0_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~8_combout\ : std_logic;
SIGNAL \timer_c|LED~22_combout\ : std_logic;
SIGNAL \timer_c|LED~19_combout\ : std_logic;
SIGNAL \timer_c|LED~20_combout\ : std_logic;
SIGNAL \timer_c|LED~21_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~5_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~6_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~3_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~1_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~2_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~4_combout\ : std_logic;
SIGNAL \timer_c|LessThan2~7_combout\ : std_logic;
SIGNAL \out_LED~2_combout\ : std_logic;
SIGNAL \out_LED~3_combout\ : std_logic;
SIGNAL \timer_c|LED\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inp~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \timer_c|timer1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \timer_c|timer2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \timer_c|timer3\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_inp <= inp;
ww_reset <= reset;
ww_clock_50 <= clock_50;
ww_clock_1 <= clock_1;
out_LED <= ww_out_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(1),
	combout => \inp~combout\(1));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(2),
	combout => \inp~combout\(2));

-- Location: LC_X9_Y6_N4
\state_transition_proc~0\ : maxv_lcell
-- Equation(s):
-- \state_transition_proc~0_combout\ = ((!\inp~combout\(1) & (!\inp~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(1),
	datac => \inp~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state_transition_proc~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(0),
	combout => \inp~combout\(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: LC_X9_Y6_N0
\y_present~8\ : maxv_lcell
-- Equation(s):
-- \y_present~8_combout\ = (\y_present.t2~regout\ & ((\inp~combout\(1)) # (\inp~combout\(0) $ (!\inp~combout\(2))))) # (!\y_present.t2~regout\ & (!\inp~combout\(0) & (!\inp~combout\(2) & \inp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datab => \y_present.t2~regout\,
	datac => \inp~combout\(2),
	datad => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y_present~8_combout\);

-- Location: LC_X10_Y6_N9
\y_present.t2\ : maxv_lcell
-- Equation(s):
-- \y_present.t2~regout\ = DFFEAS((((!\reset~combout\ & \y_present~8_combout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \reset~combout\,
	datad => \y_present~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.t2~regout\);

-- Location: LC_X9_Y6_N1
\y_present~6\ : maxv_lcell
-- Equation(s):
-- \y_present~6_combout\ = (\inp~combout\(0) & (((\inp~combout\(2)) # (\inp~combout\(1))))) # (!\inp~combout\(0) & ((\inp~combout\(2) $ (!\inp~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datac => \inp~combout\(2),
	datad => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y_present~6_combout\);

-- Location: LC_X10_Y6_N4
\y_present.t1\ : maxv_lcell
-- Equation(s):
-- \y_present.t1~regout\ = DFFEAS((!\reset~combout\ & ((\y_present~6_combout\ & (\y_present.t1~regout\)) # (!\y_present~6_combout\ & ((\state_transition_proc~0_combout\))))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \y_present~6_combout\,
	datab => \reset~combout\,
	datac => \y_present.t1~regout\,
	datad => \state_transition_proc~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.t1~regout\);

-- Location: LC_X10_Y6_N8
\y_present.rst\ : maxv_lcell
-- Equation(s):
-- \y_present.rst~regout\ = DFFEAS((!\reset~combout\ & (((\y_present.rst~regout\) # (!\y_present~6_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \y_present~6_combout\,
	datad => \y_present.rst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.rst~regout\);

-- Location: LC_X10_Y6_N2
\timer_c|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \timer_c|Equal3~0_combout\ = (((\y_present.t2~regout\ & \y_present.t1~regout\)) # (!\y_present.rst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y_present.t2~regout\,
	datac => \y_present.t1~regout\,
	datad => \y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|Equal3~0_combout\);

-- Location: LC_X9_Y6_N5
\outp~0\ : maxv_lcell
-- Equation(s):
-- \outp~0_combout\ = (((\y_present.t1~regout\)) # (!\y_present.rst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y_present.rst~regout\,
	datad => \y_present.t1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \outp~0_combout\);

-- Location: LC_X8_Y5_N4
\timer_c|timer1[0]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(0) = DFFEAS((!\timer_c|timer1\(0)), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[0]~63\ = CARRY((\timer_c|timer1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(0),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(0),
	cout => \timer_c|timer1[0]~63\);

-- Location: LC_X8_Y5_N5
\timer_c|timer1[1]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(1) = DFFEAS(\timer_c|timer1\(1) $ ((((\timer_c|timer1[0]~63\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[1]~23\ = CARRY(((!\timer_c|timer1[0]~63\)) # (!\timer_c|timer1\(1)))
-- \timer_c|timer1[1]~23COUT1_65\ = CARRY(((!\timer_c|timer1[0]~63\)) # (!\timer_c|timer1\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(1),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[0]~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(1),
	cout0 => \timer_c|timer1[1]~23\,
	cout1 => \timer_c|timer1[1]~23COUT1_65\);

-- Location: LC_X8_Y5_N6
\timer_c|timer1[2]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(2) = DFFEAS(\timer_c|timer1\(2) $ ((((!(!\timer_c|timer1[0]~63\ & \timer_c|timer1[1]~23\) # (\timer_c|timer1[0]~63\ & \timer_c|timer1[1]~23COUT1_65\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[2]~25\ = CARRY((\timer_c|timer1\(2) & ((!\timer_c|timer1[1]~23\))))
-- \timer_c|timer1[2]~25COUT1_66\ = CARRY((\timer_c|timer1\(2) & ((!\timer_c|timer1[1]~23COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(2),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[0]~63\,
	cin0 => \timer_c|timer1[1]~23\,
	cin1 => \timer_c|timer1[1]~23COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(2),
	cout0 => \timer_c|timer1[2]~25\,
	cout1 => \timer_c|timer1[2]~25COUT1_66\);

-- Location: LC_X8_Y5_N7
\timer_c|timer1[3]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(3) = DFFEAS((\timer_c|timer1\(3) $ (((!\timer_c|timer1[0]~63\ & \timer_c|timer1[2]~25\) # (\timer_c|timer1[0]~63\ & \timer_c|timer1[2]~25COUT1_66\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[3]~27\ = CARRY(((!\timer_c|timer1[2]~25\) # (!\timer_c|timer1\(3))))
-- \timer_c|timer1[3]~27COUT1_67\ = CARRY(((!\timer_c|timer1[2]~25COUT1_66\) # (!\timer_c|timer1\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(3),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[0]~63\,
	cin0 => \timer_c|timer1[2]~25\,
	cin1 => \timer_c|timer1[2]~25COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(3),
	cout0 => \timer_c|timer1[3]~27\,
	cout1 => \timer_c|timer1[3]~27COUT1_67\);

-- Location: LC_X8_Y5_N8
\timer_c|timer1[4]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(4) = DFFEAS(\timer_c|timer1\(4) $ ((((!(!\timer_c|timer1[0]~63\ & \timer_c|timer1[3]~27\) # (\timer_c|timer1[0]~63\ & \timer_c|timer1[3]~27COUT1_67\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[4]~29\ = CARRY((\timer_c|timer1\(4) & ((!\timer_c|timer1[3]~27\))))
-- \timer_c|timer1[4]~29COUT1_68\ = CARRY((\timer_c|timer1\(4) & ((!\timer_c|timer1[3]~27COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(4),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[0]~63\,
	cin0 => \timer_c|timer1[3]~27\,
	cin1 => \timer_c|timer1[3]~27COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(4),
	cout0 => \timer_c|timer1[4]~29\,
	cout1 => \timer_c|timer1[4]~29COUT1_68\);

-- Location: LC_X8_Y5_N9
\timer_c|timer1[5]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(5) = DFFEAS((\timer_c|timer1\(5) $ (((!\timer_c|timer1[0]~63\ & \timer_c|timer1[4]~29\) # (\timer_c|timer1[0]~63\ & \timer_c|timer1[4]~29COUT1_68\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[5]~31\ = CARRY(((!\timer_c|timer1[4]~29COUT1_68\) # (!\timer_c|timer1\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(5),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[0]~63\,
	cin0 => \timer_c|timer1[4]~29\,
	cin1 => \timer_c|timer1[4]~29COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(5),
	cout => \timer_c|timer1[5]~31\);

-- Location: LC_X9_Y5_N0
\timer_c|timer1[6]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(6) = DFFEAS((\timer_c|timer1\(6) $ ((!\timer_c|timer1[5]~31\))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[6]~33\ = CARRY(((\timer_c|timer1\(6) & !\timer_c|timer1[5]~31\)))
-- \timer_c|timer1[6]~33COUT1_69\ = CARRY(((\timer_c|timer1\(6) & !\timer_c|timer1[5]~31\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(6),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[5]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(6),
	cout0 => \timer_c|timer1[6]~33\,
	cout1 => \timer_c|timer1[6]~33COUT1_69\);

-- Location: LC_X9_Y5_N1
\timer_c|timer1[7]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(7) = DFFEAS((\timer_c|timer1\(7) $ (((!\timer_c|timer1[5]~31\ & \timer_c|timer1[6]~33\) # (\timer_c|timer1[5]~31\ & \timer_c|timer1[6]~33COUT1_69\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[7]~39\ = CARRY(((!\timer_c|timer1[6]~33\) # (!\timer_c|timer1\(7))))
-- \timer_c|timer1[7]~39COUT1_70\ = CARRY(((!\timer_c|timer1[6]~33COUT1_69\) # (!\timer_c|timer1\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(7),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[5]~31\,
	cin0 => \timer_c|timer1[6]~33\,
	cin1 => \timer_c|timer1[6]~33COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(7),
	cout0 => \timer_c|timer1[7]~39\,
	cout1 => \timer_c|timer1[7]~39COUT1_70\);

-- Location: LC_X9_Y5_N2
\timer_c|timer1[8]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(8) = DFFEAS((\timer_c|timer1\(8) $ ((!(!\timer_c|timer1[5]~31\ & \timer_c|timer1[7]~39\) # (\timer_c|timer1[5]~31\ & \timer_c|timer1[7]~39COUT1_70\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, 
-- )
-- \timer_c|timer1[8]~61\ = CARRY(((\timer_c|timer1\(8) & !\timer_c|timer1[7]~39\)))
-- \timer_c|timer1[8]~61COUT1_71\ = CARRY(((\timer_c|timer1\(8) & !\timer_c|timer1[7]~39COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(8),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[5]~31\,
	cin0 => \timer_c|timer1[7]~39\,
	cin1 => \timer_c|timer1[7]~39COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(8),
	cout0 => \timer_c|timer1[8]~61\,
	cout1 => \timer_c|timer1[8]~61COUT1_71\);

-- Location: LC_X9_Y5_N3
\timer_c|timer1[9]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(9) = DFFEAS(\timer_c|timer1\(9) $ (((((!\timer_c|timer1[5]~31\ & \timer_c|timer1[8]~61\) # (\timer_c|timer1[5]~31\ & \timer_c|timer1[8]~61COUT1_71\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, 
-- )
-- \timer_c|timer1[9]~47\ = CARRY(((!\timer_c|timer1[8]~61\)) # (!\timer_c|timer1\(9)))
-- \timer_c|timer1[9]~47COUT1_72\ = CARRY(((!\timer_c|timer1[8]~61COUT1_71\)) # (!\timer_c|timer1\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(9),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[5]~31\,
	cin0 => \timer_c|timer1[8]~61\,
	cin1 => \timer_c|timer1[8]~61COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(9),
	cout0 => \timer_c|timer1[9]~47\,
	cout1 => \timer_c|timer1[9]~47COUT1_72\);

-- Location: LC_X9_Y5_N4
\timer_c|timer1[10]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(10) = DFFEAS(\timer_c|timer1\(10) $ ((((!(!\timer_c|timer1[5]~31\ & \timer_c|timer1[9]~47\) # (\timer_c|timer1[5]~31\ & \timer_c|timer1[9]~47COUT1_72\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[10]~57\ = CARRY((\timer_c|timer1\(10) & ((!\timer_c|timer1[9]~47COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(10),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[5]~31\,
	cin0 => \timer_c|timer1[9]~47\,
	cin1 => \timer_c|timer1[9]~47COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(10),
	cout => \timer_c|timer1[10]~57\);

-- Location: LC_X9_Y5_N5
\timer_c|timer1[11]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(11) = DFFEAS(\timer_c|timer1\(11) $ ((((\timer_c|timer1[10]~57\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[11]~59\ = CARRY(((!\timer_c|timer1[10]~57\)) # (!\timer_c|timer1\(11)))
-- \timer_c|timer1[11]~59COUT1_73\ = CARRY(((!\timer_c|timer1[10]~57\)) # (!\timer_c|timer1\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(11),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[10]~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(11),
	cout0 => \timer_c|timer1[11]~59\,
	cout1 => \timer_c|timer1[11]~59COUT1_73\);

-- Location: LC_X9_Y5_N6
\timer_c|timer1[12]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(12) = DFFEAS(\timer_c|timer1\(12) $ ((((!(!\timer_c|timer1[10]~57\ & \timer_c|timer1[11]~59\) # (\timer_c|timer1[10]~57\ & \timer_c|timer1[11]~59COUT1_73\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[12]~43\ = CARRY((\timer_c|timer1\(12) & ((!\timer_c|timer1[11]~59\))))
-- \timer_c|timer1[12]~43COUT1_74\ = CARRY((\timer_c|timer1\(12) & ((!\timer_c|timer1[11]~59COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(12),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[10]~57\,
	cin0 => \timer_c|timer1[11]~59\,
	cin1 => \timer_c|timer1[11]~59COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(12),
	cout0 => \timer_c|timer1[12]~43\,
	cout1 => \timer_c|timer1[12]~43COUT1_74\);

-- Location: LC_X9_Y5_N7
\timer_c|timer1[13]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(13) = DFFEAS((\timer_c|timer1\(13) $ (((!\timer_c|timer1[10]~57\ & \timer_c|timer1[12]~43\) # (\timer_c|timer1[10]~57\ & \timer_c|timer1[12]~43COUT1_74\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[13]~45\ = CARRY(((!\timer_c|timer1[12]~43\) # (!\timer_c|timer1\(13))))
-- \timer_c|timer1[13]~45COUT1_75\ = CARRY(((!\timer_c|timer1[12]~43COUT1_74\) # (!\timer_c|timer1\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(13),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[10]~57\,
	cin0 => \timer_c|timer1[12]~43\,
	cin1 => \timer_c|timer1[12]~43COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(13),
	cout0 => \timer_c|timer1[13]~45\,
	cout1 => \timer_c|timer1[13]~45COUT1_75\);

-- Location: LC_X9_Y5_N8
\timer_c|timer1[14]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(14) = DFFEAS(\timer_c|timer1\(14) $ ((((!(!\timer_c|timer1[10]~57\ & \timer_c|timer1[13]~45\) # (\timer_c|timer1[10]~57\ & \timer_c|timer1[13]~45COUT1_75\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[14]~51\ = CARRY((\timer_c|timer1\(14) & ((!\timer_c|timer1[13]~45\))))
-- \timer_c|timer1[14]~51COUT1_76\ = CARRY((\timer_c|timer1\(14) & ((!\timer_c|timer1[13]~45COUT1_75\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(14),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[10]~57\,
	cin0 => \timer_c|timer1[13]~45\,
	cin1 => \timer_c|timer1[13]~45COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(14),
	cout0 => \timer_c|timer1[14]~51\,
	cout1 => \timer_c|timer1[14]~51COUT1_76\);

-- Location: LC_X9_Y5_N9
\timer_c|timer1[15]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(15) = DFFEAS((\timer_c|timer1\(15) $ (((!\timer_c|timer1[10]~57\ & \timer_c|timer1[14]~51\) # (\timer_c|timer1[10]~57\ & \timer_c|timer1[14]~51COUT1_76\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[15]~37\ = CARRY(((!\timer_c|timer1[14]~51COUT1_76\) # (!\timer_c|timer1\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(15),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[10]~57\,
	cin0 => \timer_c|timer1[14]~51\,
	cin1 => \timer_c|timer1[14]~51COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(15),
	cout => \timer_c|timer1[15]~37\);

-- Location: LC_X10_Y5_N0
\timer_c|timer1[16]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(16) = DFFEAS((\timer_c|timer1\(16) $ ((!\timer_c|timer1[15]~37\))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[16]~49\ = CARRY(((\timer_c|timer1\(16) & !\timer_c|timer1[15]~37\)))
-- \timer_c|timer1[16]~49COUT1_77\ = CARRY(((\timer_c|timer1\(16) & !\timer_c|timer1[15]~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(16),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[15]~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(16),
	cout0 => \timer_c|timer1[16]~49\,
	cout1 => \timer_c|timer1[16]~49COUT1_77\);

-- Location: LC_X10_Y5_N1
\timer_c|timer1[17]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(17) = DFFEAS((\timer_c|timer1\(17) $ (((!\timer_c|timer1[15]~37\ & \timer_c|timer1[16]~49\) # (\timer_c|timer1[15]~37\ & \timer_c|timer1[16]~49COUT1_77\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[17]~41\ = CARRY(((!\timer_c|timer1[16]~49\) # (!\timer_c|timer1\(17))))
-- \timer_c|timer1[17]~41COUT1_78\ = CARRY(((!\timer_c|timer1[16]~49COUT1_77\) # (!\timer_c|timer1\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(17),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[15]~37\,
	cin0 => \timer_c|timer1[16]~49\,
	cin1 => \timer_c|timer1[16]~49COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(17),
	cout0 => \timer_c|timer1[17]~41\,
	cout1 => \timer_c|timer1[17]~41COUT1_78\);

-- Location: LC_X10_Y5_N2
\timer_c|timer1[18]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(18) = DFFEAS((\timer_c|timer1\(18) $ ((!(!\timer_c|timer1[15]~37\ & \timer_c|timer1[17]~41\) # (\timer_c|timer1[15]~37\ & \timer_c|timer1[17]~41COUT1_78\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[18]~35\ = CARRY(((\timer_c|timer1\(18) & !\timer_c|timer1[17]~41\)))
-- \timer_c|timer1[18]~35COUT1_79\ = CARRY(((\timer_c|timer1\(18) & !\timer_c|timer1[17]~41COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(18),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[15]~37\,
	cin0 => \timer_c|timer1[17]~41\,
	cin1 => \timer_c|timer1[17]~41COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(18),
	cout0 => \timer_c|timer1[18]~35\,
	cout1 => \timer_c|timer1[18]~35COUT1_79\);

-- Location: LC_X10_Y5_N3
\timer_c|timer1[19]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(19) = DFFEAS(\timer_c|timer1\(19) $ (((((!\timer_c|timer1[15]~37\ & \timer_c|timer1[18]~35\) # (\timer_c|timer1[15]~37\ & \timer_c|timer1[18]~35COUT1_79\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[19]~53\ = CARRY(((!\timer_c|timer1[18]~35\)) # (!\timer_c|timer1\(19)))
-- \timer_c|timer1[19]~53COUT1_80\ = CARRY(((!\timer_c|timer1[18]~35COUT1_79\)) # (!\timer_c|timer1\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(19),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[15]~37\,
	cin0 => \timer_c|timer1[18]~35\,
	cin1 => \timer_c|timer1[18]~35COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(19),
	cout0 => \timer_c|timer1[19]~53\,
	cout1 => \timer_c|timer1[19]~53COUT1_80\);

-- Location: LC_X10_Y5_N4
\timer_c|timer1[20]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(20) = DFFEAS(\timer_c|timer1\(20) $ ((((!(!\timer_c|timer1[15]~37\ & \timer_c|timer1[19]~53\) # (\timer_c|timer1[15]~37\ & \timer_c|timer1[19]~53COUT1_80\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[20]~55\ = CARRY((\timer_c|timer1\(20) & ((!\timer_c|timer1[19]~53COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(20),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[15]~37\,
	cin0 => \timer_c|timer1[19]~53\,
	cin1 => \timer_c|timer1[19]~53COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(20),
	cout => \timer_c|timer1[20]~55\);

-- Location: LC_X10_Y5_N5
\timer_c|timer1[21]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(21) = DFFEAS(\timer_c|timer1\(21) $ ((((\timer_c|timer1[20]~55\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[21]~17\ = CARRY(((!\timer_c|timer1[20]~55\)) # (!\timer_c|timer1\(21)))
-- \timer_c|timer1[21]~17COUT1_81\ = CARRY(((!\timer_c|timer1[20]~55\)) # (!\timer_c|timer1\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(21),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[20]~55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(21),
	cout0 => \timer_c|timer1[21]~17\,
	cout1 => \timer_c|timer1[21]~17COUT1_81\);

-- Location: LC_X10_Y5_N6
\timer_c|timer1[22]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(22) = DFFEAS(\timer_c|timer1\(22) $ ((((!(!\timer_c|timer1[20]~55\ & \timer_c|timer1[21]~17\) # (\timer_c|timer1[20]~55\ & \timer_c|timer1[21]~17COUT1_81\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[22]~19\ = CARRY((\timer_c|timer1\(22) & ((!\timer_c|timer1[21]~17\))))
-- \timer_c|timer1[22]~19COUT1_82\ = CARRY((\timer_c|timer1\(22) & ((!\timer_c|timer1[21]~17COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(22),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[20]~55\,
	cin0 => \timer_c|timer1[21]~17\,
	cin1 => \timer_c|timer1[21]~17COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(22),
	cout0 => \timer_c|timer1[22]~19\,
	cout1 => \timer_c|timer1[22]~19COUT1_82\);

-- Location: LC_X10_Y5_N7
\timer_c|timer1[23]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(23) = DFFEAS((\timer_c|timer1\(23) $ (((!\timer_c|timer1[20]~55\ & \timer_c|timer1[22]~19\) # (\timer_c|timer1[20]~55\ & \timer_c|timer1[22]~19COUT1_82\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[23]~21\ = CARRY(((!\timer_c|timer1[22]~19\) # (!\timer_c|timer1\(23))))
-- \timer_c|timer1[23]~21COUT1_83\ = CARRY(((!\timer_c|timer1[22]~19COUT1_82\) # (!\timer_c|timer1\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(23),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[20]~55\,
	cin0 => \timer_c|timer1[22]~19\,
	cin1 => \timer_c|timer1[22]~19COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(23),
	cout0 => \timer_c|timer1[23]~21\,
	cout1 => \timer_c|timer1[23]~21COUT1_83\);

-- Location: LC_X10_Y5_N8
\timer_c|timer1[24]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(24) = DFFEAS(\timer_c|timer1\(24) $ ((((!(!\timer_c|timer1[20]~55\ & \timer_c|timer1[23]~21\) # (\timer_c|timer1[20]~55\ & \timer_c|timer1[23]~21COUT1_83\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[24]~15\ = CARRY((\timer_c|timer1\(24) & ((!\timer_c|timer1[23]~21\))))
-- \timer_c|timer1[24]~15COUT1_84\ = CARRY((\timer_c|timer1\(24) & ((!\timer_c|timer1[23]~21COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(24),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[20]~55\,
	cin0 => \timer_c|timer1[23]~21\,
	cin1 => \timer_c|timer1[23]~21COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(24),
	cout0 => \timer_c|timer1[24]~15\,
	cout1 => \timer_c|timer1[24]~15COUT1_84\);

-- Location: LC_X10_Y5_N9
\timer_c|timer1[25]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(25) = DFFEAS((\timer_c|timer1\(25) $ (((!\timer_c|timer1[20]~55\ & \timer_c|timer1[24]~15\) # (\timer_c|timer1[20]~55\ & \timer_c|timer1[24]~15COUT1_84\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[25]~9\ = CARRY(((!\timer_c|timer1[24]~15COUT1_84\) # (!\timer_c|timer1\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(25),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[20]~55\,
	cin0 => \timer_c|timer1[24]~15\,
	cin1 => \timer_c|timer1[24]~15COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(25),
	cout => \timer_c|timer1[25]~9\);

-- Location: LC_X11_Y5_N0
\timer_c|timer1[26]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(26) = DFFEAS((\timer_c|timer1\(26) $ ((!\timer_c|timer1[25]~9\))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[26]~11\ = CARRY(((\timer_c|timer1\(26) & !\timer_c|timer1[25]~9\)))
-- \timer_c|timer1[26]~11COUT1_85\ = CARRY(((\timer_c|timer1\(26) & !\timer_c|timer1[25]~9\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(26),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[25]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(26),
	cout0 => \timer_c|timer1[26]~11\,
	cout1 => \timer_c|timer1[26]~11COUT1_85\);

-- Location: LC_X11_Y5_N1
\timer_c|timer1[27]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(27) = DFFEAS((\timer_c|timer1\(27) $ (((!\timer_c|timer1[25]~9\ & \timer_c|timer1[26]~11\) # (\timer_c|timer1[25]~9\ & \timer_c|timer1[26]~11COUT1_85\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[27]~13\ = CARRY(((!\timer_c|timer1[26]~11\) # (!\timer_c|timer1\(27))))
-- \timer_c|timer1[27]~13COUT1_86\ = CARRY(((!\timer_c|timer1[26]~11COUT1_85\) # (!\timer_c|timer1\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(27),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[25]~9\,
	cin0 => \timer_c|timer1[26]~11\,
	cin1 => \timer_c|timer1[26]~11COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(27),
	cout0 => \timer_c|timer1[27]~13\,
	cout1 => \timer_c|timer1[27]~13COUT1_86\);

-- Location: LC_X11_Y5_N2
\timer_c|timer1[28]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(28) = DFFEAS((\timer_c|timer1\(28) $ ((!(!\timer_c|timer1[25]~9\ & \timer_c|timer1[27]~13\) # (\timer_c|timer1[25]~9\ & \timer_c|timer1[27]~13COUT1_86\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[28]~3\ = CARRY(((\timer_c|timer1\(28) & !\timer_c|timer1[27]~13\)))
-- \timer_c|timer1[28]~3COUT1_87\ = CARRY(((\timer_c|timer1\(28) & !\timer_c|timer1[27]~13COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer1\(28),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[25]~9\,
	cin0 => \timer_c|timer1[27]~13\,
	cin1 => \timer_c|timer1[27]~13COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(28),
	cout0 => \timer_c|timer1[28]~3\,
	cout1 => \timer_c|timer1[28]~3COUT1_87\);

-- Location: LC_X11_Y5_N3
\timer_c|timer1[29]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(29) = DFFEAS(\timer_c|timer1\(29) $ (((((!\timer_c|timer1[25]~9\ & \timer_c|timer1[28]~3\) # (\timer_c|timer1[25]~9\ & \timer_c|timer1[28]~3COUT1_87\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[29]~5\ = CARRY(((!\timer_c|timer1[28]~3\)) # (!\timer_c|timer1\(29)))
-- \timer_c|timer1[29]~5COUT1_88\ = CARRY(((!\timer_c|timer1[28]~3COUT1_87\)) # (!\timer_c|timer1\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(29),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[25]~9\,
	cin0 => \timer_c|timer1[28]~3\,
	cin1 => \timer_c|timer1[28]~3COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(29),
	cout0 => \timer_c|timer1[29]~5\,
	cout1 => \timer_c|timer1[29]~5COUT1_88\);

-- Location: LC_X11_Y5_N4
\timer_c|timer1[30]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(30) = DFFEAS(\timer_c|timer1\(30) $ ((((!(!\timer_c|timer1[25]~9\ & \timer_c|timer1[29]~5\) # (\timer_c|timer1[25]~9\ & \timer_c|timer1[29]~5COUT1_88\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer1[30]~7\ = CARRY((\timer_c|timer1\(30) & ((!\timer_c|timer1[29]~5COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(30),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[25]~9\,
	cin0 => \timer_c|timer1[29]~5\,
	cin1 => \timer_c|timer1[29]~5COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(30),
	cout => \timer_c|timer1[30]~7\);

-- Location: LC_X11_Y5_N5
\timer_c|timer1[31]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer1\(31) = DFFEAS(\timer_c|timer1\(31) $ ((((\timer_c|timer1[30]~7\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~0_combout\, , , \timer_c|Equal3~0_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(31),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~0_combout\,
	cin => \timer_c|timer1[30]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer1\(31));

-- Location: LC_X11_Y5_N7
\timer_c|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~0_combout\ = (!\timer_c|timer1\(31) & (\timer_c|timer1\(26) & (\timer_c|timer1\(25) & \timer_c|timer1\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(31),
	datab => \timer_c|timer1\(26),
	datac => \timer_c|timer1\(25),
	datad => \timer_c|timer1\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~0_combout\);

-- Location: LC_X11_Y5_N9
\timer_c|LED~0\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~0_combout\ = (\timer_c|timer1\(31)) # ((!\timer_c|timer1\(30) & (!\timer_c|timer1\(28) & !\timer_c|timer1\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(30),
	datab => \timer_c|timer1\(28),
	datac => \timer_c|timer1\(31),
	datad => \timer_c|timer1\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_1,
	combout => \clock_1~combout\);

-- Location: LC_X10_Y6_N7
\timer_c|LED~1\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~1_combout\ = ((\clock_1~combout\ & ((\y_present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_1~combout\,
	datad => \y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~1_combout\);

-- Location: LC_X11_Y5_N6
\timer_c|LED~2\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~2_combout\ = (!\y_present.t2~regout\ & (\timer_c|LED~0_combout\ & (\y_present.t1~regout\ & \timer_c|LED~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.t2~regout\,
	datab => \timer_c|LED~0_combout\,
	datac => \y_present.t1~regout\,
	datad => \timer_c|LED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~2_combout\);

-- Location: LC_X11_Y5_N8
\timer_c|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~6_combout\ = (((\timer_c|timer1\(17) & \timer_c|timer1\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \timer_c|timer1\(17),
	datad => \timer_c|timer1\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~6_combout\);

-- Location: LC_X12_Y5_N3
\timer_c|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~7_combout\ = (\timer_c|LessThan0~6_combout\ & ((\timer_c|timer1\(16)) # ((\timer_c|timer1\(15) & \timer_c|timer1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(15),
	datab => \timer_c|timer1\(16),
	datac => \timer_c|LessThan0~6_combout\,
	datad => \timer_c|timer1\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~7_combout\);

-- Location: LC_X12_Y5_N1
\timer_c|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~1_combout\ = (\timer_c|timer1\(21) & (\timer_c|timer1\(23) & (\timer_c|timer1\(22) & \timer_c|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(21),
	datab => \timer_c|timer1\(23),
	datac => \timer_c|timer1\(22),
	datad => \timer_c|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~1_combout\);

-- Location: LC_X8_Y5_N3
\timer_c|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~2_combout\ = (\timer_c|timer1\(1)) # ((\timer_c|timer1\(3)) # ((\timer_c|timer1\(2)) # (\timer_c|timer1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(1),
	datab => \timer_c|timer1\(3),
	datac => \timer_c|timer1\(2),
	datad => \timer_c|timer1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~2_combout\);

-- Location: LC_X12_Y5_N8
\timer_c|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~3_combout\ = (\timer_c|timer1\(9) & (\timer_c|timer1\(17) & (\timer_c|timer1\(12) & \timer_c|timer1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(9),
	datab => \timer_c|timer1\(17),
	datac => \timer_c|timer1\(12),
	datad => \timer_c|timer1\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~3_combout\);

-- Location: LC_X12_Y5_N9
\timer_c|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~4_combout\ = (\timer_c|timer1\(18) & (\timer_c|timer1\(7) & (\timer_c|timer1\(15) & \timer_c|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(18),
	datab => \timer_c|timer1\(7),
	datac => \timer_c|timer1\(15),
	datad => \timer_c|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~4_combout\);

-- Location: LC_X12_Y5_N0
\timer_c|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~5_combout\ = (\timer_c|LessThan0~4_combout\ & ((\timer_c|timer1\(6)) # ((\timer_c|timer1\(5)) # (\timer_c|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(6),
	datab => \timer_c|timer1\(5),
	datac => \timer_c|LessThan0~2_combout\,
	datad => \timer_c|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~5_combout\);

-- Location: LC_X12_Y5_N7
\timer_c|LessThan0~9\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~9_combout\ = (\timer_c|timer1\(10)) # ((\timer_c|timer1\(11)) # ((\timer_c|timer1\(8) & \timer_c|timer1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(10),
	datab => \timer_c|timer1\(8),
	datac => \timer_c|timer1\(9),
	datad => \timer_c|timer1\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~9_combout\);

-- Location: LC_X12_Y5_N2
\timer_c|LessThan0~8\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~8_combout\ = (\timer_c|timer1\(15) & (\timer_c|timer1\(12) & (\timer_c|LessThan0~6_combout\ & \timer_c|timer1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(15),
	datab => \timer_c|timer1\(12),
	datac => \timer_c|LessThan0~6_combout\,
	datad => \timer_c|timer1\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~8_combout\);

-- Location: LC_X12_Y5_N4
\timer_c|LessThan0~10\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~10_combout\ = (\timer_c|timer1\(19)) # ((\timer_c|timer1\(20)) # ((\timer_c|LessThan0~9_combout\ & \timer_c|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer1\(19),
	datab => \timer_c|timer1\(20),
	datac => \timer_c|LessThan0~9_combout\,
	datad => \timer_c|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~10_combout\);

-- Location: LC_X12_Y5_N5
\timer_c|LessThan0~11\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan0~11_combout\ = (\timer_c|LessThan0~1_combout\ & ((\timer_c|LessThan0~7_combout\) # ((\timer_c|LessThan0~5_combout\) # (\timer_c|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|LessThan0~7_combout\,
	datab => \timer_c|LessThan0~1_combout\,
	datac => \timer_c|LessThan0~5_combout\,
	datad => \timer_c|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan0~11_combout\);

-- Location: LC_X12_Y5_N6
\timer_c|LED[0]\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED\(0) = DFFEAS((\timer_c|LED~2_combout\ & (!\timer_c|LessThan0~11_combout\ & ((!\timer_c|LessThan0~0_combout\) # (!\timer_c|timer1\(24))))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer1\(24),
	datab => \timer_c|LessThan0~0_combout\,
	datac => \timer_c|LED~2_combout\,
	datad => \timer_c|LessThan0~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|LED\(0));

-- Location: LC_X9_Y6_N8
\out_LED~0\ : maxv_lcell
-- Equation(s):
-- \out_LED~0_combout\ = (\timer_c|LED\(0) & (((\reset~combout\) # (\inp~combout\(0))) # (!\state_transition_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_transition_proc~0_combout\,
	datab => \reset~combout\,
	datac => \inp~combout\(0),
	datad => \timer_c|LED\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_LED~0_combout\);

-- Location: LC_X10_Y6_N6
\timer_c|LED~4\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~4_combout\ = (!\y_present.t1~regout\ & (\clock_1~combout\ & ((\y_present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.t1~regout\,
	datab => \clock_1~combout\,
	datad => \y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~4_combout\);

-- Location: LC_X9_Y6_N6
\outp~1\ : maxv_lcell
-- Equation(s):
-- \outp~1_combout\ = (((\y_present.t2~regout\) # (!\y_present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \y_present.t2~regout\,
	datad => \y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \outp~1_combout\);

-- Location: LC_X11_Y6_N4
\timer_c|timer2[0]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(0) = DFFEAS((!\timer_c|timer2\(0)), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[0]~63\ = CARRY((\timer_c|timer2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(0),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(0),
	cout => \timer_c|timer2[0]~63\);

-- Location: LC_X11_Y6_N5
\timer_c|timer2[1]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(1) = DFFEAS(\timer_c|timer2\(1) $ ((((\timer_c|timer2[0]~63\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[1]~45\ = CARRY(((!\timer_c|timer2[0]~63\)) # (!\timer_c|timer2\(1)))
-- \timer_c|timer2[1]~45COUT1_65\ = CARRY(((!\timer_c|timer2[0]~63\)) # (!\timer_c|timer2\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(1),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[0]~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(1),
	cout0 => \timer_c|timer2[1]~45\,
	cout1 => \timer_c|timer2[1]~45COUT1_65\);

-- Location: LC_X11_Y6_N6
\timer_c|timer2[2]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(2) = DFFEAS(\timer_c|timer2\(2) $ ((((!(!\timer_c|timer2[0]~63\ & \timer_c|timer2[1]~45\) # (\timer_c|timer2[0]~63\ & \timer_c|timer2[1]~45COUT1_65\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[2]~47\ = CARRY((\timer_c|timer2\(2) & ((!\timer_c|timer2[1]~45\))))
-- \timer_c|timer2[2]~47COUT1_66\ = CARRY((\timer_c|timer2\(2) & ((!\timer_c|timer2[1]~45COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(2),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[0]~63\,
	cin0 => \timer_c|timer2[1]~45\,
	cin1 => \timer_c|timer2[1]~45COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(2),
	cout0 => \timer_c|timer2[2]~47\,
	cout1 => \timer_c|timer2[2]~47COUT1_66\);

-- Location: LC_X11_Y6_N7
\timer_c|timer2[3]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(3) = DFFEAS((\timer_c|timer2\(3) $ (((!\timer_c|timer2[0]~63\ & \timer_c|timer2[2]~47\) # (\timer_c|timer2[0]~63\ & \timer_c|timer2[2]~47COUT1_66\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[3]~49\ = CARRY(((!\timer_c|timer2[2]~47\) # (!\timer_c|timer2\(3))))
-- \timer_c|timer2[3]~49COUT1_67\ = CARRY(((!\timer_c|timer2[2]~47COUT1_66\) # (!\timer_c|timer2\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(3),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[0]~63\,
	cin0 => \timer_c|timer2[2]~47\,
	cin1 => \timer_c|timer2[2]~47COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(3),
	cout0 => \timer_c|timer2[3]~49\,
	cout1 => \timer_c|timer2[3]~49COUT1_67\);

-- Location: LC_X11_Y6_N8
\timer_c|timer2[4]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(4) = DFFEAS(\timer_c|timer2\(4) $ ((((!(!\timer_c|timer2[0]~63\ & \timer_c|timer2[3]~49\) # (\timer_c|timer2[0]~63\ & \timer_c|timer2[3]~49COUT1_67\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[4]~51\ = CARRY((\timer_c|timer2\(4) & ((!\timer_c|timer2[3]~49\))))
-- \timer_c|timer2[4]~51COUT1_68\ = CARRY((\timer_c|timer2\(4) & ((!\timer_c|timer2[3]~49COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(4),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[0]~63\,
	cin0 => \timer_c|timer2[3]~49\,
	cin1 => \timer_c|timer2[3]~49COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(4),
	cout0 => \timer_c|timer2[4]~51\,
	cout1 => \timer_c|timer2[4]~51COUT1_68\);

-- Location: LC_X11_Y6_N9
\timer_c|timer2[5]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(5) = DFFEAS((\timer_c|timer2\(5) $ (((!\timer_c|timer2[0]~63\ & \timer_c|timer2[4]~51\) # (\timer_c|timer2[0]~63\ & \timer_c|timer2[4]~51COUT1_68\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[5]~53\ = CARRY(((!\timer_c|timer2[4]~51COUT1_68\) # (!\timer_c|timer2\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(5),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[0]~63\,
	cin0 => \timer_c|timer2[4]~51\,
	cin1 => \timer_c|timer2[4]~51COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(5),
	cout => \timer_c|timer2[5]~53\);

-- Location: LC_X12_Y6_N0
\timer_c|timer2[6]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(6) = DFFEAS((\timer_c|timer2\(6) $ ((!\timer_c|timer2[5]~53\))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[6]~55\ = CARRY(((\timer_c|timer2\(6) & !\timer_c|timer2[5]~53\)))
-- \timer_c|timer2[6]~55COUT1_69\ = CARRY(((\timer_c|timer2\(6) & !\timer_c|timer2[5]~53\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(6),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[5]~53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(6),
	cout0 => \timer_c|timer2[6]~55\,
	cout1 => \timer_c|timer2[6]~55COUT1_69\);

-- Location: LC_X12_Y6_N1
\timer_c|timer2[7]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(7) = DFFEAS((\timer_c|timer2\(7) $ (((!\timer_c|timer2[5]~53\ & \timer_c|timer2[6]~55\) # (\timer_c|timer2[5]~53\ & \timer_c|timer2[6]~55COUT1_69\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[7]~57\ = CARRY(((!\timer_c|timer2[6]~55\) # (!\timer_c|timer2\(7))))
-- \timer_c|timer2[7]~57COUT1_70\ = CARRY(((!\timer_c|timer2[6]~55COUT1_69\) # (!\timer_c|timer2\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(7),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[5]~53\,
	cin0 => \timer_c|timer2[6]~55\,
	cin1 => \timer_c|timer2[6]~55COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(7),
	cout0 => \timer_c|timer2[7]~57\,
	cout1 => \timer_c|timer2[7]~57COUT1_70\);

-- Location: LC_X12_Y6_N2
\timer_c|timer2[8]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(8) = DFFEAS((\timer_c|timer2\(8) $ ((!(!\timer_c|timer2[5]~53\ & \timer_c|timer2[7]~57\) # (\timer_c|timer2[5]~53\ & \timer_c|timer2[7]~57COUT1_70\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, 
-- )
-- \timer_c|timer2[8]~59\ = CARRY(((\timer_c|timer2\(8) & !\timer_c|timer2[7]~57\)))
-- \timer_c|timer2[8]~59COUT1_71\ = CARRY(((\timer_c|timer2\(8) & !\timer_c|timer2[7]~57COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(8),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[5]~53\,
	cin0 => \timer_c|timer2[7]~57\,
	cin1 => \timer_c|timer2[7]~57COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(8),
	cout0 => \timer_c|timer2[8]~59\,
	cout1 => \timer_c|timer2[8]~59COUT1_71\);

-- Location: LC_X12_Y6_N3
\timer_c|timer2[9]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(9) = DFFEAS(\timer_c|timer2\(9) $ (((((!\timer_c|timer2[5]~53\ & \timer_c|timer2[8]~59\) # (\timer_c|timer2[5]~53\ & \timer_c|timer2[8]~59COUT1_71\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, 
-- )
-- \timer_c|timer2[9]~61\ = CARRY(((!\timer_c|timer2[8]~59\)) # (!\timer_c|timer2\(9)))
-- \timer_c|timer2[9]~61COUT1_72\ = CARRY(((!\timer_c|timer2[8]~59COUT1_71\)) # (!\timer_c|timer2\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(9),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[5]~53\,
	cin0 => \timer_c|timer2[8]~59\,
	cin1 => \timer_c|timer2[8]~59COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(9),
	cout0 => \timer_c|timer2[9]~61\,
	cout1 => \timer_c|timer2[9]~61COUT1_72\);

-- Location: LC_X12_Y6_N4
\timer_c|timer2[10]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(10) = DFFEAS(\timer_c|timer2\(10) $ ((((!(!\timer_c|timer2[5]~53\ & \timer_c|timer2[9]~61\) # (\timer_c|timer2[5]~53\ & \timer_c|timer2[9]~61COUT1_72\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[10]~43\ = CARRY((\timer_c|timer2\(10) & ((!\timer_c|timer2[9]~61COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(10),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[5]~53\,
	cin0 => \timer_c|timer2[9]~61\,
	cin1 => \timer_c|timer2[9]~61COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(10),
	cout => \timer_c|timer2[10]~43\);

-- Location: LC_X12_Y6_N5
\timer_c|timer2[11]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(11) = DFFEAS(\timer_c|timer2\(11) $ ((((\timer_c|timer2[10]~43\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[11]~37\ = CARRY(((!\timer_c|timer2[10]~43\)) # (!\timer_c|timer2\(11)))
-- \timer_c|timer2[11]~37COUT1_73\ = CARRY(((!\timer_c|timer2[10]~43\)) # (!\timer_c|timer2\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(11),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[10]~43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(11),
	cout0 => \timer_c|timer2[11]~37\,
	cout1 => \timer_c|timer2[11]~37COUT1_73\);

-- Location: LC_X12_Y6_N6
\timer_c|timer2[12]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(12) = DFFEAS(\timer_c|timer2\(12) $ ((((!(!\timer_c|timer2[10]~43\ & \timer_c|timer2[11]~37\) # (\timer_c|timer2[10]~43\ & \timer_c|timer2[11]~37COUT1_73\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[12]~39\ = CARRY((\timer_c|timer2\(12) & ((!\timer_c|timer2[11]~37\))))
-- \timer_c|timer2[12]~39COUT1_74\ = CARRY((\timer_c|timer2\(12) & ((!\timer_c|timer2[11]~37COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(12),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[10]~43\,
	cin0 => \timer_c|timer2[11]~37\,
	cin1 => \timer_c|timer2[11]~37COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(12),
	cout0 => \timer_c|timer2[12]~39\,
	cout1 => \timer_c|timer2[12]~39COUT1_74\);

-- Location: LC_X12_Y6_N7
\timer_c|timer2[13]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(13) = DFFEAS((\timer_c|timer2\(13) $ (((!\timer_c|timer2[10]~43\ & \timer_c|timer2[12]~39\) # (\timer_c|timer2[10]~43\ & \timer_c|timer2[12]~39COUT1_74\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[13]~41\ = CARRY(((!\timer_c|timer2[12]~39\) # (!\timer_c|timer2\(13))))
-- \timer_c|timer2[13]~41COUT1_75\ = CARRY(((!\timer_c|timer2[12]~39COUT1_74\) # (!\timer_c|timer2\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(13),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[10]~43\,
	cin0 => \timer_c|timer2[12]~39\,
	cin1 => \timer_c|timer2[12]~39COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(13),
	cout0 => \timer_c|timer2[13]~41\,
	cout1 => \timer_c|timer2[13]~41COUT1_75\);

-- Location: LC_X12_Y6_N8
\timer_c|timer2[14]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(14) = DFFEAS(\timer_c|timer2\(14) $ ((((!(!\timer_c|timer2[10]~43\ & \timer_c|timer2[13]~41\) # (\timer_c|timer2[10]~43\ & \timer_c|timer2[13]~41COUT1_75\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[14]~21\ = CARRY((\timer_c|timer2\(14) & ((!\timer_c|timer2[13]~41\))))
-- \timer_c|timer2[14]~21COUT1_76\ = CARRY((\timer_c|timer2\(14) & ((!\timer_c|timer2[13]~41COUT1_75\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(14),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[10]~43\,
	cin0 => \timer_c|timer2[13]~41\,
	cin1 => \timer_c|timer2[13]~41COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(14),
	cout0 => \timer_c|timer2[14]~21\,
	cout1 => \timer_c|timer2[14]~21COUT1_76\);

-- Location: LC_X12_Y6_N9
\timer_c|timer2[15]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(15) = DFFEAS((\timer_c|timer2\(15) $ (((!\timer_c|timer2[10]~43\ & \timer_c|timer2[14]~21\) # (\timer_c|timer2[10]~43\ & \timer_c|timer2[14]~21COUT1_76\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[15]~35\ = CARRY(((!\timer_c|timer2[14]~21COUT1_76\) # (!\timer_c|timer2\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(15),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[10]~43\,
	cin0 => \timer_c|timer2[14]~21\,
	cin1 => \timer_c|timer2[14]~21COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(15),
	cout => \timer_c|timer2[15]~35\);

-- Location: LC_X13_Y6_N0
\timer_c|timer2[16]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(16) = DFFEAS((\timer_c|timer2\(16) $ ((!\timer_c|timer2[15]~35\))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[16]~5\ = CARRY(((\timer_c|timer2\(16) & !\timer_c|timer2[15]~35\)))
-- \timer_c|timer2[16]~5COUT1_77\ = CARRY(((\timer_c|timer2\(16) & !\timer_c|timer2[15]~35\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(16),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[15]~35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(16),
	cout0 => \timer_c|timer2[16]~5\,
	cout1 => \timer_c|timer2[16]~5COUT1_77\);

-- Location: LC_X13_Y6_N1
\timer_c|timer2[17]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(17) = DFFEAS((\timer_c|timer2\(17) $ (((!\timer_c|timer2[15]~35\ & \timer_c|timer2[16]~5\) # (\timer_c|timer2[15]~35\ & \timer_c|timer2[16]~5COUT1_77\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[17]~7\ = CARRY(((!\timer_c|timer2[16]~5\) # (!\timer_c|timer2\(17))))
-- \timer_c|timer2[17]~7COUT1_78\ = CARRY(((!\timer_c|timer2[16]~5COUT1_77\) # (!\timer_c|timer2\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(17),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[15]~35\,
	cin0 => \timer_c|timer2[16]~5\,
	cin1 => \timer_c|timer2[16]~5COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(17),
	cout0 => \timer_c|timer2[17]~7\,
	cout1 => \timer_c|timer2[17]~7COUT1_78\);

-- Location: LC_X13_Y6_N2
\timer_c|timer2[18]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(18) = DFFEAS((\timer_c|timer2\(18) $ ((!(!\timer_c|timer2[15]~35\ & \timer_c|timer2[17]~7\) # (\timer_c|timer2[15]~35\ & \timer_c|timer2[17]~7COUT1_78\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[18]~9\ = CARRY(((\timer_c|timer2\(18) & !\timer_c|timer2[17]~7\)))
-- \timer_c|timer2[18]~9COUT1_79\ = CARRY(((\timer_c|timer2\(18) & !\timer_c|timer2[17]~7COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(18),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[15]~35\,
	cin0 => \timer_c|timer2[17]~7\,
	cin1 => \timer_c|timer2[17]~7COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(18),
	cout0 => \timer_c|timer2[18]~9\,
	cout1 => \timer_c|timer2[18]~9COUT1_79\);

-- Location: LC_X13_Y6_N3
\timer_c|timer2[19]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(19) = DFFEAS(\timer_c|timer2\(19) $ (((((!\timer_c|timer2[15]~35\ & \timer_c|timer2[18]~9\) # (\timer_c|timer2[15]~35\ & \timer_c|timer2[18]~9COUT1_79\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[19]~11\ = CARRY(((!\timer_c|timer2[18]~9\)) # (!\timer_c|timer2\(19)))
-- \timer_c|timer2[19]~11COUT1_80\ = CARRY(((!\timer_c|timer2[18]~9COUT1_79\)) # (!\timer_c|timer2\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(19),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[15]~35\,
	cin0 => \timer_c|timer2[18]~9\,
	cin1 => \timer_c|timer2[18]~9COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(19),
	cout0 => \timer_c|timer2[19]~11\,
	cout1 => \timer_c|timer2[19]~11COUT1_80\);

-- Location: LC_X13_Y6_N4
\timer_c|timer2[20]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(20) = DFFEAS(\timer_c|timer2\(20) $ ((((!(!\timer_c|timer2[15]~35\ & \timer_c|timer2[19]~11\) # (\timer_c|timer2[15]~35\ & \timer_c|timer2[19]~11COUT1_80\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[20]~19\ = CARRY((\timer_c|timer2\(20) & ((!\timer_c|timer2[19]~11COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(20),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[15]~35\,
	cin0 => \timer_c|timer2[19]~11\,
	cin1 => \timer_c|timer2[19]~11COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(20),
	cout => \timer_c|timer2[20]~19\);

-- Location: LC_X13_Y6_N5
\timer_c|timer2[21]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(21) = DFFEAS(\timer_c|timer2\(21) $ ((((\timer_c|timer2[20]~19\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[21]~17\ = CARRY(((!\timer_c|timer2[20]~19\)) # (!\timer_c|timer2\(21)))
-- \timer_c|timer2[21]~17COUT1_81\ = CARRY(((!\timer_c|timer2[20]~19\)) # (!\timer_c|timer2\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(21),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[20]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(21),
	cout0 => \timer_c|timer2[21]~17\,
	cout1 => \timer_c|timer2[21]~17COUT1_81\);

-- Location: LC_X13_Y6_N6
\timer_c|timer2[22]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(22) = DFFEAS(\timer_c|timer2\(22) $ ((((!(!\timer_c|timer2[20]~19\ & \timer_c|timer2[21]~17\) # (\timer_c|timer2[20]~19\ & \timer_c|timer2[21]~17COUT1_81\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[22]~29\ = CARRY((\timer_c|timer2\(22) & ((!\timer_c|timer2[21]~17\))))
-- \timer_c|timer2[22]~29COUT1_82\ = CARRY((\timer_c|timer2\(22) & ((!\timer_c|timer2[21]~17COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(22),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[20]~19\,
	cin0 => \timer_c|timer2[21]~17\,
	cin1 => \timer_c|timer2[21]~17COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(22),
	cout0 => \timer_c|timer2[22]~29\,
	cout1 => \timer_c|timer2[22]~29COUT1_82\);

-- Location: LC_X13_Y6_N7
\timer_c|timer2[23]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(23) = DFFEAS((\timer_c|timer2\(23) $ (((!\timer_c|timer2[20]~19\ & \timer_c|timer2[22]~29\) # (\timer_c|timer2[20]~19\ & \timer_c|timer2[22]~29COUT1_82\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[23]~31\ = CARRY(((!\timer_c|timer2[22]~29\) # (!\timer_c|timer2\(23))))
-- \timer_c|timer2[23]~31COUT1_83\ = CARRY(((!\timer_c|timer2[22]~29COUT1_82\) # (!\timer_c|timer2\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(23),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[20]~19\,
	cin0 => \timer_c|timer2[22]~29\,
	cin1 => \timer_c|timer2[22]~29COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(23),
	cout0 => \timer_c|timer2[23]~31\,
	cout1 => \timer_c|timer2[23]~31COUT1_83\);

-- Location: LC_X13_Y6_N8
\timer_c|timer2[24]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(24) = DFFEAS(\timer_c|timer2\(24) $ ((((!(!\timer_c|timer2[20]~19\ & \timer_c|timer2[23]~31\) # (\timer_c|timer2[20]~19\ & \timer_c|timer2[23]~31COUT1_83\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[24]~33\ = CARRY((\timer_c|timer2\(24) & ((!\timer_c|timer2[23]~31\))))
-- \timer_c|timer2[24]~33COUT1_84\ = CARRY((\timer_c|timer2\(24) & ((!\timer_c|timer2[23]~31COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(24),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[20]~19\,
	cin0 => \timer_c|timer2[23]~31\,
	cin1 => \timer_c|timer2[23]~31COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(24),
	cout0 => \timer_c|timer2[24]~33\,
	cout1 => \timer_c|timer2[24]~33COUT1_84\);

-- Location: LC_X13_Y6_N9
\timer_c|timer2[25]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(25) = DFFEAS((\timer_c|timer2\(25) $ (((!\timer_c|timer2[20]~19\ & \timer_c|timer2[24]~33\) # (\timer_c|timer2[20]~19\ & \timer_c|timer2[24]~33COUT1_84\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[25]~1\ = CARRY(((!\timer_c|timer2[24]~33COUT1_84\) # (!\timer_c|timer2\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(25),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[20]~19\,
	cin0 => \timer_c|timer2[24]~33\,
	cin1 => \timer_c|timer2[24]~33COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(25),
	cout => \timer_c|timer2[25]~1\);

-- Location: LC_X14_Y6_N0
\timer_c|timer2[26]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(26) = DFFEAS((\timer_c|timer2\(26) $ ((!\timer_c|timer2[25]~1\))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[26]~23\ = CARRY(((\timer_c|timer2\(26) & !\timer_c|timer2[25]~1\)))
-- \timer_c|timer2[26]~23COUT1_85\ = CARRY(((\timer_c|timer2\(26) & !\timer_c|timer2[25]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(26),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[25]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(26),
	cout0 => \timer_c|timer2[26]~23\,
	cout1 => \timer_c|timer2[26]~23COUT1_85\);

-- Location: LC_X14_Y6_N1
\timer_c|timer2[27]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(27) = DFFEAS((\timer_c|timer2\(27) $ (((!\timer_c|timer2[25]~1\ & \timer_c|timer2[26]~23\) # (\timer_c|timer2[25]~1\ & \timer_c|timer2[26]~23COUT1_85\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[27]~25\ = CARRY(((!\timer_c|timer2[26]~23\) # (!\timer_c|timer2\(27))))
-- \timer_c|timer2[27]~25COUT1_86\ = CARRY(((!\timer_c|timer2[26]~23COUT1_85\) # (!\timer_c|timer2\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(27),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[25]~1\,
	cin0 => \timer_c|timer2[26]~23\,
	cin1 => \timer_c|timer2[26]~23COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(27),
	cout0 => \timer_c|timer2[27]~25\,
	cout1 => \timer_c|timer2[27]~25COUT1_86\);

-- Location: LC_X14_Y6_N2
\timer_c|timer2[28]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(28) = DFFEAS((\timer_c|timer2\(28) $ ((!(!\timer_c|timer2[25]~1\ & \timer_c|timer2[27]~25\) # (\timer_c|timer2[25]~1\ & \timer_c|timer2[27]~25COUT1_86\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[28]~27\ = CARRY(((\timer_c|timer2\(28) & !\timer_c|timer2[27]~25\)))
-- \timer_c|timer2[28]~27COUT1_87\ = CARRY(((\timer_c|timer2\(28) & !\timer_c|timer2[27]~25COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(28),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[25]~1\,
	cin0 => \timer_c|timer2[27]~25\,
	cin1 => \timer_c|timer2[27]~25COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(28),
	cout0 => \timer_c|timer2[28]~27\,
	cout1 => \timer_c|timer2[28]~27COUT1_87\);

-- Location: LC_X14_Y6_N3
\timer_c|timer2[29]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(29) = DFFEAS(\timer_c|timer2\(29) $ (((((!\timer_c|timer2[25]~1\ & \timer_c|timer2[28]~27\) # (\timer_c|timer2[25]~1\ & \timer_c|timer2[28]~27COUT1_87\))))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[29]~13\ = CARRY(((!\timer_c|timer2[28]~27\)) # (!\timer_c|timer2\(29)))
-- \timer_c|timer2[29]~13COUT1_88\ = CARRY(((!\timer_c|timer2[28]~27COUT1_87\)) # (!\timer_c|timer2\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(29),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[25]~1\,
	cin0 => \timer_c|timer2[28]~27\,
	cin1 => \timer_c|timer2[28]~27COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(29),
	cout0 => \timer_c|timer2[29]~13\,
	cout1 => \timer_c|timer2[29]~13COUT1_88\);

-- Location: LC_X14_Y6_N4
\timer_c|timer2[30]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(30) = DFFEAS((\timer_c|timer2\(30) $ ((!(!\timer_c|timer2[25]~1\ & \timer_c|timer2[29]~13\) # (\timer_c|timer2[25]~1\ & \timer_c|timer2[29]~13COUT1_88\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer2[30]~15\ = CARRY(((\timer_c|timer2\(30) & !\timer_c|timer2[29]~13COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer2\(30),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[25]~1\,
	cin0 => \timer_c|timer2[29]~13\,
	cin1 => \timer_c|timer2[29]~13COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(30),
	cout => \timer_c|timer2[30]~15\);

-- Location: LC_X14_Y6_N5
\timer_c|timer2[31]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer2\(31) = DFFEAS(\timer_c|timer2\(31) $ ((((\timer_c|timer2[30]~15\)))), GLOBAL(\clock_50~combout\), VCC, , \outp~1_combout\, , , \timer_c|Equal3~0_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer2\(31),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \outp~1_combout\,
	cin => \timer_c|timer2[30]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer2\(31));

-- Location: LC_X15_Y6_N5
\timer_c|LED~6\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~6_combout\ = (\timer_c|timer2\(30)) # ((\timer_c|timer2\(29)) # ((\timer_c|timer2\(21)) # (\timer_c|timer2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(30),
	datab => \timer_c|timer2\(29),
	datac => \timer_c|timer2\(21),
	datad => \timer_c|timer2\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~6_combout\);

-- Location: LC_X15_Y6_N2
\timer_c|LED~5\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~5_combout\ = (\timer_c|timer2\(19) & (\timer_c|timer2\(18) & ((\timer_c|timer2\(17)) # (\timer_c|timer2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(17),
	datab => \timer_c|timer2\(16),
	datac => \timer_c|timer2\(19),
	datad => \timer_c|timer2\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~5_combout\);

-- Location: LC_X15_Y6_N3
\timer_c|LED~7\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~7_combout\ = (\timer_c|timer2\(31)) # ((!\timer_c|timer2\(25) & (!\timer_c|LED~6_combout\ & !\timer_c|LED~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(31),
	datab => \timer_c|timer2\(25),
	datac => \timer_c|LED~6_combout\,
	datad => \timer_c|LED~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~7_combout\);

-- Location: LC_X11_Y6_N3
\timer_c|LED~13\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~13_combout\ = (!\timer_c|timer2\(1) & (!\timer_c|timer2\(3) & (!\timer_c|timer2\(2) & !\timer_c|timer2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(1),
	datab => \timer_c|timer2\(3),
	datac => \timer_c|timer2\(2),
	datad => \timer_c|timer2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~13_combout\);

-- Location: LC_X11_Y6_N0
\timer_c|LED~14\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~14_combout\ = (!\timer_c|timer2\(7) & (!\timer_c|timer2\(5) & (!\timer_c|timer2\(6) & \timer_c|LED~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(7),
	datab => \timer_c|timer2\(5),
	datac => \timer_c|timer2\(6),
	datad => \timer_c|LED~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~14_combout\);

-- Location: LC_X11_Y6_N1
\timer_c|LED~15\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~15_combout\ = (\timer_c|timer2\(10) & ((\timer_c|timer2\(9)) # ((\timer_c|timer2\(8) & !\timer_c|LED~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(9),
	datab => \timer_c|timer2\(10),
	datac => \timer_c|timer2\(8),
	datad => \timer_c|LED~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~15_combout\);

-- Location: LC_X11_Y6_N2
\timer_c|LED~16\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~16_combout\ = (\timer_c|timer2\(13) & ((\timer_c|timer2\(11)) # ((\timer_c|timer2\(12)) # (\timer_c|LED~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(13),
	datab => \timer_c|timer2\(11),
	datac => \timer_c|timer2\(12),
	datad => \timer_c|LED~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~16_combout\);

-- Location: LC_X14_Y6_N7
\timer_c|LED~11\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~11_combout\ = (\timer_c|timer2\(29)) # ((\timer_c|timer2\(30)) # ((\timer_c|timer2\(21)) # (\timer_c|timer2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(29),
	datab => \timer_c|timer2\(30),
	datac => \timer_c|timer2\(21),
	datad => \timer_c|timer2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~11_combout\);

-- Location: LC_X14_Y6_N8
\timer_c|LED~12\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~12_combout\ = (!\timer_c|timer2\(25) & (!\timer_c|timer2\(20) & (!\timer_c|timer2\(17) & !\timer_c|LED~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(25),
	datab => \timer_c|timer2\(20),
	datac => \timer_c|timer2\(17),
	datad => \timer_c|LED~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~12_combout\);

-- Location: LC_X14_Y6_N6
\timer_c|LED~9\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~9_combout\ = (\timer_c|timer2\(25)) # ((\timer_c|timer2\(24) & (\timer_c|timer2\(22) & \timer_c|timer2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(24),
	datab => \timer_c|timer2\(22),
	datac => \timer_c|timer2\(25),
	datad => \timer_c|timer2\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~9_combout\);

-- Location: LC_X15_Y6_N7
\timer_c|LED~8\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~8_combout\ = ((\timer_c|timer2\(28) & (\timer_c|timer2\(27) & \timer_c|timer2\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_c|timer2\(28),
	datac => \timer_c|timer2\(27),
	datad => \timer_c|timer2\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~8_combout\);

-- Location: LC_X14_Y6_N9
\timer_c|LED~10\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~10_combout\ = (!\timer_c|timer2\(29) & (!\timer_c|timer2\(30) & ((!\timer_c|LED~8_combout\) # (!\timer_c|LED~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(29),
	datab => \timer_c|timer2\(30),
	datac => \timer_c|LED~9_combout\,
	datad => \timer_c|LED~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~10_combout\);

-- Location: LC_X10_Y6_N0
\timer_c|LED~17\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~17_combout\ = (\timer_c|LED~10_combout\) # ((\timer_c|LED~12_combout\ & ((!\timer_c|LED~16_combout\) # (!\timer_c|timer2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer2\(14),
	datab => \timer_c|LED~16_combout\,
	datac => \timer_c|LED~12_combout\,
	datad => \timer_c|LED~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~17_combout\);

-- Location: LC_X10_Y6_N1
\timer_c|LED[1]\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED\(1) = DFFEAS((\timer_c|LED~4_combout\ & (\y_present.t2~regout\ & ((\timer_c|LED~7_combout\) # (\timer_c|LED~17_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|LED~4_combout\,
	datab => \y_present.t2~regout\,
	datac => \timer_c|LED~7_combout\,
	datad => \timer_c|LED~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|LED\(1));

-- Location: LC_X9_Y6_N2
\out_LED~1\ : maxv_lcell
-- Equation(s):
-- \out_LED~1_combout\ = (\timer_c|LED\(1) & (((\reset~combout\) # (\inp~combout\(0))) # (!\state_transition_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_transition_proc~0_combout\,
	datab => \reset~combout\,
	datac => \inp~combout\(0),
	datad => \timer_c|LED\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_LED~1_combout\);

-- Location: LC_X10_Y6_N3
\timer_c|timer3~62\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3~62_combout\ = ((\y_present.t1~regout\ $ (!\y_present.t2~regout\))) # (!\y_present.rst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f55f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.rst~regout\,
	datac => \y_present.t1~regout\,
	datad => \y_present.t2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|timer3~62_combout\);

-- Location: LC_X11_Y8_N4
\timer_c|timer3[0]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(0) = DFFEAS((!\timer_c|timer3\(0)), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[0]~64\ = CARRY((\timer_c|timer3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(0),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(0),
	cout => \timer_c|timer3[0]~64\);

-- Location: LC_X11_Y8_N5
\timer_c|timer3[1]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(1) = DFFEAS(\timer_c|timer3\(1) $ ((((\timer_c|timer3[0]~64\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[1]~33\ = CARRY(((!\timer_c|timer3[0]~64\)) # (!\timer_c|timer3\(1)))
-- \timer_c|timer3[1]~33COUT1_66\ = CARRY(((!\timer_c|timer3[0]~64\)) # (!\timer_c|timer3\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(1),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[0]~64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(1),
	cout0 => \timer_c|timer3[1]~33\,
	cout1 => \timer_c|timer3[1]~33COUT1_66\);

-- Location: LC_X11_Y8_N6
\timer_c|timer3[2]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(2) = DFFEAS(\timer_c|timer3\(2) $ ((((!(!\timer_c|timer3[0]~64\ & \timer_c|timer3[1]~33\) # (\timer_c|timer3[0]~64\ & \timer_c|timer3[1]~33COUT1_66\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[2]~35\ = CARRY((\timer_c|timer3\(2) & ((!\timer_c|timer3[1]~33\))))
-- \timer_c|timer3[2]~35COUT1_67\ = CARRY((\timer_c|timer3\(2) & ((!\timer_c|timer3[1]~33COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(2),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[0]~64\,
	cin0 => \timer_c|timer3[1]~33\,
	cin1 => \timer_c|timer3[1]~33COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(2),
	cout0 => \timer_c|timer3[2]~35\,
	cout1 => \timer_c|timer3[2]~35COUT1_67\);

-- Location: LC_X11_Y8_N7
\timer_c|timer3[3]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(3) = DFFEAS((\timer_c|timer3\(3) $ (((!\timer_c|timer3[0]~64\ & \timer_c|timer3[2]~35\) # (\timer_c|timer3[0]~64\ & \timer_c|timer3[2]~35COUT1_67\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[3]~37\ = CARRY(((!\timer_c|timer3[2]~35\) # (!\timer_c|timer3\(3))))
-- \timer_c|timer3[3]~37COUT1_68\ = CARRY(((!\timer_c|timer3[2]~35COUT1_67\) # (!\timer_c|timer3\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(3),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[0]~64\,
	cin0 => \timer_c|timer3[2]~35\,
	cin1 => \timer_c|timer3[2]~35COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(3),
	cout0 => \timer_c|timer3[3]~37\,
	cout1 => \timer_c|timer3[3]~37COUT1_68\);

-- Location: LC_X11_Y8_N8
\timer_c|timer3[4]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(4) = DFFEAS(\timer_c|timer3\(4) $ ((((!(!\timer_c|timer3[0]~64\ & \timer_c|timer3[3]~37\) # (\timer_c|timer3[0]~64\ & \timer_c|timer3[3]~37COUT1_68\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[4]~39\ = CARRY((\timer_c|timer3\(4) & ((!\timer_c|timer3[3]~37\))))
-- \timer_c|timer3[4]~39COUT1_69\ = CARRY((\timer_c|timer3\(4) & ((!\timer_c|timer3[3]~37COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(4),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[0]~64\,
	cin0 => \timer_c|timer3[3]~37\,
	cin1 => \timer_c|timer3[3]~37COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(4),
	cout0 => \timer_c|timer3[4]~39\,
	cout1 => \timer_c|timer3[4]~39COUT1_69\);

-- Location: LC_X11_Y8_N9
\timer_c|timer3[5]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(5) = DFFEAS((\timer_c|timer3\(5) $ (((!\timer_c|timer3[0]~64\ & \timer_c|timer3[4]~39\) # (\timer_c|timer3[0]~64\ & \timer_c|timer3[4]~39COUT1_69\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[5]~41\ = CARRY(((!\timer_c|timer3[4]~39COUT1_69\) # (!\timer_c|timer3\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(5),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[0]~64\,
	cin0 => \timer_c|timer3[4]~39\,
	cin1 => \timer_c|timer3[4]~39COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(5),
	cout => \timer_c|timer3[5]~41\);

-- Location: LC_X12_Y8_N0
\timer_c|timer3[6]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(6) = DFFEAS((\timer_c|timer3\(6) $ ((!\timer_c|timer3[5]~41\))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[6]~43\ = CARRY(((\timer_c|timer3\(6) & !\timer_c|timer3[5]~41\)))
-- \timer_c|timer3[6]~43COUT1_70\ = CARRY(((\timer_c|timer3\(6) & !\timer_c|timer3[5]~41\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(6),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[5]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(6),
	cout0 => \timer_c|timer3[6]~43\,
	cout1 => \timer_c|timer3[6]~43COUT1_70\);

-- Location: LC_X12_Y8_N1
\timer_c|timer3[7]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(7) = DFFEAS((\timer_c|timer3\(7) $ (((!\timer_c|timer3[5]~41\ & \timer_c|timer3[6]~43\) # (\timer_c|timer3[5]~41\ & \timer_c|timer3[6]~43COUT1_70\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[7]~21\ = CARRY(((!\timer_c|timer3[6]~43\) # (!\timer_c|timer3\(7))))
-- \timer_c|timer3[7]~21COUT1_71\ = CARRY(((!\timer_c|timer3[6]~43COUT1_70\) # (!\timer_c|timer3\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(7),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[5]~41\,
	cin0 => \timer_c|timer3[6]~43\,
	cin1 => \timer_c|timer3[6]~43COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(7),
	cout0 => \timer_c|timer3[7]~21\,
	cout1 => \timer_c|timer3[7]~21COUT1_71\);

-- Location: LC_X12_Y8_N2
\timer_c|timer3[8]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(8) = DFFEAS((\timer_c|timer3\(8) $ ((!(!\timer_c|timer3[5]~41\ & \timer_c|timer3[7]~21\) # (\timer_c|timer3[5]~41\ & \timer_c|timer3[7]~21COUT1_71\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[8]~23\ = CARRY(((\timer_c|timer3\(8) & !\timer_c|timer3[7]~21\)))
-- \timer_c|timer3[8]~23COUT1_72\ = CARRY(((\timer_c|timer3\(8) & !\timer_c|timer3[7]~21COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(8),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[5]~41\,
	cin0 => \timer_c|timer3[7]~21\,
	cin1 => \timer_c|timer3[7]~21COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(8),
	cout0 => \timer_c|timer3[8]~23\,
	cout1 => \timer_c|timer3[8]~23COUT1_72\);

-- Location: LC_X12_Y8_N3
\timer_c|timer3[9]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(9) = DFFEAS(\timer_c|timer3\(9) $ (((((!\timer_c|timer3[5]~41\ & \timer_c|timer3[8]~23\) # (\timer_c|timer3[5]~41\ & \timer_c|timer3[8]~23COUT1_72\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[9]~25\ = CARRY(((!\timer_c|timer3[8]~23\)) # (!\timer_c|timer3\(9)))
-- \timer_c|timer3[9]~25COUT1_73\ = CARRY(((!\timer_c|timer3[8]~23COUT1_72\)) # (!\timer_c|timer3\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(9),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[5]~41\,
	cin0 => \timer_c|timer3[8]~23\,
	cin1 => \timer_c|timer3[8]~23COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(9),
	cout0 => \timer_c|timer3[9]~25\,
	cout1 => \timer_c|timer3[9]~25COUT1_73\);

-- Location: LC_X12_Y8_N4
\timer_c|timer3[10]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(10) = DFFEAS(\timer_c|timer3\(10) $ ((((!(!\timer_c|timer3[5]~41\ & \timer_c|timer3[9]~25\) # (\timer_c|timer3[5]~41\ & \timer_c|timer3[9]~25COUT1_73\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[10]~27\ = CARRY((\timer_c|timer3\(10) & ((!\timer_c|timer3[9]~25COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(10),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[5]~41\,
	cin0 => \timer_c|timer3[9]~25\,
	cin1 => \timer_c|timer3[9]~25COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(10),
	cout => \timer_c|timer3[10]~27\);

-- Location: LC_X12_Y8_N5
\timer_c|timer3[11]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(11) = DFFEAS(\timer_c|timer3\(11) $ ((((\timer_c|timer3[10]~27\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[11]~51\ = CARRY(((!\timer_c|timer3[10]~27\)) # (!\timer_c|timer3\(11)))
-- \timer_c|timer3[11]~51COUT1_74\ = CARRY(((!\timer_c|timer3[10]~27\)) # (!\timer_c|timer3\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(11),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[10]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(11),
	cout0 => \timer_c|timer3[11]~51\,
	cout1 => \timer_c|timer3[11]~51COUT1_74\);

-- Location: LC_X12_Y8_N6
\timer_c|timer3[12]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(12) = DFFEAS(\timer_c|timer3\(12) $ ((((!(!\timer_c|timer3[10]~27\ & \timer_c|timer3[11]~51\) # (\timer_c|timer3[10]~27\ & \timer_c|timer3[11]~51COUT1_74\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[12]~29\ = CARRY((\timer_c|timer3\(12) & ((!\timer_c|timer3[11]~51\))))
-- \timer_c|timer3[12]~29COUT1_75\ = CARRY((\timer_c|timer3\(12) & ((!\timer_c|timer3[11]~51COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(12),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[10]~27\,
	cin0 => \timer_c|timer3[11]~51\,
	cin1 => \timer_c|timer3[11]~51COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(12),
	cout0 => \timer_c|timer3[12]~29\,
	cout1 => \timer_c|timer3[12]~29COUT1_75\);

-- Location: LC_X12_Y8_N7
\timer_c|timer3[13]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(13) = DFFEAS((\timer_c|timer3\(13) $ (((!\timer_c|timer3[10]~27\ & \timer_c|timer3[12]~29\) # (\timer_c|timer3[10]~27\ & \timer_c|timer3[12]~29COUT1_75\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[13]~47\ = CARRY(((!\timer_c|timer3[12]~29\) # (!\timer_c|timer3\(13))))
-- \timer_c|timer3[13]~47COUT1_76\ = CARRY(((!\timer_c|timer3[12]~29COUT1_75\) # (!\timer_c|timer3\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(13),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[10]~27\,
	cin0 => \timer_c|timer3[12]~29\,
	cin1 => \timer_c|timer3[12]~29COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(13),
	cout0 => \timer_c|timer3[13]~47\,
	cout1 => \timer_c|timer3[13]~47COUT1_76\);

-- Location: LC_X12_Y8_N8
\timer_c|timer3[14]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(14) = DFFEAS(\timer_c|timer3\(14) $ ((((!(!\timer_c|timer3[10]~27\ & \timer_c|timer3[13]~47\) # (\timer_c|timer3[10]~27\ & \timer_c|timer3[13]~47COUT1_76\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[14]~49\ = CARRY((\timer_c|timer3\(14) & ((!\timer_c|timer3[13]~47\))))
-- \timer_c|timer3[14]~49COUT1_77\ = CARRY((\timer_c|timer3\(14) & ((!\timer_c|timer3[13]~47COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(14),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[10]~27\,
	cin0 => \timer_c|timer3[13]~47\,
	cin1 => \timer_c|timer3[13]~47COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(14),
	cout0 => \timer_c|timer3[14]~49\,
	cout1 => \timer_c|timer3[14]~49COUT1_77\);

-- Location: LC_X12_Y8_N9
\timer_c|timer3[15]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(15) = DFFEAS((\timer_c|timer3\(15) $ (((!\timer_c|timer3[10]~27\ & \timer_c|timer3[14]~49\) # (\timer_c|timer3[10]~27\ & \timer_c|timer3[14]~49COUT1_77\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[15]~53\ = CARRY(((!\timer_c|timer3[14]~49COUT1_77\) # (!\timer_c|timer3\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(15),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[10]~27\,
	cin0 => \timer_c|timer3[14]~49\,
	cin1 => \timer_c|timer3[14]~49COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(15),
	cout => \timer_c|timer3[15]~53\);

-- Location: LC_X13_Y8_N0
\timer_c|timer3[16]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(16) = DFFEAS((\timer_c|timer3\(16) $ ((!\timer_c|timer3[15]~53\))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[16]~55\ = CARRY(((\timer_c|timer3\(16) & !\timer_c|timer3[15]~53\)))
-- \timer_c|timer3[16]~55COUT1_78\ = CARRY(((\timer_c|timer3\(16) & !\timer_c|timer3[15]~53\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(16),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[15]~53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(16),
	cout0 => \timer_c|timer3[16]~55\,
	cout1 => \timer_c|timer3[16]~55COUT1_78\);

-- Location: LC_X13_Y8_N1
\timer_c|timer3[17]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(17) = DFFEAS((\timer_c|timer3\(17) $ (((!\timer_c|timer3[15]~53\ & \timer_c|timer3[16]~55\) # (\timer_c|timer3[15]~53\ & \timer_c|timer3[16]~55COUT1_78\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[17]~57\ = CARRY(((!\timer_c|timer3[16]~55\) # (!\timer_c|timer3\(17))))
-- \timer_c|timer3[17]~57COUT1_79\ = CARRY(((!\timer_c|timer3[16]~55COUT1_78\) # (!\timer_c|timer3\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(17),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[15]~53\,
	cin0 => \timer_c|timer3[16]~55\,
	cin1 => \timer_c|timer3[16]~55COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(17),
	cout0 => \timer_c|timer3[17]~57\,
	cout1 => \timer_c|timer3[17]~57COUT1_79\);

-- Location: LC_X13_Y8_N2
\timer_c|timer3[18]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(18) = DFFEAS((\timer_c|timer3\(18) $ ((!(!\timer_c|timer3[15]~53\ & \timer_c|timer3[17]~57\) # (\timer_c|timer3[15]~53\ & \timer_c|timer3[17]~57COUT1_79\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[18]~31\ = CARRY(((\timer_c|timer3\(18) & !\timer_c|timer3[17]~57\)))
-- \timer_c|timer3[18]~31COUT1_80\ = CARRY(((\timer_c|timer3\(18) & !\timer_c|timer3[17]~57COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(18),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[15]~53\,
	cin0 => \timer_c|timer3[17]~57\,
	cin1 => \timer_c|timer3[17]~57COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(18),
	cout0 => \timer_c|timer3[18]~31\,
	cout1 => \timer_c|timer3[18]~31COUT1_80\);

-- Location: LC_X13_Y8_N3
\timer_c|timer3[19]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(19) = DFFEAS(\timer_c|timer3\(19) $ (((((!\timer_c|timer3[15]~53\ & \timer_c|timer3[18]~31\) # (\timer_c|timer3[15]~53\ & \timer_c|timer3[18]~31COUT1_80\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[19]~45\ = CARRY(((!\timer_c|timer3[18]~31\)) # (!\timer_c|timer3\(19)))
-- \timer_c|timer3[19]~45COUT1_81\ = CARRY(((!\timer_c|timer3[18]~31COUT1_80\)) # (!\timer_c|timer3\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(19),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[15]~53\,
	cin0 => \timer_c|timer3[18]~31\,
	cin1 => \timer_c|timer3[18]~31COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(19),
	cout0 => \timer_c|timer3[19]~45\,
	cout1 => \timer_c|timer3[19]~45COUT1_81\);

-- Location: LC_X13_Y8_N4
\timer_c|timer3[20]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(20) = DFFEAS(\timer_c|timer3\(20) $ ((((!(!\timer_c|timer3[15]~53\ & \timer_c|timer3[19]~45\) # (\timer_c|timer3[15]~53\ & \timer_c|timer3[19]~45COUT1_81\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[20]~59\ = CARRY((\timer_c|timer3\(20) & ((!\timer_c|timer3[19]~45COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(20),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[15]~53\,
	cin0 => \timer_c|timer3[19]~45\,
	cin1 => \timer_c|timer3[19]~45COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(20),
	cout => \timer_c|timer3[20]~59\);

-- Location: LC_X13_Y8_N5
\timer_c|timer3[21]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(21) = DFFEAS(\timer_c|timer3\(21) $ ((((\timer_c|timer3[20]~59\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[21]~61\ = CARRY(((!\timer_c|timer3[20]~59\)) # (!\timer_c|timer3\(21)))
-- \timer_c|timer3[21]~61COUT1_82\ = CARRY(((!\timer_c|timer3[20]~59\)) # (!\timer_c|timer3\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(21),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[20]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(21),
	cout0 => \timer_c|timer3[21]~61\,
	cout1 => \timer_c|timer3[21]~61COUT1_82\);

-- Location: LC_X13_Y8_N6
\timer_c|timer3[22]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(22) = DFFEAS(\timer_c|timer3\(22) $ ((((!(!\timer_c|timer3[20]~59\ & \timer_c|timer3[21]~61\) # (\timer_c|timer3[20]~59\ & \timer_c|timer3[21]~61COUT1_82\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[22]~17\ = CARRY((\timer_c|timer3\(22) & ((!\timer_c|timer3[21]~61\))))
-- \timer_c|timer3[22]~17COUT1_83\ = CARRY((\timer_c|timer3\(22) & ((!\timer_c|timer3[21]~61COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(22),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[20]~59\,
	cin0 => \timer_c|timer3[21]~61\,
	cin1 => \timer_c|timer3[21]~61COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(22),
	cout0 => \timer_c|timer3[22]~17\,
	cout1 => \timer_c|timer3[22]~17COUT1_83\);

-- Location: LC_X13_Y8_N7
\timer_c|timer3[23]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(23) = DFFEAS((\timer_c|timer3\(23) $ (((!\timer_c|timer3[20]~59\ & \timer_c|timer3[22]~17\) # (\timer_c|timer3[20]~59\ & \timer_c|timer3[22]~17COUT1_83\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[23]~15\ = CARRY(((!\timer_c|timer3[22]~17\) # (!\timer_c|timer3\(23))))
-- \timer_c|timer3[23]~15COUT1_84\ = CARRY(((!\timer_c|timer3[22]~17COUT1_83\) # (!\timer_c|timer3\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(23),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[20]~59\,
	cin0 => \timer_c|timer3[22]~17\,
	cin1 => \timer_c|timer3[22]~17COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(23),
	cout0 => \timer_c|timer3[23]~15\,
	cout1 => \timer_c|timer3[23]~15COUT1_84\);

-- Location: LC_X13_Y8_N8
\timer_c|timer3[24]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(24) = DFFEAS(\timer_c|timer3\(24) $ ((((!(!\timer_c|timer3[20]~59\ & \timer_c|timer3[23]~15\) # (\timer_c|timer3[20]~59\ & \timer_c|timer3[23]~15COUT1_84\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[24]~19\ = CARRY((\timer_c|timer3\(24) & ((!\timer_c|timer3[23]~15\))))
-- \timer_c|timer3[24]~19COUT1_85\ = CARRY((\timer_c|timer3\(24) & ((!\timer_c|timer3[23]~15COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(24),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[20]~59\,
	cin0 => \timer_c|timer3[23]~15\,
	cin1 => \timer_c|timer3[23]~15COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(24),
	cout0 => \timer_c|timer3[24]~19\,
	cout1 => \timer_c|timer3[24]~19COUT1_85\);

-- Location: LC_X13_Y8_N9
\timer_c|timer3[25]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(25) = DFFEAS((\timer_c|timer3\(25) $ (((!\timer_c|timer3[20]~59\ & \timer_c|timer3[24]~19\) # (\timer_c|timer3[20]~59\ & \timer_c|timer3[24]~19COUT1_85\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[25]~9\ = CARRY(((!\timer_c|timer3[24]~19COUT1_85\) # (!\timer_c|timer3\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(25),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[20]~59\,
	cin0 => \timer_c|timer3[24]~19\,
	cin1 => \timer_c|timer3[24]~19COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(25),
	cout => \timer_c|timer3[25]~9\);

-- Location: LC_X14_Y8_N0
\timer_c|timer3[26]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(26) = DFFEAS((\timer_c|timer3\(26) $ ((!\timer_c|timer3[25]~9\))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[26]~11\ = CARRY(((\timer_c|timer3\(26) & !\timer_c|timer3[25]~9\)))
-- \timer_c|timer3[26]~11COUT1_86\ = CARRY(((\timer_c|timer3\(26) & !\timer_c|timer3[25]~9\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(26),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[25]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(26),
	cout0 => \timer_c|timer3[26]~11\,
	cout1 => \timer_c|timer3[26]~11COUT1_86\);

-- Location: LC_X14_Y8_N1
\timer_c|timer3[27]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(27) = DFFEAS((\timer_c|timer3\(27) $ (((!\timer_c|timer3[25]~9\ & \timer_c|timer3[26]~11\) # (\timer_c|timer3[25]~9\ & \timer_c|timer3[26]~11COUT1_86\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[27]~13\ = CARRY(((!\timer_c|timer3[26]~11\) # (!\timer_c|timer3\(27))))
-- \timer_c|timer3[27]~13COUT1_87\ = CARRY(((!\timer_c|timer3[26]~11COUT1_86\) # (!\timer_c|timer3\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(27),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[25]~9\,
	cin0 => \timer_c|timer3[26]~11\,
	cin1 => \timer_c|timer3[26]~11COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(27),
	cout0 => \timer_c|timer3[27]~13\,
	cout1 => \timer_c|timer3[27]~13COUT1_87\);

-- Location: LC_X14_Y8_N2
\timer_c|timer3[28]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(28) = DFFEAS((\timer_c|timer3\(28) $ ((!(!\timer_c|timer3[25]~9\ & \timer_c|timer3[27]~13\) # (\timer_c|timer3[25]~9\ & \timer_c|timer3[27]~13COUT1_87\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[28]~5\ = CARRY(((\timer_c|timer3\(28) & !\timer_c|timer3[27]~13\)))
-- \timer_c|timer3[28]~5COUT1_88\ = CARRY(((\timer_c|timer3\(28) & !\timer_c|timer3[27]~13COUT1_87\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_c|timer3\(28),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[25]~9\,
	cin0 => \timer_c|timer3[27]~13\,
	cin1 => \timer_c|timer3[27]~13COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(28),
	cout0 => \timer_c|timer3[28]~5\,
	cout1 => \timer_c|timer3[28]~5COUT1_88\);

-- Location: LC_X14_Y8_N3
\timer_c|timer3[29]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(29) = DFFEAS(\timer_c|timer3\(29) $ (((((!\timer_c|timer3[25]~9\ & \timer_c|timer3[28]~5\) # (\timer_c|timer3[25]~9\ & \timer_c|timer3[28]~5COUT1_88\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[29]~3\ = CARRY(((!\timer_c|timer3[28]~5\)) # (!\timer_c|timer3\(29)))
-- \timer_c|timer3[29]~3COUT1_89\ = CARRY(((!\timer_c|timer3[28]~5COUT1_88\)) # (!\timer_c|timer3\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(29),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[25]~9\,
	cin0 => \timer_c|timer3[28]~5\,
	cin1 => \timer_c|timer3[28]~5COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(29),
	cout0 => \timer_c|timer3[29]~3\,
	cout1 => \timer_c|timer3[29]~3COUT1_89\);

-- Location: LC_X14_Y8_N4
\timer_c|timer3[30]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(30) = DFFEAS(\timer_c|timer3\(30) $ ((((!(!\timer_c|timer3[25]~9\ & \timer_c|timer3[29]~3\) # (\timer_c|timer3[25]~9\ & \timer_c|timer3[29]~3COUT1_89\))))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , 
-- \timer_c|Equal3~0_combout\, )
-- \timer_c|timer3[30]~7\ = CARRY((\timer_c|timer3\(30) & ((!\timer_c|timer3[29]~3COUT1_89\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(30),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[25]~9\,
	cin0 => \timer_c|timer3[29]~3\,
	cin1 => \timer_c|timer3[29]~3COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(30),
	cout => \timer_c|timer3[30]~7\);

-- Location: LC_X14_Y8_N5
\timer_c|timer3[31]\ : maxv_lcell
-- Equation(s):
-- \timer_c|timer3\(31) = DFFEAS(\timer_c|timer3\(31) $ ((((\timer_c|timer3[30]~7\)))), GLOBAL(\clock_50~combout\), VCC, , \timer_c|timer3~62_combout\, , , \timer_c|Equal3~0_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|timer3\(31),
	aclr => GND,
	sclr => \timer_c|Equal3~0_combout\,
	ena => \timer_c|timer3~62_combout\,
	cin => \timer_c|timer3[30]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|timer3\(31));

-- Location: LC_X14_Y8_N9
\timer_c|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~0_combout\ = (!\timer_c|timer3\(31) & (\timer_c|timer3\(27) & (\timer_c|timer3\(26) & \timer_c|timer3\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(31),
	datab => \timer_c|timer3\(27),
	datac => \timer_c|timer3\(26),
	datad => \timer_c|timer3\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~0_combout\);

-- Location: LC_X14_Y8_N8
\timer_c|LessThan2~8\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~8_combout\ = (\timer_c|timer3\(21) & (\timer_c|timer3\(23) & (\timer_c|timer3\(20) & \timer_c|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(21),
	datab => \timer_c|timer3\(23),
	datac => \timer_c|timer3\(20),
	datad => \timer_c|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~8_combout\);

-- Location: LC_X14_Y8_N6
\timer_c|LED~22\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~22_combout\ = ((!\timer_c|timer3\(24) & ((!\timer_c|timer3\(22)) # (!\timer_c|timer3\(23))))) # (!\timer_c|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(24),
	datab => \timer_c|timer3\(23),
	datac => \timer_c|timer3\(22),
	datad => \timer_c|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~22_combout\);

-- Location: LC_X14_Y8_N7
\timer_c|LED~19\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~19_combout\ = (\timer_c|timer3\(31)) # ((!\timer_c|timer3\(30) & ((!\timer_c|timer3\(29)) # (!\timer_c|timer3\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(31),
	datab => \timer_c|timer3\(28),
	datac => \timer_c|timer3\(30),
	datad => \timer_c|timer3\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~19_combout\);

-- Location: LC_X10_Y6_N5
\timer_c|LED~20\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~20_combout\ = (\clock_1~combout\ & (!\y_present.t2~regout\ & (!\y_present.t1~regout\ & \y_present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1~combout\,
	datab => \y_present.t2~regout\,
	datac => \y_present.t1~regout\,
	datad => \y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~20_combout\);

-- Location: LC_X15_Y8_N4
\timer_c|LED~21\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED~21_combout\ = (\timer_c|LED~19_combout\ & (\timer_c|LED~20_combout\ & ((!\timer_c|LessThan2~0_combout\) # (!\timer_c|timer3\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(25),
	datab => \timer_c|LED~19_combout\,
	datac => \timer_c|LED~20_combout\,
	datad => \timer_c|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LED~21_combout\);

-- Location: LC_X15_Y8_N2
\timer_c|LessThan2~5\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~5_combout\ = (\timer_c|timer3\(13)) # ((\timer_c|timer3\(14)) # ((\timer_c|timer3\(11) & \timer_c|timer3\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(11),
	datab => \timer_c|timer3\(13),
	datac => \timer_c|timer3\(12),
	datad => \timer_c|timer3\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~5_combout\);

-- Location: LC_X15_Y8_N0
\timer_c|LessThan2~6\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~6_combout\ = (\timer_c|timer3\(17)) # ((\timer_c|timer3\(15)) # ((\timer_c|timer3\(16)) # (\timer_c|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(17),
	datab => \timer_c|timer3\(15),
	datac => \timer_c|timer3\(16),
	datad => \timer_c|LessThan2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~6_combout\);

-- Location: LC_X11_Y8_N3
\timer_c|LessThan2~3\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~3_combout\ = (\timer_c|timer3\(1)) # ((\timer_c|timer3\(3)) # ((\timer_c|timer3\(2)) # (\timer_c|timer3\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(1),
	datab => \timer_c|timer3\(3),
	datac => \timer_c|timer3\(2),
	datad => \timer_c|timer3\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~3_combout\);

-- Location: LC_X15_Y8_N5
\timer_c|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~1_combout\ = (\timer_c|timer3\(10) & (\timer_c|timer3\(7) & (\timer_c|timer3\(8) & \timer_c|timer3\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(10),
	datab => \timer_c|timer3\(7),
	datac => \timer_c|timer3\(8),
	datad => \timer_c|timer3\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~1_combout\);

-- Location: LC_X15_Y8_N6
\timer_c|LessThan2~2\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~2_combout\ = (\timer_c|timer3\(12) & (((\timer_c|timer3\(18) & \timer_c|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(12),
	datac => \timer_c|timer3\(18),
	datad => \timer_c|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~2_combout\);

-- Location: LC_X15_Y8_N7
\timer_c|LessThan2~4\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~4_combout\ = (\timer_c|LessThan2~2_combout\ & ((\timer_c|timer3\(5)) # ((\timer_c|timer3\(6)) # (\timer_c|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(5),
	datab => \timer_c|timer3\(6),
	datac => \timer_c|LessThan2~3_combout\,
	datad => \timer_c|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~4_combout\);

-- Location: LC_X15_Y8_N8
\timer_c|LessThan2~7\ : maxv_lcell
-- Equation(s):
-- \timer_c|LessThan2~7_combout\ = (\timer_c|timer3\(19)) # ((\timer_c|LessThan2~4_combout\) # ((\timer_c|timer3\(18) & \timer_c|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_c|timer3\(18),
	datab => \timer_c|timer3\(19),
	datac => \timer_c|LessThan2~6_combout\,
	datad => \timer_c|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_c|LessThan2~7_combout\);

-- Location: LC_X15_Y8_N9
\timer_c|LED[2]\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED\(2) = DFFEAS((\timer_c|LED~22_combout\ & (\timer_c|LED~21_combout\ & ((!\timer_c|LessThan2~7_combout\) # (!\timer_c|LessThan2~8_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_c|LessThan2~8_combout\,
	datab => \timer_c|LED~22_combout\,
	datac => \timer_c|LED~21_combout\,
	datad => \timer_c|LessThan2~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|LED\(2));

-- Location: LC_X9_Y6_N7
\out_LED~2\ : maxv_lcell
-- Equation(s):
-- \out_LED~2_combout\ = (\timer_c|LED\(2) & (((\reset~combout\) # (\inp~combout\(0))) # (!\state_transition_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_transition_proc~0_combout\,
	datab => \reset~combout\,
	datac => \inp~combout\(0),
	datad => \timer_c|LED\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_LED~2_combout\);

-- Location: LC_X9_Y6_N3
\timer_c|LED[3]\ : maxv_lcell
-- Equation(s):
-- \timer_c|LED\(3) = DFFEAS((((!\y_present.rst~regout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \y_present.rst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_c|LED\(3));

-- Location: LC_X9_Y6_N9
\out_LED~3\ : maxv_lcell
-- Equation(s):
-- \out_LED~3_combout\ = (\timer_c|LED\(3) & ((\inp~combout\(0)) # ((\reset~combout\) # (!\state_transition_proc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datab => \reset~combout\,
	datac => \state_transition_proc~0_combout\,
	datad => \timer_c|LED\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_LED~3_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out_LED~0_combout\,
	oe => VCC,
	padio => ww_out_LED(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out_LED~1_combout\,
	oe => VCC,
	padio => ww_out_LED(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out_LED~2_combout\,
	oe => VCC,
	padio => ww_out_LED(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out_LED~3_combout\,
	oe => VCC,
	padio => ww_out_LED(3));
END structure;


