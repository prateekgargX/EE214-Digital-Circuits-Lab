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

-- DATE "10/13/2021 19:19:24"

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

ENTITY 	test IS
    PORT (
	clk_slow : IN std_logic;
	inp : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_en : BUFFER std_logic;
	lcd_rs : BUFFER std_logic;
	lcd1 : BUFFER std_logic_vector(7 DOWNTO 0);
	b11 : BUFFER std_logic;
	b12 : BUFFER std_logic;
	detect : BUFFER std_logic
	);
END test;

-- Design Ports Information


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_slow : std_logic;
SIGNAL ww_inp : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b11 : std_logic;
SIGNAL ww_b12 : std_logic;
SIGNAL ww_detect : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_161\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_162\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_163\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_164\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_165\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_166\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_167\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_168\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_169\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_170\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_171\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_172\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_173\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_174\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_175\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_176\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_177\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_178\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_179\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_180\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_181\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_182\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_183\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_184\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \lcd_clk~0_combout\ : std_logic;
SIGNAL \lcd_clk~regout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \lcd_instance|state.S8~regout\ : std_logic;
SIGNAL \lcd_instance|state.S9~regout\ : std_logic;
SIGNAL \lcd_instance|state~29_combout\ : std_logic;
SIGNAL \lcd_instance|state.S0~regout\ : std_logic;
SIGNAL \lcd_instance|state.S1~regout\ : std_logic;
SIGNAL \lcd_instance|state.S2~regout\ : std_logic;
SIGNAL \lcd_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_instance|state.S3~regout\ : std_logic;
SIGNAL \lcd_instance|state.S4~regout\ : std_logic;
SIGNAL \lcd_instance|state.S5~regout\ : std_logic;
SIGNAL \lcd_instance|state.S6~regout\ : std_logic;
SIGNAL \lcd_instance|state~28_combout\ : std_logic;
SIGNAL \lcd_instance|state.S7~regout\ : std_logic;
SIGNAL \lcd_instance|Selector10~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd[1]~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_en~regout\ : std_logic;
SIGNAL \lcd_instance|Selector8~1_combout\ : std_logic;
SIGNAL \lcd_instance|Selector8~0_combout\ : std_logic;
SIGNAL \lcd_instance|Selector8~2_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_rs~regout\ : std_logic;
SIGNAL \lcd_instance|lcd[7]~1\ : std_logic;
SIGNAL \lcd_instance|Selector5~0_combout\ : std_logic;
SIGNAL \lcd_instance|Selector7~1_combout\ : std_logic;
SIGNAL \lcd_instance|ack~regout\ : std_logic;
SIGNAL \i[0]~59\ : std_logic;
SIGNAL \i[1]~61\ : std_logic;
SIGNAL \i[1]~61COUT1_66\ : std_logic;
SIGNAL \i[2]~63\ : std_logic;
SIGNAL \i[2]~63COUT1_67\ : std_logic;
SIGNAL \i[3]~1\ : std_logic;
SIGNAL \i[3]~1COUT1_68\ : std_logic;
SIGNAL \i[4]~3\ : std_logic;
SIGNAL \i[4]~3COUT1_69\ : std_logic;
SIGNAL \i[5]~5\ : std_logic;
SIGNAL \i[6]~7\ : std_logic;
SIGNAL \i[6]~7COUT1_70\ : std_logic;
SIGNAL \i[7]~9\ : std_logic;
SIGNAL \i[7]~9COUT1_71\ : std_logic;
SIGNAL \i[8]~11\ : std_logic;
SIGNAL \i[8]~11COUT1_72\ : std_logic;
SIGNAL \i[9]~13\ : std_logic;
SIGNAL \i[9]~13COUT1_73\ : std_logic;
SIGNAL \i[10]~15\ : std_logic;
SIGNAL \i[11]~17\ : std_logic;
SIGNAL \i[11]~17COUT1_74\ : std_logic;
SIGNAL \i[12]~19\ : std_logic;
SIGNAL \i[12]~19COUT1_75\ : std_logic;
SIGNAL \i[13]~21\ : std_logic;
SIGNAL \i[13]~21COUT1_76\ : std_logic;
SIGNAL \i[14]~23\ : std_logic;
SIGNAL \i[14]~23COUT1_77\ : std_logic;
SIGNAL \i[15]~25\ : std_logic;
SIGNAL \i[16]~27\ : std_logic;
SIGNAL \i[16]~27COUT1_78\ : std_logic;
SIGNAL \i[17]~29\ : std_logic;
SIGNAL \i[17]~29COUT1_79\ : std_logic;
SIGNAL \i[18]~31\ : std_logic;
SIGNAL \i[18]~31COUT1_80\ : std_logic;
SIGNAL \i[19]~33\ : std_logic;
SIGNAL \i[19]~33COUT1_81\ : std_logic;
SIGNAL \i[20]~35\ : std_logic;
SIGNAL \i[21]~37\ : std_logic;
SIGNAL \i[21]~37COUT1_82\ : std_logic;
SIGNAL \i[22]~39\ : std_logic;
SIGNAL \i[22]~39COUT1_83\ : std_logic;
SIGNAL \i[23]~41\ : std_logic;
SIGNAL \i[23]~41COUT1_84\ : std_logic;
SIGNAL \i[24]~43\ : std_logic;
SIGNAL \i[24]~43COUT1_85\ : std_logic;
SIGNAL \i[25]~45\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \i[26]~47\ : std_logic;
SIGNAL \i[26]~47COUT1_86\ : std_logic;
SIGNAL \i[27]~49\ : std_logic;
SIGNAL \i[27]~49COUT1_87\ : std_logic;
SIGNAL \i[28]~51\ : std_logic;
SIGNAL \i[28]~51COUT1_88\ : std_logic;
SIGNAL \i[29]~55\ : std_logic;
SIGNAL \i[29]~55COUT1_89\ : std_logic;
SIGNAL \i[30]~57\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \write_data~4_combout\ : std_logic;
SIGNAL \write_column[0]~2_combout\ : std_logic;
SIGNAL \i~64_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal0~0_combout\ : std_logic;
SIGNAL \clk_slow~combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal0~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal6~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal2~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal5~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal3~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal4~4_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal1~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal2~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s1~regout\ : std_logic;
SIGNAL \krypton_det_instance|Equal3~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s2~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s3~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s4~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s5~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s6~regout\ : std_logic;
SIGNAL \krypton_det_instance|outp~combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.rst~regout\ : std_logic;
SIGNAL \krypton_det_instance|out_ascii[48]~0_combout\ : std_logic;
SIGNAL \write_data~11_combout\ : std_logic;
SIGNAL \write_data~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \write_data~10_combout\ : std_logic;
SIGNAL \write_data~52_combout\ : std_logic;
SIGNAL \write_data~5_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \write_data~6_combout\ : std_logic;
SIGNAL \write_data~7_combout\ : std_logic;
SIGNAL \write_data~8_combout\ : std_logic;
SIGNAL \write_data~13_combout\ : std_logic;
SIGNAL \write_column~0_combout\ : std_logic;
SIGNAL \write_column[0]~3_combout\ : std_logic;
SIGNAL \lcd_instance|Selector7~0\ : std_logic;
SIGNAL \write_column~4_combout\ : std_logic;
SIGNAL \write_column~6_combout\ : std_logic;
SIGNAL \write_column[0]~5_combout\ : std_logic;
SIGNAL \write_data~15_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \write_data~14_combout\ : std_logic;
SIGNAL \write_data~16_combout\ : std_logic;
SIGNAL \write_data~17_combout\ : std_logic;
SIGNAL \lcd_instance|Selector1~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd[1]~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \write_data~20_combout\ : std_logic;
SIGNAL \write_data~21_combout\ : std_logic;
SIGNAL \write_data~22_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \write_data~18_combout\ : std_logic;
SIGNAL \write_data~19_combout\ : std_logic;
SIGNAL \write_data~23_combout\ : std_logic;
SIGNAL \write_column~8_combout\ : std_logic;
SIGNAL \lcd_instance|Selector5~1\ : std_logic;
SIGNAL \lcd_instance|Selector5~2_combout\ : std_logic;
SIGNAL \lcd_instance|Selector4~1_combout\ : std_logic;
SIGNAL \write_data~26_combout\ : std_logic;
SIGNAL \write_data~25_combout\ : std_logic;
SIGNAL \write_data~27_combout\ : std_logic;
SIGNAL \write_data~28_combout\ : std_logic;
SIGNAL \lcd_instance|Selector4~0\ : std_logic;
SIGNAL \write_column~11_combout\ : std_logic;
SIGNAL \write_data~29_combout\ : std_logic;
SIGNAL \write_data~30_combout\ : std_logic;
SIGNAL \write_data~31_combout\ : std_logic;
SIGNAL \write_data~32_combout\ : std_logic;
SIGNAL \lcd_instance|Selector3~0_combout\ : std_logic;
SIGNAL \write_data~46_combout\ : std_logic;
SIGNAL \write_data~43_combout\ : std_logic;
SIGNAL \write_data~44_combout\ : std_logic;
SIGNAL \write_data~53_combout\ : std_logic;
SIGNAL \write_data~34_combout\ : std_logic;
SIGNAL \write_data~35_combout\ : std_logic;
SIGNAL \write_data~36_combout\ : std_logic;
SIGNAL \write_data~41_combout\ : std_logic;
SIGNAL \write_data~39_combout\ : std_logic;
SIGNAL \write_data~40_combout\ : std_logic;
SIGNAL \write_data~37_combout\ : std_logic;
SIGNAL \write_data~38_combout\ : std_logic;
SIGNAL \write_data~42_combout\ : std_logic;
SIGNAL \write_data~45_combout\ : std_logic;
SIGNAL \write_data~48_combout\ : std_logic;
SIGNAL \write_data~49_combout\ : std_logic;
SIGNAL \write_data~50_combout\ : std_logic;
SIGNAL \write_data~47_combout\ : std_logic;
SIGNAL \lcd_instance|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_instance|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inp~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lcd_instance|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_instance|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL write_column : std_logic_vector(3 DOWNTO 0);
SIGNAL div_clk : std_logic_vector(31 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \lcd_instance|ALT_INV_ack~regout\ : std_logic;

BEGIN

ww_clk_slow <= clk_slow;
ww_inp <= inp;
ww_clk <= clk;
ww_rst <= rst;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
lcd1 <= ww_lcd1;
b11 <= ww_b11;
b12 <= ww_b12;
detect <= ww_detect;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\lcd_instance|ALT_INV_ack~regout\ <= NOT \lcd_instance|ack~regout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X10_Y5_N6
\div_clk[7]\ : maxv_lcell
-- Equation(s):
-- div_clk(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(7));

-- Location: LC_X12_Y5_N4
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!div_clk(0)))
-- \Add0~2\ = CARRY(((div_clk(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X12_Y5_N1
\div_clk[0]\ : maxv_lcell
-- Equation(s):
-- div_clk(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(0));

-- Location: LC_X12_Y5_N5
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (div_clk(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY(((!\Add0~2\) # (!div_clk(1))))
-- \Add0~7COUT1_161\ = CARRY(((!\Add0~2\) # (!div_clk(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(1),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_161\);

-- Location: LC_X12_Y5_N2
\div_clk[1]\ : maxv_lcell
-- Equation(s):
-- div_clk(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(1));

-- Location: LC_X12_Y5_N6
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = div_clk(2) $ ((((!(!\Add0~2\ & \Add0~7\) # (\Add0~2\ & \Add0~7COUT1_161\)))))
-- \Add0~12\ = CARRY((div_clk(2) & ((!\Add0~7\))))
-- \Add0~12COUT1_162\ = CARRY((div_clk(2) & ((!\Add0~7COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => div_clk(2),
	cin => \Add0~2\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_162\);

-- Location: LC_X12_Y5_N3
\div_clk[2]\ : maxv_lcell
-- Equation(s):
-- div_clk(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(2));

-- Location: LC_X12_Y5_N7
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (div_clk(3) $ (((!\Add0~2\ & \Add0~12\) # (\Add0~2\ & \Add0~12COUT1_162\))))
-- \Add0~17\ = CARRY(((!\Add0~12\) # (!div_clk(3))))
-- \Add0~17COUT1_163\ = CARRY(((!\Add0~12COUT1_162\) # (!div_clk(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(3),
	cin => \Add0~2\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_163\);

-- Location: LC_X11_Y5_N2
\div_clk[3]\ : maxv_lcell
-- Equation(s):
-- div_clk(3) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(3));

-- Location: LC_X12_Y5_N8
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (div_clk(4) $ ((!(!\Add0~2\ & \Add0~17\) # (\Add0~2\ & \Add0~17COUT1_163\))))
-- \Add0~27\ = CARRY(((div_clk(4) & !\Add0~17\)))
-- \Add0~27COUT1_164\ = CARRY(((div_clk(4) & !\Add0~17COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(4),
	cin => \Add0~2\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_164\);

-- Location: LC_X12_Y5_N0
\div_clk[4]\ : maxv_lcell
-- Equation(s):
-- div_clk(4) = DFFEAS((((\Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(4));

-- Location: LC_X12_Y5_N9
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (div_clk(5) $ (((!\Add0~2\ & \Add0~27\) # (\Add0~2\ & \Add0~27COUT1_164\))))
-- \Add0~132\ = CARRY(((!\Add0~27COUT1_164\) # (!div_clk(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(5),
	cin => \Add0~2\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout => \Add0~132\);

-- Location: LC_X11_Y5_N4
\div_clk[5]\ : maxv_lcell
-- Equation(s):
-- div_clk(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(5));

-- Location: LC_X13_Y5_N0
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (div_clk(6) $ ((!\Add0~132\)))
-- \Add0~122\ = CARRY(((div_clk(6) & !\Add0~132\)))
-- \Add0~122COUT1_165\ = CARRY(((div_clk(6) & !\Add0~132\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(6),
	cin => \Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_165\);

-- Location: LC_X13_Y5_N1
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = (div_clk(7) $ (((!\Add0~132\ & \Add0~122\) # (\Add0~132\ & \Add0~122COUT1_165\))))
-- \Add0~137\ = CARRY(((!\Add0~122\) # (!div_clk(7))))
-- \Add0~137COUT1_166\ = CARRY(((!\Add0~122COUT1_165\) # (!div_clk(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(7),
	cin => \Add0~132\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_166\);

-- Location: LC_X16_Y5_N2
\div_clk[30]\ : maxv_lcell
-- Equation(s):
-- div_clk(30) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(30));

-- Location: LC_X13_Y5_N2
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = div_clk(8) $ ((((!(!\Add0~132\ & \Add0~137\) # (\Add0~132\ & \Add0~137COUT1_166\)))))
-- \Add0~127\ = CARRY((div_clk(8) & ((!\Add0~137\))))
-- \Add0~127COUT1_167\ = CARRY((div_clk(8) & ((!\Add0~137COUT1_166\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => div_clk(8),
	cin => \Add0~132\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_167\);

-- Location: LC_X13_Y5_N3
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = (div_clk(9) $ (((!\Add0~132\ & \Add0~127\) # (\Add0~132\ & \Add0~127COUT1_167\))))
-- \Add0~152\ = CARRY(((!\Add0~127\) # (!div_clk(9))))
-- \Add0~152COUT1_168\ = CARRY(((!\Add0~127COUT1_167\) # (!div_clk(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(9),
	cin => \Add0~132\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_168\);

-- Location: LC_X13_Y6_N5
\div_clk[9]\ : maxv_lcell
-- Equation(s):
-- div_clk(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~150_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(9));

-- Location: LC_X13_Y5_N4
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (div_clk(10) $ ((!(!\Add0~132\ & \Add0~152\) # (\Add0~132\ & \Add0~152COUT1_168\))))
-- \Add0~22\ = CARRY(((div_clk(10) & !\Add0~152COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(10),
	cin => \Add0~132\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout => \Add0~22\);

-- Location: LC_X14_Y4_N3
\div_clk[10]\ : maxv_lcell
-- Equation(s):
-- div_clk(10) = DFFEAS((\Add0~20_combout\ & (((!\Equal1~1_combout\) # (!\Equal0~7_combout\)) # (!\Equal1~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~0_combout\,
	datab => \Add0~20_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(10));

-- Location: LC_X13_Y5_N5
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = (div_clk(11) $ ((\Add0~22\)))
-- \Add0~142\ = CARRY(((!\Add0~22\) # (!div_clk(11))))
-- \Add0~142COUT1_169\ = CARRY(((!\Add0~22\) # (!div_clk(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(11),
	cin => \Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_169\);

-- Location: LC_X13_Y5_N6
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (div_clk(12) $ ((!(!\Add0~22\ & \Add0~142\) # (\Add0~22\ & \Add0~142COUT1_169\))))
-- \Add0~32\ = CARRY(((div_clk(12) & !\Add0~142\)))
-- \Add0~32COUT1_170\ = CARRY(((div_clk(12) & !\Add0~142COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(12),
	cin => \Add0~22\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_170\);

-- Location: LC_X11_Y5_N6
\div_clk[12]\ : maxv_lcell
-- Equation(s):
-- div_clk(12) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(12));

-- Location: LC_X13_Y5_N7
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (div_clk(13) $ (((!\Add0~22\ & \Add0~32\) # (\Add0~22\ & \Add0~32COUT1_170\))))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!div_clk(13))))
-- \Add0~37COUT1_171\ = CARRY(((!\Add0~32COUT1_170\) # (!div_clk(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(13),
	cin => \Add0~22\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_171\);

-- Location: LC_X11_Y5_N5
\div_clk[13]\ : maxv_lcell
-- Equation(s):
-- div_clk(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(13));

-- Location: LC_X13_Y5_N8
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (div_clk(14) $ ((!(!\Add0~22\ & \Add0~37\) # (\Add0~22\ & \Add0~37COUT1_171\))))
-- \Add0~47\ = CARRY(((div_clk(14) & !\Add0~37\)))
-- \Add0~47COUT1_172\ = CARRY(((div_clk(14) & !\Add0~37COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(14),
	cin => \Add0~22\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_172\);

-- Location: LC_X11_Y5_N9
\div_clk[14]\ : maxv_lcell
-- Equation(s):
-- div_clk(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(14));

-- Location: LC_X13_Y5_N9
\Add0~155\ : maxv_lcell
-- Equation(s):
-- \Add0~155_combout\ = (div_clk(15) $ (((!\Add0~22\ & \Add0~47\) # (\Add0~22\ & \Add0~47COUT1_172\))))
-- \Add0~157\ = CARRY(((!\Add0~47COUT1_172\) # (!div_clk(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(15),
	cin => \Add0~22\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\,
	cout => \Add0~157\);

-- Location: LC_X13_Y4_N5
\div_clk[15]\ : maxv_lcell
-- Equation(s):
-- div_clk(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~155_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(15));

-- Location: LC_X14_Y5_N0
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (div_clk(16) $ ((!\Add0~157\)))
-- \Add0~42\ = CARRY(((div_clk(16) & !\Add0~157\)))
-- \Add0~42COUT1_173\ = CARRY(((div_clk(16) & !\Add0~157\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(16),
	cin => \Add0~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_173\);

-- Location: LC_X14_Y4_N0
\div_clk[16]\ : maxv_lcell
-- Equation(s):
-- div_clk(16) = DFFEAS((\Add0~40_combout\ & (((!\Equal1~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal1~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~40_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(16));

-- Location: LC_X14_Y5_N1
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = (div_clk(17) $ (((!\Add0~157\ & \Add0~42\) # (\Add0~157\ & \Add0~42COUT1_173\))))
-- \Add0~147\ = CARRY(((!\Add0~42\) # (!div_clk(17))))
-- \Add0~147COUT1_174\ = CARRY(((!\Add0~42COUT1_173\) # (!div_clk(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(17),
	cin => \Add0~157\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_174\);

-- Location: LC_X14_Y4_N2
\div_clk[17]\ : maxv_lcell
-- Equation(s):
-- div_clk(17) = DFFEAS((\Add0~145_combout\ & (((!\Equal1~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal1~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~145_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(17));

-- Location: LC_X14_Y5_N2
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (div_clk(18) $ ((!(!\Add0~157\ & \Add0~147\) # (\Add0~157\ & \Add0~147COUT1_174\))))
-- \Add0~52\ = CARRY(((div_clk(18) & !\Add0~147\)))
-- \Add0~52COUT1_175\ = CARRY(((div_clk(18) & !\Add0~147COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(18),
	cin => \Add0~157\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_175\);

-- Location: LC_X15_Y5_N9
\div_clk[18]\ : maxv_lcell
-- Equation(s):
-- div_clk(18) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(18));

-- Location: LC_X14_Y5_N3
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (div_clk(19) $ (((!\Add0~157\ & \Add0~52\) # (\Add0~157\ & \Add0~52COUT1_175\))))
-- \Add0~57\ = CARRY(((!\Add0~52\) # (!div_clk(19))))
-- \Add0~57COUT1_176\ = CARRY(((!\Add0~52COUT1_175\) # (!div_clk(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(19),
	cin => \Add0~157\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_176\);

-- Location: LC_X15_Y4_N6
\div_clk[19]\ : maxv_lcell
-- Equation(s):
-- div_clk(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(19));

-- Location: LC_X14_Y5_N4
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = div_clk(20) $ ((((!(!\Add0~157\ & \Add0~57\) # (\Add0~157\ & \Add0~57COUT1_176\)))))
-- \Add0~62\ = CARRY((div_clk(20) & ((!\Add0~57COUT1_176\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => div_clk(20),
	cin => \Add0~157\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X15_Y5_N6
\div_clk[20]\ : maxv_lcell
-- Equation(s):
-- div_clk(20) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~60_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(20));

-- Location: LC_X14_Y5_N5
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (div_clk(21) $ ((\Add0~62\)))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!div_clk(21))))
-- \Add0~67COUT1_177\ = CARRY(((!\Add0~62\) # (!div_clk(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(21),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_177\);

-- Location: LC_X15_Y4_N4
\div_clk[21]\ : maxv_lcell
-- Equation(s):
-- div_clk(21) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(21));

-- Location: LC_X14_Y5_N6
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (div_clk(22) $ ((!(!\Add0~62\ & \Add0~67\) # (\Add0~62\ & \Add0~67COUT1_177\))))
-- \Add0~72\ = CARRY(((div_clk(22) & !\Add0~67\)))
-- \Add0~72COUT1_178\ = CARRY(((div_clk(22) & !\Add0~67COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(22),
	cin => \Add0~62\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_178\);

-- Location: LC_X16_Y5_N7
\div_clk[22]\ : maxv_lcell
-- Equation(s):
-- div_clk(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(22));

-- Location: LC_X14_Y5_N7
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (div_clk(23) $ (((!\Add0~62\ & \Add0~72\) # (\Add0~62\ & \Add0~72COUT1_178\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!div_clk(23))))
-- \Add0~77COUT1_179\ = CARRY(((!\Add0~72COUT1_178\) # (!div_clk(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(23),
	cin => \Add0~62\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_179\);

-- Location: LC_X16_Y5_N6
\div_clk[23]\ : maxv_lcell
-- Equation(s):
-- div_clk(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(23));

-- Location: LC_X14_Y5_N8
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (div_clk(24) $ ((!(!\Add0~62\ & \Add0~77\) # (\Add0~62\ & \Add0~77COUT1_179\))))
-- \Add0~82\ = CARRY(((div_clk(24) & !\Add0~77\)))
-- \Add0~82COUT1_180\ = CARRY(((div_clk(24) & !\Add0~77COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(24),
	cin => \Add0~62\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_180\);

-- Location: LC_X15_Y4_N8
\div_clk[24]\ : maxv_lcell
-- Equation(s):
-- div_clk(24) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~80_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(24));

-- Location: LC_X14_Y5_N9
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = div_clk(25) $ (((((!\Add0~62\ & \Add0~82\) # (\Add0~62\ & \Add0~82COUT1_180\)))))
-- \Add0~87\ = CARRY(((!\Add0~82COUT1_180\)) # (!div_clk(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => div_clk(25),
	cin => \Add0~62\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout => \Add0~87\);

-- Location: LC_X15_Y5_N7
\div_clk[25]\ : maxv_lcell
-- Equation(s):
-- div_clk(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(25));

-- Location: LC_X15_Y5_N0
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (div_clk(26) $ ((!\Add0~87\)))
-- \Add0~92\ = CARRY(((div_clk(26) & !\Add0~87\)))
-- \Add0~92COUT1_181\ = CARRY(((div_clk(26) & !\Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(26),
	cin => \Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_181\);

-- Location: LC_X16_Y5_N8
\div_clk[26]\ : maxv_lcell
-- Equation(s):
-- div_clk(26) = DFFEAS((((\Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(26));

-- Location: LC_X15_Y5_N1
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (div_clk(27) $ (((!\Add0~87\ & \Add0~92\) # (\Add0~87\ & \Add0~92COUT1_181\))))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!div_clk(27))))
-- \Add0~97COUT1_182\ = CARRY(((!\Add0~92COUT1_181\) # (!div_clk(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(27),
	cin => \Add0~87\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_182\);

-- Location: LC_X16_Y5_N5
\div_clk[27]\ : maxv_lcell
-- Equation(s):
-- div_clk(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(27));

-- Location: LC_X15_Y5_N2
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (div_clk(28) $ ((!(!\Add0~87\ & \Add0~97\) # (\Add0~87\ & \Add0~97COUT1_182\))))
-- \Add0~102\ = CARRY(((div_clk(28) & !\Add0~97\)))
-- \Add0~102COUT1_183\ = CARRY(((div_clk(28) & !\Add0~97COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(28),
	cin => \Add0~87\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_183\);

-- Location: LC_X16_Y5_N9
\div_clk[28]\ : maxv_lcell
-- Equation(s):
-- div_clk(28) = DFFEAS((((\Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(28));

-- Location: LC_X15_Y5_N3
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (div_clk(29) $ (((!\Add0~87\ & \Add0~102\) # (\Add0~87\ & \Add0~102COUT1_183\))))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!div_clk(29))))
-- \Add0~107COUT1_184\ = CARRY(((!\Add0~102COUT1_183\) # (!div_clk(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(29),
	cin => \Add0~87\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_184\);

-- Location: LC_X16_Y5_N4
\div_clk[29]\ : maxv_lcell
-- Equation(s):
-- div_clk(29) = DFFEAS((((\Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(29));

-- Location: LC_X15_Y5_N4
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = (div_clk(30) $ ((!(!\Add0~87\ & \Add0~107\) # (\Add0~87\ & \Add0~107COUT1_184\))))
-- \Add0~112\ = CARRY(((div_clk(30) & !\Add0~107COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => div_clk(30),
	cin => \Add0~87\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X15_Y4_N5
\div_clk[31]\ : maxv_lcell
-- Equation(s):
-- div_clk(31) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(31));

-- Location: LC_X15_Y5_N5
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = ((\Add0~112\ $ (div_clk(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => div_clk(31),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\);

-- Location: LC_X15_Y5_N8
\Equal0~6\ : maxv_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~110_combout\ & (!\Add0~100_combout\ & (!\Add0~115_combout\ & !\Add0~105_combout\)))

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
	dataa => \Add0~110_combout\,
	datab => \Add0~100_combout\,
	datac => \Add0~115_combout\,
	datad => \Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X14_Y4_N5
\Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~90_combout\ & (!\Add0~80_combout\ & (!\Add0~85_combout\ & !\Add0~95_combout\)))

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
	dataa => \Add0~90_combout\,
	datab => \Add0~80_combout\,
	datac => \Add0~85_combout\,
	datad => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X13_Y4_N4
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~5_combout\ & (!\Add0~0_combout\ & (!\Add0~15_combout\ & !\Add0~10_combout\)))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~15_combout\,
	datad => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X13_Y4_N0
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~25_combout\ & (!\Add0~30_combout\ & (\Add0~20_combout\ & !\Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X13_Y4_N7
\Equal0~2\ : maxv_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~50_combout\ & (!\Add0~55_combout\ & (\Add0~40_combout\ & !\Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~55_combout\,
	datac => \Add0~40_combout\,
	datad => \Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X13_Y4_N1
\Equal0~3\ : maxv_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~75_combout\ & (!\Add0~70_combout\ & (!\Add0~65_combout\ & !\Add0~60_combout\)))

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
	dataa => \Add0~75_combout\,
	datab => \Add0~70_combout\,
	datac => \Add0~65_combout\,
	datad => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X13_Y4_N2
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

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
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X14_Y4_N7
\Equal0~7\ : maxv_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (((\Equal0~5_combout\ & \Equal0~4_combout\))))

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
	dataa => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X14_Y4_N6
\div_clk[11]\ : maxv_lcell
-- Equation(s):
-- div_clk(11) = DFFEAS((\Add0~140_combout\ & (((!\Equal1~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal1~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~140_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(11));

-- Location: LC_X13_Y4_N6
\Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (\Add0~140_combout\ & (!\Add0~155_combout\ & (!\Add0~150_combout\ & \Add0~145_combout\)))

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
	dataa => \Add0~140_combout\,
	datab => \Add0~155_combout\,
	datac => \Add0~150_combout\,
	datad => \Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: LC_X14_Y4_N1
\div_clk[8]\ : maxv_lcell
-- Equation(s):
-- div_clk(8) = DFFEAS((\Add0~125_combout\ & (((!\Equal1~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal1~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~125_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(8));

-- Location: LC_X13_Y4_N8
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (\Add0~120_combout\ & (!\Add0~135_combout\ & (\Add0~125_combout\ & !\Add0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Add0~135_combout\,
	datac => \Add0~125_combout\,
	datad => \Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X14_Y4_N4
\div_clk[6]\ : maxv_lcell
-- Equation(s):
-- div_clk(6) = DFFEAS((\Add0~120_combout\ & (((!\Equal1~1_combout\) # (!\Equal0~7_combout\)) # (!\Equal1~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~0_combout\,
	datab => \Add0~120_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_clk(6));

-- Location: LC_X13_Y4_N9
\Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~120_combout\ & (\Add0~135_combout\ & (!\Add0~125_combout\ & \Add0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Add0~135_combout\,
	datac => \Add0~125_combout\,
	datad => \Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8_combout\);

-- Location: LC_X13_Y4_N3
\Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Add0~150_combout\ & (\Add0~155_combout\ & (!\Add0~140_combout\ & !\Add0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~150_combout\,
	datab => \Add0~155_combout\,
	datac => \Add0~140_combout\,
	datad => \Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X14_Y4_N8
\lcd_clk~0\ : maxv_lcell
-- Equation(s):
-- \lcd_clk~0_combout\ = (\lcd_clk~regout\ & (((!\Equal0~7_combout\) # (!\Equal1~1_combout\)) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \lcd_clk~regout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_clk~0_combout\);

-- Location: LC_X14_Y4_N9
lcd_clk : maxv_lcell
-- Equation(s):
-- \lcd_clk~regout\ = DFFEAS((\lcd_clk~0_combout\) # ((\Equal0~8_combout\ & (\Equal0~9_combout\ & \Equal0~7_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~8_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \lcd_clk~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_clk~regout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X8_Y5_N1
\lcd_instance|state.S8\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S8~regout\ = DFFEAS((((\lcd_instance|state.S7~regout\ & !\rst~combout\))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => \lcd_instance|state.S7~regout\,
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S8~regout\);

-- Location: LC_X9_Y5_N4
\lcd_instance|state.S9\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S9~regout\ = DFFEAS((((\lcd_instance|state.S8~regout\ & !\rst~combout\))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => \lcd_instance|state.S8~regout\,
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S9~regout\);

-- Location: LC_X10_Y6_N4
\lcd_instance|state~29\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state~29_combout\ = (((\rst~combout\) # (\lcd_instance|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \lcd_instance|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|state~29_combout\);

-- Location: LC_X10_Y6_N3
\lcd_instance|state.S0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S0~regout\ = DFFEAS((((!\lcd_instance|state~29_combout\))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => \lcd_instance|state~29_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S0~regout\);

-- Location: LC_X9_Y5_N7
\lcd_instance|state.S1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S1~regout\ = DFFEAS(((\lcd_instance|LessThan0~0_combout\ & (!\lcd_instance|state.S0~regout\ & !\rst~combout\))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datab => \lcd_instance|LessThan0~0_combout\,
	datac => \lcd_instance|state.S0~regout\,
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S1~regout\);

-- Location: LC_X10_Y6_N9
\lcd_instance|state.S2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S2~regout\ = DFFEAS((\lcd_instance|state.S1~regout\ & (((!\rst~combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|state.S1~regout\,
	datac => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S2~regout\);

-- Location: LC_X10_Y6_N8
\lcd_instance|count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count_cmd\(0) = DFFEAS(\lcd_instance|count_cmd\(0) $ ((((\lcd_instance|state.S2~regout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|count_cmd\(0),
	datad => \lcd_instance|state.S2~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count_cmd\(0));

-- Location: LC_X10_Y6_N5
\lcd_instance|count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count_cmd\(1) = DFFEAS(((\lcd_instance|count_cmd\(1) $ (\lcd_instance|count_cmd\(0)))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~29_combout\, , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => \lcd_instance|count_cmd\(1),
	datad => \lcd_instance|count_cmd\(0),
	aclr => GND,
	sclr => \rst~combout\,
	ena => \lcd_instance|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count_cmd\(1));

-- Location: LC_X10_Y6_N1
\lcd_instance|count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count_cmd\(2) = DFFEAS((\lcd_instance|count_cmd\(2) $ (((\lcd_instance|count_cmd\(0) & \lcd_instance|count_cmd\(1))))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~29_combout\, , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|count_cmd\(0),
	datac => \lcd_instance|count_cmd\(1),
	datad => \lcd_instance|count_cmd\(2),
	aclr => GND,
	sclr => \rst~combout\,
	ena => \lcd_instance|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count_cmd\(2));

-- Location: LC_X10_Y6_N6
\lcd_instance|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan0~0_combout\ = (((!\lcd_instance|count_cmd\(1) & !\lcd_instance|count_cmd\(0))) # (!\lcd_instance|count_cmd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|count_cmd\(2),
	datac => \lcd_instance|count_cmd\(1),
	datad => \lcd_instance|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan0~0_combout\);

-- Location: LC_X9_Y5_N6
\lcd_instance|state.S3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S3~regout\ = DFFEAS((!\rst~combout\ & ((\lcd_instance|state.S9~regout\) # ((!\lcd_instance|LessThan0~0_combout\ & !\lcd_instance|state.S0~regout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ab",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|state.S9~regout\,
	datab => \lcd_instance|LessThan0~0_combout\,
	datac => \lcd_instance|state.S0~regout\,
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S3~regout\);

-- Location: LC_X8_Y5_N3
\lcd_instance|state.S4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S4~regout\ = DFFEAS((\lcd_instance|state.S3~regout\ & (((!\rst~combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|state.S3~regout\,
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S4~regout\);

-- Location: LC_X8_Y5_N9
\lcd_instance|state.S5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S5~regout\ = DFFEAS((!\rst~combout\ & (((\lcd_instance|state.S4~regout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \rst~combout\,
	datad => \lcd_instance|state.S4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S5~regout\);

-- Location: LC_X8_Y5_N7
\lcd_instance|state.S6\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state.S6~regout\ = DFFEAS((!\rst~combout\ & (((\lcd_instance|state.S5~regout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \rst~combout\,
	datad => \lcd_instance|state.S5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state.S6~regout\);

-- Location: LC_X8_Y5_N0
\lcd_instance|state~28\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state~28_combout\ = (((\lcd_instance|state.S6~regout\ & !\rst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_instance|state.S6~regout\,
	datad => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|state~28_combout\);

-- Location: LC_X8_Y5_N4
\lcd_instance|state.S7\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd[7]~1\ = ((\lcd_instance|state.S6~regout\) # ((C1_state.S7) # (\lcd_instance|state.S8~regout\)))
-- \lcd_instance|state.S7~regout\ = DFFEAS(\lcd_instance|lcd[7]~1\, GLOBAL(\lcd_clk~regout\), VCC, , , \lcd_instance|state~28_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datab => \lcd_instance|state.S6~regout\,
	datac => \lcd_instance|state~28_combout\,
	datad => \lcd_instance|state.S8~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd[7]~1\,
	regout => \lcd_instance|state.S7~regout\);

-- Location: LC_X8_Y5_N8
\lcd_instance|Selector10~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector10~0_combout\ = (((\lcd_instance|state.S7~regout\) # (\lcd_instance|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_instance|state.S7~regout\,
	datad => \lcd_instance|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector10~0_combout\);

-- Location: LC_X9_Y5_N0
\lcd_instance|lcd[1]~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd[1]~0_combout\ = ((!\lcd_instance|state.S9~regout\ & ((\lcd_instance|state.S0~regout\) # (\lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|state.S0~regout\,
	datac => \lcd_instance|state.S9~regout\,
	datad => \lcd_instance|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd[1]~0_combout\);

-- Location: LC_X9_Y5_N3
\lcd_instance|lcd_en\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_en~regout\ = DFFEAS((\lcd_instance|Selector10~0_combout\) # ((\lcd_instance|state.S1~regout\) # ((!\lcd_instance|lcd[1]~0_combout\ & \lcd_instance|lcd_en~regout\))), GLOBAL(\lcd_clk~regout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|Selector10~0_combout\,
	datab => \lcd_instance|state.S1~regout\,
	datac => \lcd_instance|lcd[1]~0_combout\,
	datad => \lcd_instance|lcd_en~regout\,
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_en~regout\);

-- Location: LC_X9_Y5_N1
\lcd_instance|Selector8~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector8~1_combout\ = (((!\lcd_instance|state.S1~regout\ & !\lcd_instance|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_instance|state.S1~regout\,
	datad => \lcd_instance|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector8~1_combout\);

-- Location: LC_X8_Y5_N5
\lcd_instance|Selector8~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector8~0_combout\ = ((!\lcd_instance|state.S5~regout\ & (!\lcd_instance|state.S3~regout\ & !\lcd_instance|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|state.S5~regout\,
	datac => \lcd_instance|state.S3~regout\,
	datad => \lcd_instance|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector8~0_combout\);

-- Location: LC_X9_Y5_N9
\lcd_instance|Selector8~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector8~2_combout\ = (\lcd_instance|Selector8~1_combout\ & (\lcd_instance|Selector8~0_combout\ & ((\lcd_instance|lcd_rs~regout\) # (!\lcd_instance|state.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state.S9~regout\,
	datab => \lcd_instance|Selector8~1_combout\,
	datac => \lcd_instance|lcd_rs~regout\,
	datad => \lcd_instance|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector8~2_combout\);

-- Location: LC_X9_Y5_N5
\lcd_instance|lcd_rs\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_rs~regout\ = DFFEAS((\lcd_instance|Selector8~2_combout\ & ((\lcd_instance|state.S0~regout\) # ((\lcd_instance|lcd_rs~regout\ & !\lcd_instance|LessThan0~0_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|lcd_rs~regout\,
	datab => \lcd_instance|Selector8~2_combout\,
	datac => \lcd_instance|state.S0~regout\,
	datad => \lcd_instance|LessThan0~0_combout\,
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_rs~regout\);

-- Location: LC_X10_Y6_N0
\lcd_instance|Selector5~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector5~0_combout\ = (\lcd_instance|state.S1~regout\) # ((\lcd_instance|state.S2~regout\) # ((\lcd_instance|LessThan0~0_combout\ & !\lcd_instance|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state.S1~regout\,
	datab => \lcd_instance|state.S2~regout\,
	datac => \lcd_instance|LessThan0~0_combout\,
	datad => \lcd_instance|state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector5~0_combout\);

-- Location: LC_X10_Y6_N2
\lcd_instance|Selector7~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector7~1_combout\ = (!\lcd_instance|count_cmd\(1) & (((\lcd_instance|Selector5~0_combout\ & \lcd_instance|count_cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|count_cmd\(1),
	datac => \lcd_instance|Selector5~0_combout\,
	datad => \lcd_instance|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector7~1_combout\);

-- Location: LC_X9_Y5_N8
\lcd_instance|ack\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|ack~regout\ = DFFEAS((\lcd_instance|state.S8~regout\) # ((!\lcd_instance|state.S0~regout\ & (C1_ack & !\lcd_instance|LessThan0~0_combout\))), GLOBAL(\lcd_clk~regout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|state.S8~regout\,
	datab => \lcd_instance|state.S0~regout\,
	datad => \lcd_instance|LessThan0~0_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|ack~regout\);

-- Location: LC_X2_Y7_N4
\i[0]\ : maxv_lcell
-- Equation(s):
-- i(0) = DFFEAS((!i(0)), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[0]~59\ = CARRY((i(0)))

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
	clk => \lcd_clk~regout\,
	dataa => i(0),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0),
	cout => \i[0]~59\);

-- Location: LC_X2_Y7_N5
\i[1]\ : maxv_lcell
-- Equation(s):
-- i(1) = DFFEAS(i(1) $ ((((\i[0]~59\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[1]~61\ = CARRY(((!\i[0]~59\)) # (!i(1)))
-- \i[1]~61COUT1_66\ = CARRY(((!\i[0]~59\)) # (!i(1)))

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
	clk => \lcd_clk~regout\,
	dataa => i(1),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[0]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(1),
	cout0 => \i[1]~61\,
	cout1 => \i[1]~61COUT1_66\);

-- Location: LC_X2_Y7_N6
\i[2]\ : maxv_lcell
-- Equation(s):
-- i(2) = DFFEAS(i(2) $ ((((!(!\i[0]~59\ & \i[1]~61\) # (\i[0]~59\ & \i[1]~61COUT1_66\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[2]~63\ = CARRY((i(2) & ((!\i[1]~61\))))
-- \i[2]~63COUT1_67\ = CARRY((i(2) & ((!\i[1]~61COUT1_66\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(2),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[0]~59\,
	cin0 => \i[1]~61\,
	cin1 => \i[1]~61COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(2),
	cout0 => \i[2]~63\,
	cout1 => \i[2]~63COUT1_67\);

-- Location: LC_X2_Y7_N7
\i[3]\ : maxv_lcell
-- Equation(s):
-- i(3) = DFFEAS((i(3) $ (((!\i[0]~59\ & \i[2]~63\) # (\i[0]~59\ & \i[2]~63COUT1_67\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[3]~1\ = CARRY(((!\i[2]~63\) # (!i(3))))
-- \i[3]~1COUT1_68\ = CARRY(((!\i[2]~63COUT1_67\) # (!i(3))))

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
	clk => \lcd_clk~regout\,
	datab => i(3),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[0]~59\,
	cin0 => \i[2]~63\,
	cin1 => \i[2]~63COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3),
	cout0 => \i[3]~1\,
	cout1 => \i[3]~1COUT1_68\);

-- Location: LC_X2_Y7_N8
\i[4]\ : maxv_lcell
-- Equation(s):
-- i(4) = DFFEAS(i(4) $ ((((!(!\i[0]~59\ & \i[3]~1\) # (\i[0]~59\ & \i[3]~1COUT1_68\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[4]~3\ = CARRY((i(4) & ((!\i[3]~1\))))
-- \i[4]~3COUT1_69\ = CARRY((i(4) & ((!\i[3]~1COUT1_68\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(4),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[0]~59\,
	cin0 => \i[3]~1\,
	cin1 => \i[3]~1COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(4),
	cout0 => \i[4]~3\,
	cout1 => \i[4]~3COUT1_69\);

-- Location: LC_X2_Y7_N9
\i[5]\ : maxv_lcell
-- Equation(s):
-- i(5) = DFFEAS((i(5) $ (((!\i[0]~59\ & \i[4]~3\) # (\i[0]~59\ & \i[4]~3COUT1_69\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[5]~5\ = CARRY(((!\i[4]~3COUT1_69\) # (!i(5))))

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
	clk => \lcd_clk~regout\,
	datab => i(5),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[0]~59\,
	cin0 => \i[4]~3\,
	cin1 => \i[4]~3COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(5),
	cout => \i[5]~5\);

-- Location: LC_X3_Y7_N0
\i[6]\ : maxv_lcell
-- Equation(s):
-- i(6) = DFFEAS((i(6) $ ((!\i[5]~5\))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[6]~7\ = CARRY(((i(6) & !\i[5]~5\)))
-- \i[6]~7COUT1_70\ = CARRY(((i(6) & !\i[5]~5\)))

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
	clk => \lcd_clk~regout\,
	datab => i(6),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[5]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(6),
	cout0 => \i[6]~7\,
	cout1 => \i[6]~7COUT1_70\);

-- Location: LC_X3_Y7_N1
\i[7]\ : maxv_lcell
-- Equation(s):
-- i(7) = DFFEAS((i(7) $ (((!\i[5]~5\ & \i[6]~7\) # (\i[5]~5\ & \i[6]~7COUT1_70\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[7]~9\ = CARRY(((!\i[6]~7\) # (!i(7))))
-- \i[7]~9COUT1_71\ = CARRY(((!\i[6]~7COUT1_70\) # (!i(7))))

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
	clk => \lcd_clk~regout\,
	datab => i(7),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[5]~5\,
	cin0 => \i[6]~7\,
	cin1 => \i[6]~7COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(7),
	cout0 => \i[7]~9\,
	cout1 => \i[7]~9COUT1_71\);

-- Location: LC_X3_Y7_N2
\i[8]\ : maxv_lcell
-- Equation(s):
-- i(8) = DFFEAS((i(8) $ ((!(!\i[5]~5\ & \i[7]~9\) # (\i[5]~5\ & \i[7]~9COUT1_71\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[8]~11\ = CARRY(((i(8) & !\i[7]~9\)))
-- \i[8]~11COUT1_72\ = CARRY(((i(8) & !\i[7]~9COUT1_71\)))

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
	clk => \lcd_clk~regout\,
	datab => i(8),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[5]~5\,
	cin0 => \i[7]~9\,
	cin1 => \i[7]~9COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(8),
	cout0 => \i[8]~11\,
	cout1 => \i[8]~11COUT1_72\);

-- Location: LC_X3_Y7_N3
\i[9]\ : maxv_lcell
-- Equation(s):
-- i(9) = DFFEAS(i(9) $ (((((!\i[5]~5\ & \i[8]~11\) # (\i[5]~5\ & \i[8]~11COUT1_72\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[9]~13\ = CARRY(((!\i[8]~11\)) # (!i(9)))
-- \i[9]~13COUT1_73\ = CARRY(((!\i[8]~11COUT1_72\)) # (!i(9)))

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
	clk => \lcd_clk~regout\,
	dataa => i(9),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[5]~5\,
	cin0 => \i[8]~11\,
	cin1 => \i[8]~11COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(9),
	cout0 => \i[9]~13\,
	cout1 => \i[9]~13COUT1_73\);

-- Location: LC_X3_Y7_N4
\i[10]\ : maxv_lcell
-- Equation(s):
-- i(10) = DFFEAS(i(10) $ ((((!(!\i[5]~5\ & \i[9]~13\) # (\i[5]~5\ & \i[9]~13COUT1_73\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[10]~15\ = CARRY((i(10) & ((!\i[9]~13COUT1_73\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(10),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[5]~5\,
	cin0 => \i[9]~13\,
	cin1 => \i[9]~13COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(10),
	cout => \i[10]~15\);

-- Location: LC_X3_Y7_N5
\i[11]\ : maxv_lcell
-- Equation(s):
-- i(11) = DFFEAS(i(11) $ ((((\i[10]~15\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[11]~17\ = CARRY(((!\i[10]~15\)) # (!i(11)))
-- \i[11]~17COUT1_74\ = CARRY(((!\i[10]~15\)) # (!i(11)))

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
	clk => \lcd_clk~regout\,
	dataa => i(11),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[10]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(11),
	cout0 => \i[11]~17\,
	cout1 => \i[11]~17COUT1_74\);

-- Location: LC_X3_Y7_N6
\i[12]\ : maxv_lcell
-- Equation(s):
-- i(12) = DFFEAS(i(12) $ ((((!(!\i[10]~15\ & \i[11]~17\) # (\i[10]~15\ & \i[11]~17COUT1_74\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[12]~19\ = CARRY((i(12) & ((!\i[11]~17\))))
-- \i[12]~19COUT1_75\ = CARRY((i(12) & ((!\i[11]~17COUT1_74\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(12),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[10]~15\,
	cin0 => \i[11]~17\,
	cin1 => \i[11]~17COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(12),
	cout0 => \i[12]~19\,
	cout1 => \i[12]~19COUT1_75\);

-- Location: LC_X3_Y7_N7
\i[13]\ : maxv_lcell
-- Equation(s):
-- i(13) = DFFEAS((i(13) $ (((!\i[10]~15\ & \i[12]~19\) # (\i[10]~15\ & \i[12]~19COUT1_75\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[13]~21\ = CARRY(((!\i[12]~19\) # (!i(13))))
-- \i[13]~21COUT1_76\ = CARRY(((!\i[12]~19COUT1_75\) # (!i(13))))

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
	clk => \lcd_clk~regout\,
	datab => i(13),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[10]~15\,
	cin0 => \i[12]~19\,
	cin1 => \i[12]~19COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(13),
	cout0 => \i[13]~21\,
	cout1 => \i[13]~21COUT1_76\);

-- Location: LC_X3_Y7_N8
\i[14]\ : maxv_lcell
-- Equation(s):
-- i(14) = DFFEAS(i(14) $ ((((!(!\i[10]~15\ & \i[13]~21\) # (\i[10]~15\ & \i[13]~21COUT1_76\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[14]~23\ = CARRY((i(14) & ((!\i[13]~21\))))
-- \i[14]~23COUT1_77\ = CARRY((i(14) & ((!\i[13]~21COUT1_76\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(14),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[10]~15\,
	cin0 => \i[13]~21\,
	cin1 => \i[13]~21COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(14),
	cout0 => \i[14]~23\,
	cout1 => \i[14]~23COUT1_77\);

-- Location: LC_X3_Y7_N9
\i[15]\ : maxv_lcell
-- Equation(s):
-- i(15) = DFFEAS((i(15) $ (((!\i[10]~15\ & \i[14]~23\) # (\i[10]~15\ & \i[14]~23COUT1_77\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[15]~25\ = CARRY(((!\i[14]~23COUT1_77\) # (!i(15))))

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
	clk => \lcd_clk~regout\,
	datab => i(15),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[10]~15\,
	cin0 => \i[14]~23\,
	cin1 => \i[14]~23COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(15),
	cout => \i[15]~25\);

-- Location: LC_X4_Y7_N0
\i[16]\ : maxv_lcell
-- Equation(s):
-- i(16) = DFFEAS((i(16) $ ((!\i[15]~25\))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[16]~27\ = CARRY(((i(16) & !\i[15]~25\)))
-- \i[16]~27COUT1_78\ = CARRY(((i(16) & !\i[15]~25\)))

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
	clk => \lcd_clk~regout\,
	datab => i(16),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[15]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(16),
	cout0 => \i[16]~27\,
	cout1 => \i[16]~27COUT1_78\);

-- Location: LC_X4_Y7_N1
\i[17]\ : maxv_lcell
-- Equation(s):
-- i(17) = DFFEAS((i(17) $ (((!\i[15]~25\ & \i[16]~27\) # (\i[15]~25\ & \i[16]~27COUT1_78\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[17]~29\ = CARRY(((!\i[16]~27\) # (!i(17))))
-- \i[17]~29COUT1_79\ = CARRY(((!\i[16]~27COUT1_78\) # (!i(17))))

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
	clk => \lcd_clk~regout\,
	datab => i(17),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[15]~25\,
	cin0 => \i[16]~27\,
	cin1 => \i[16]~27COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(17),
	cout0 => \i[17]~29\,
	cout1 => \i[17]~29COUT1_79\);

-- Location: LC_X4_Y7_N2
\i[18]\ : maxv_lcell
-- Equation(s):
-- i(18) = DFFEAS((i(18) $ ((!(!\i[15]~25\ & \i[17]~29\) # (\i[15]~25\ & \i[17]~29COUT1_79\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[18]~31\ = CARRY(((i(18) & !\i[17]~29\)))
-- \i[18]~31COUT1_80\ = CARRY(((i(18) & !\i[17]~29COUT1_79\)))

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
	clk => \lcd_clk~regout\,
	datab => i(18),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[15]~25\,
	cin0 => \i[17]~29\,
	cin1 => \i[17]~29COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(18),
	cout0 => \i[18]~31\,
	cout1 => \i[18]~31COUT1_80\);

-- Location: LC_X4_Y7_N3
\i[19]\ : maxv_lcell
-- Equation(s):
-- i(19) = DFFEAS(i(19) $ (((((!\i[15]~25\ & \i[18]~31\) # (\i[15]~25\ & \i[18]~31COUT1_80\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[19]~33\ = CARRY(((!\i[18]~31\)) # (!i(19)))
-- \i[19]~33COUT1_81\ = CARRY(((!\i[18]~31COUT1_80\)) # (!i(19)))

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
	clk => \lcd_clk~regout\,
	dataa => i(19),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[15]~25\,
	cin0 => \i[18]~31\,
	cin1 => \i[18]~31COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(19),
	cout0 => \i[19]~33\,
	cout1 => \i[19]~33COUT1_81\);

-- Location: LC_X4_Y7_N4
\i[20]\ : maxv_lcell
-- Equation(s):
-- i(20) = DFFEAS(i(20) $ ((((!(!\i[15]~25\ & \i[19]~33\) # (\i[15]~25\ & \i[19]~33COUT1_81\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[20]~35\ = CARRY((i(20) & ((!\i[19]~33COUT1_81\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(20),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[15]~25\,
	cin0 => \i[19]~33\,
	cin1 => \i[19]~33COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(20),
	cout => \i[20]~35\);

-- Location: LC_X4_Y7_N5
\i[21]\ : maxv_lcell
-- Equation(s):
-- i(21) = DFFEAS(i(21) $ ((((\i[20]~35\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[21]~37\ = CARRY(((!\i[20]~35\)) # (!i(21)))
-- \i[21]~37COUT1_82\ = CARRY(((!\i[20]~35\)) # (!i(21)))

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
	clk => \lcd_clk~regout\,
	dataa => i(21),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[20]~35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(21),
	cout0 => \i[21]~37\,
	cout1 => \i[21]~37COUT1_82\);

-- Location: LC_X4_Y7_N6
\i[22]\ : maxv_lcell
-- Equation(s):
-- i(22) = DFFEAS(i(22) $ ((((!(!\i[20]~35\ & \i[21]~37\) # (\i[20]~35\ & \i[21]~37COUT1_82\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[22]~39\ = CARRY((i(22) & ((!\i[21]~37\))))
-- \i[22]~39COUT1_83\ = CARRY((i(22) & ((!\i[21]~37COUT1_82\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(22),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[20]~35\,
	cin0 => \i[21]~37\,
	cin1 => \i[21]~37COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(22),
	cout0 => \i[22]~39\,
	cout1 => \i[22]~39COUT1_83\);

-- Location: LC_X4_Y7_N7
\i[23]\ : maxv_lcell
-- Equation(s):
-- i(23) = DFFEAS((i(23) $ (((!\i[20]~35\ & \i[22]~39\) # (\i[20]~35\ & \i[22]~39COUT1_83\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[23]~41\ = CARRY(((!\i[22]~39\) # (!i(23))))
-- \i[23]~41COUT1_84\ = CARRY(((!\i[22]~39COUT1_83\) # (!i(23))))

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
	clk => \lcd_clk~regout\,
	datab => i(23),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[20]~35\,
	cin0 => \i[22]~39\,
	cin1 => \i[22]~39COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(23),
	cout0 => \i[23]~41\,
	cout1 => \i[23]~41COUT1_84\);

-- Location: LC_X4_Y7_N8
\i[24]\ : maxv_lcell
-- Equation(s):
-- i(24) = DFFEAS(i(24) $ ((((!(!\i[20]~35\ & \i[23]~41\) # (\i[20]~35\ & \i[23]~41COUT1_84\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[24]~43\ = CARRY((i(24) & ((!\i[23]~41\))))
-- \i[24]~43COUT1_85\ = CARRY((i(24) & ((!\i[23]~41COUT1_84\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(24),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[20]~35\,
	cin0 => \i[23]~41\,
	cin1 => \i[23]~41COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(24),
	cout0 => \i[24]~43\,
	cout1 => \i[24]~43COUT1_85\);

-- Location: LC_X4_Y7_N9
\i[25]\ : maxv_lcell
-- Equation(s):
-- i(25) = DFFEAS((i(25) $ (((!\i[20]~35\ & \i[24]~43\) # (\i[20]~35\ & \i[24]~43COUT1_85\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[25]~45\ = CARRY(((!\i[24]~43COUT1_85\) # (!i(25))))

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
	clk => \lcd_clk~regout\,
	datab => i(25),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[20]~35\,
	cin0 => \i[24]~43\,
	cin1 => \i[24]~43COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(25),
	cout => \i[25]~45\);

-- Location: LC_X5_Y7_N0
\i[26]\ : maxv_lcell
-- Equation(s):
-- i(26) = DFFEAS((i(26) $ ((!\i[25]~45\))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[26]~47\ = CARRY(((i(26) & !\i[25]~45\)))
-- \i[26]~47COUT1_86\ = CARRY(((i(26) & !\i[25]~45\)))

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
	clk => \lcd_clk~regout\,
	datab => i(26),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[25]~45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(26),
	cout0 => \i[26]~47\,
	cout1 => \i[26]~47COUT1_86\);

-- Location: LC_X5_Y7_N8
\Equal2~6\ : maxv_lcell
-- Equation(s):
-- \Equal2~6_combout\ = (!i(25) & (!i(23) & (!i(26) & !i(24))))

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
	dataa => i(25),
	datab => i(23),
	datac => i(26),
	datad => i(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~6_combout\);

-- Location: LC_X5_Y7_N1
\i[27]\ : maxv_lcell
-- Equation(s):
-- i(27) = DFFEAS((i(27) $ (((!\i[25]~45\ & \i[26]~47\) # (\i[25]~45\ & \i[26]~47COUT1_86\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[27]~49\ = CARRY(((!\i[26]~47\) # (!i(27))))
-- \i[27]~49COUT1_87\ = CARRY(((!\i[26]~47COUT1_86\) # (!i(27))))

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
	clk => \lcd_clk~regout\,
	datab => i(27),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[25]~45\,
	cin0 => \i[26]~47\,
	cin1 => \i[26]~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(27),
	cout0 => \i[27]~49\,
	cout1 => \i[27]~49COUT1_87\);

-- Location: LC_X5_Y7_N2
\i[28]\ : maxv_lcell
-- Equation(s):
-- i(28) = DFFEAS((i(28) $ ((!(!\i[25]~45\ & \i[27]~49\) # (\i[25]~45\ & \i[27]~49COUT1_87\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[28]~51\ = CARRY(((i(28) & !\i[27]~49\)))
-- \i[28]~51COUT1_88\ = CARRY(((i(28) & !\i[27]~49COUT1_87\)))

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
	clk => \lcd_clk~regout\,
	datab => i(28),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[25]~45\,
	cin0 => \i[27]~49\,
	cin1 => \i[27]~49COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(28),
	cout0 => \i[28]~51\,
	cout1 => \i[28]~51COUT1_88\);

-- Location: LC_X5_Y7_N3
\i[29]\ : maxv_lcell
-- Equation(s):
-- i(29) = DFFEAS(i(29) $ (((((!\i[25]~45\ & \i[28]~51\) # (\i[25]~45\ & \i[28]~51COUT1_88\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[29]~55\ = CARRY(((!\i[28]~51\)) # (!i(29)))
-- \i[29]~55COUT1_89\ = CARRY(((!\i[28]~51COUT1_88\)) # (!i(29)))

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
	clk => \lcd_clk~regout\,
	dataa => i(29),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[25]~45\,
	cin0 => \i[28]~51\,
	cin1 => \i[28]~51COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(29),
	cout0 => \i[29]~55\,
	cout1 => \i[29]~55COUT1_89\);

-- Location: LC_X5_Y7_N4
\i[30]\ : maxv_lcell
-- Equation(s):
-- i(30) = DFFEAS(i(30) $ ((((!(!\i[25]~45\ & \i[29]~55\) # (\i[25]~45\ & \i[29]~55COUT1_89\))))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )
-- \i[30]~57\ = CARRY((i(30) & ((!\i[29]~55COUT1_89\))))

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
	clk => \lcd_clk~regout\,
	dataa => i(30),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[25]~45\,
	cin0 => \i[29]~55\,
	cin1 => \i[29]~55COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(30),
	cout => \i[30]~57\);

-- Location: LC_X5_Y7_N5
\i[31]\ : maxv_lcell
-- Equation(s):
-- i(31) = DFFEAS(i(31) $ ((((\i[30]~57\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~2_combout\, , , \i~64_combout\, )

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
	clk => \lcd_clk~regout\,
	dataa => i(31),
	aclr => GND,
	sclr => \i~64_combout\,
	ena => \write_column[0]~2_combout\,
	cin => \i[30]~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(31));

-- Location: LC_X5_Y7_N9
\Equal2~7\ : maxv_lcell
-- Equation(s):
-- \Equal2~7_combout\ = ((!i(27) & ((!i(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => i(27),
	datad => i(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~7_combout\);

-- Location: LC_X5_Y7_N7
\Equal2~8\ : maxv_lcell
-- Equation(s):
-- \Equal2~8_combout\ = (!i(29) & (!i(30) & (!i(31) & \Equal2~7_combout\)))

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
	dataa => i(29),
	datab => i(30),
	datac => i(31),
	datad => \Equal2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~8_combout\);

-- Location: LC_X5_Y7_N6
\Equal2~5\ : maxv_lcell
-- Equation(s):
-- \Equal2~5_combout\ = (!i(21) & (!i(19) & (!i(22) & !i(20))))

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
	dataa => i(21),
	datab => i(19),
	datac => i(22),
	datad => i(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~5_combout\);

-- Location: LC_X6_Y7_N8
\Equal2~2\ : maxv_lcell
-- Equation(s):
-- \Equal2~2_combout\ = (!i(11) & (!i(13) & (!i(14) & !i(12))))

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
	dataa => i(11),
	datab => i(13),
	datac => i(14),
	datad => i(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~2_combout\);

-- Location: LC_X6_Y7_N9
\Equal2~3\ : maxv_lcell
-- Equation(s):
-- \Equal2~3_combout\ = (!i(15) & (!i(17) & (!i(16) & !i(18))))

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
	dataa => i(15),
	datab => i(17),
	datac => i(16),
	datad => i(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~3_combout\);

-- Location: LC_X6_Y7_N6
\Equal2~1\ : maxv_lcell
-- Equation(s):
-- \Equal2~1_combout\ = (!i(8) & (!i(10) & (!i(7) & !i(9))))

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
	dataa => i(8),
	datab => i(10),
	datac => i(7),
	datad => i(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~1_combout\);

-- Location: LC_X6_Y7_N0
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (!i(6) & (!i(5) & (!i(4) & !i(3))))

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
	dataa => i(6),
	datab => i(5),
	datac => i(4),
	datad => i(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X6_Y7_N1
\Equal2~4\ : maxv_lcell
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~3_combout\ & (\Equal2~1_combout\ & \Equal2~0_combout\)))

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
	dataa => \Equal2~2_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~4_combout\);

-- Location: LC_X6_Y7_N2
\Equal2~9\ : maxv_lcell
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~6_combout\ & (\Equal2~8_combout\ & (\Equal2~5_combout\ & \Equal2~4_combout\)))

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
	dataa => \Equal2~6_combout\,
	datab => \Equal2~8_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~9_combout\);

-- Location: LC_X6_Y7_N7
\Equal8~0\ : maxv_lcell
-- Equation(s):
-- \Equal8~0_combout\ = ((i(0)) # ((!\Equal2~9_combout\) # (!i(2)))) # (!i(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(0),
	datac => i(2),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal8~0_combout\);

-- Location: LC_X7_Y7_N6
\write_data~4\ : maxv_lcell
-- Equation(s):
-- \write_data~4_combout\ = ((i(2) & ((i(1)))) # (!i(2) & (!i(0) & !i(1)))) # (!\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a1ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~4_combout\);

-- Location: LC_X7_Y7_N1
\write_column[0]~2\ : maxv_lcell
-- Equation(s):
-- \write_column[0]~2_combout\ = (\lcd_instance|ack~regout\ & (((\Equal2~10_combout\) # (!\write_data~4_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|ack~regout\,
	datab => \Equal8~0_combout\,
	datac => \write_data~4_combout\,
	datad => \Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column[0]~2_combout\);

-- Location: LC_X7_Y7_N5
\i~64\ : maxv_lcell
-- Equation(s):
-- \i~64_combout\ = (((i(2) & i(1))) # (!\Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i~64_combout\);

-- Location: LC_X7_Y7_N8
\Equal2~10\ : maxv_lcell
-- Equation(s):
-- \Equal2~10_combout\ = (!i(2) & (!i(0) & (!i(1) & \Equal2~9_combout\)))

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
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~10_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(2),
	combout => \inp~combout\(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(0),
	combout => \inp~combout\(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
\inp[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(3),
	combout => \inp~combout\(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(4),
	combout => \inp~combout\(4));

-- Location: LC_X5_Y5_N2
\krypton_det_instance|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal0~0_combout\ = (\inp~combout\(1) & (\inp~combout\(3) & (!\inp~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(1),
	datab => \inp~combout\(3),
	datac => \inp~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal0~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_slow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_slow,
	combout => \clk_slow~combout\);

-- Location: LC_X7_Y5_N2
\krypton_det_instance|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal0~1_combout\ = (((\inp~combout\(0)) # (!\krypton_det_instance|Equal0~0_combout\)) # (!\inp~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(2),
	datac => \krypton_det_instance|Equal0~0_combout\,
	datad => \inp~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal0~1_combout\);

-- Location: LC_X6_Y6_N7
\krypton_det_instance|Equal6~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal6~0_combout\ = (((!\inp~combout\(0)) # (!\krypton_det_instance|Equal0~0_combout\))) # (!\inp~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(2),
	datac => \krypton_det_instance|Equal0~0_combout\,
	datad => \inp~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal6~0_combout\);

-- Location: LC_X5_Y6_N7
\krypton_det_instance|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal2~0_combout\ = ((!\inp~combout\(3) & (\inp~combout\(4) & !\inp~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(3),
	datac => \inp~combout\(4),
	datad => \inp~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal2~0_combout\);

-- Location: LC_X5_Y6_N2
\krypton_det_instance|Equal5~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal5~0_combout\ = (\krypton_det_instance|Equal2~0_combout\ & (\inp~combout\(2) & (!\inp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal2~0_combout\,
	datab => \inp~combout\(2),
	datac => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal5~0_combout\);

-- Location: LC_X5_Y6_N8
\krypton_det_instance|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal3~0_combout\ = (!\inp~combout\(1) & (((!\inp~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(1),
	datac => \inp~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal3~0_combout\);

-- Location: LC_X5_Y6_N3
\krypton_det_instance|Equal4~4\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal4~4_combout\ = (\inp~combout\(4) & (!\inp~combout\(3) & (!\inp~combout\(0) & \krypton_det_instance|Equal3~0_combout\)))

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
	dataa => \inp~combout\(4),
	datab => \inp~combout\(3),
	datac => \inp~combout\(0),
	datad => \krypton_det_instance|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal4~4_combout\);

-- Location: LC_X7_Y5_N1
\krypton_det_instance|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal1~0_combout\ = ((\inp~combout\(2)) # ((!\inp~combout\(0)) # (!\krypton_det_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(2),
	datac => \krypton_det_instance|Equal0~0_combout\,
	datad => \inp~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal1~0_combout\);

-- Location: LC_X5_Y6_N0
\krypton_det_instance|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal2~1_combout\ = (\krypton_det_instance|Equal2~0_combout\ & (!\inp~combout\(2) & (\inp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal2~0_combout\,
	datab => \inp~combout\(2),
	datac => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal2~1_combout\);

-- Location: LC_X6_Y6_N6
\krypton_det_instance|y_present.s1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s1~regout\ = DFFEAS((\krypton_det_instance|y_present.s1~regout\ & (((!\krypton_det_instance|y_present.rst~regout\ & !\krypton_det_instance|Equal1~0_combout\)) # (!\krypton_det_instance|Equal2~1_combout\))) # 
-- (!\krypton_det_instance|y_present.s1~regout\ & (!\krypton_det_instance|y_present.rst~regout\ & (!\krypton_det_instance|Equal1~0_combout\))), GLOBAL(\clk_slow~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ab",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|y_present.s1~regout\,
	datab => \krypton_det_instance|y_present.rst~regout\,
	datac => \krypton_det_instance|Equal1~0_combout\,
	datad => \krypton_det_instance|Equal2~1_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s1~regout\);

-- Location: LC_X5_Y6_N9
\krypton_det_instance|Equal3~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal3~1_combout\ = (\inp~combout\(4) & (\inp~combout\(3) & (\inp~combout\(0) & \krypton_det_instance|Equal3~0_combout\)))

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
	dataa => \inp~combout\(4),
	datab => \inp~combout\(3),
	datac => \inp~combout\(0),
	datad => \krypton_det_instance|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal3~1_combout\);

-- Location: LC_X5_Y6_N1
\krypton_det_instance|y_present.s2\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s2~regout\ = DFFEAS((\krypton_det_instance|y_present.s1~regout\ & ((\krypton_det_instance|Equal2~1_combout\) # ((\krypton_det_instance|y_present.s2~regout\ & !\krypton_det_instance|Equal3~1_combout\)))) # 
-- (!\krypton_det_instance|y_present.s1~regout\ & (\krypton_det_instance|y_present.s2~regout\ & ((!\krypton_det_instance|Equal3~1_combout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|y_present.s1~regout\,
	datab => \krypton_det_instance|y_present.s2~regout\,
	datac => \krypton_det_instance|Equal2~1_combout\,
	datad => \krypton_det_instance|Equal3~1_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s2~regout\);

-- Location: LC_X5_Y6_N5
\krypton_det_instance|y_present.s3\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s3~regout\ = DFFEAS((\krypton_det_instance|Equal4~4_combout\ & (\krypton_det_instance|y_present.s2~regout\ & ((\krypton_det_instance|Equal3~1_combout\)))) # (!\krypton_det_instance|Equal4~4_combout\ & 
-- ((\krypton_det_instance|y_present.s3~regout\) # ((\krypton_det_instance|y_present.s2~regout\ & \krypton_det_instance|Equal3~1_combout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|Equal4~4_combout\,
	datab => \krypton_det_instance|y_present.s2~regout\,
	datac => \krypton_det_instance|y_present.s3~regout\,
	datad => \krypton_det_instance|Equal3~1_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s3~regout\);

-- Location: LC_X5_Y8_N4
\krypton_det_instance|y_present.s4\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s4~regout\ = DFFEAS((\krypton_det_instance|y_present.s4~regout\ & (((\krypton_det_instance|Equal4~4_combout\ & \krypton_det_instance|y_present.s3~regout\)) # (!\krypton_det_instance|Equal5~0_combout\))) # 
-- (!\krypton_det_instance|y_present.s4~regout\ & (\krypton_det_instance|Equal4~4_combout\ & ((\krypton_det_instance|y_present.s3~regout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|y_present.s4~regout\,
	datab => \krypton_det_instance|Equal4~4_combout\,
	datac => \krypton_det_instance|Equal5~0_combout\,
	datad => \krypton_det_instance|y_present.s3~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s4~regout\);

-- Location: LC_X6_Y8_N6
\krypton_det_instance|y_present.s5\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s5~regout\ = DFFEAS((\krypton_det_instance|y_present.s5~regout\ & ((\krypton_det_instance|Equal6~0_combout\) # ((\krypton_det_instance|Equal5~0_combout\ & \krypton_det_instance|y_present.s4~regout\)))) # 
-- (!\krypton_det_instance|y_present.s5~regout\ & (\krypton_det_instance|Equal5~0_combout\ & ((\krypton_det_instance|y_present.s4~regout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|y_present.s5~regout\,
	datab => \krypton_det_instance|Equal5~0_combout\,
	datac => \krypton_det_instance|Equal6~0_combout\,
	datad => \krypton_det_instance|y_present.s4~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s5~regout\);

-- Location: LC_X6_Y6_N8
\krypton_det_instance|y_present.s6\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s6~regout\ = DFFEAS((\krypton_det_instance|y_present.s6~regout\ & ((\krypton_det_instance|Equal0~1_combout\) # ((!\krypton_det_instance|Equal6~0_combout\ & \krypton_det_instance|y_present.s5~regout\)))) # 
-- (!\krypton_det_instance|y_present.s6~regout\ & (((!\krypton_det_instance|Equal6~0_combout\ & \krypton_det_instance|y_present.s5~regout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|y_present.s6~regout\,
	datab => \krypton_det_instance|Equal0~1_combout\,
	datac => \krypton_det_instance|Equal6~0_combout\,
	datad => \krypton_det_instance|y_present.s5~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s6~regout\);

-- Location: LC_X6_Y6_N9
\krypton_det_instance|outp\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|outp~combout\ = (\inp~combout\(2) & (!\inp~combout\(0) & (\krypton_det_instance|Equal0~0_combout\ & \krypton_det_instance|y_present.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(2),
	datab => \inp~combout\(0),
	datac => \krypton_det_instance|Equal0~0_combout\,
	datad => \krypton_det_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|outp~combout\);

-- Location: LC_X6_Y6_N1
\krypton_det_instance|y_present.rst\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.rst~regout\ = DFFEAS(((!\rst~combout\ & (\krypton_det_instance|out_ascii[48]~0_combout\ & !\krypton_det_instance|outp~combout\))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	datab => \rst~combout\,
	datac => \krypton_det_instance|out_ascii[48]~0_combout\,
	datad => \krypton_det_instance|outp~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.rst~regout\);

-- Location: LC_X6_Y6_N0
\krypton_det_instance|out_ascii[48]~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|out_ascii[48]~0_combout\ = (\krypton_det_instance|y_present.rst~regout\) # ((!\inp~combout\(2) & (\inp~combout\(0) & \krypton_det_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(2),
	datab => \inp~combout\(0),
	datac => \krypton_det_instance|Equal0~0_combout\,
	datad => \krypton_det_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|out_ascii[48]~0_combout\);

-- Location: LC_X8_Y7_N4
\write_data~11\ : maxv_lcell
-- Equation(s):
-- \write_data~11_combout\ = (((\Equal2~10_combout\ & \krypton_det_instance|out_ascii[48]~0_combout\)))

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
	datac => \Equal2~10_combout\,
	datad => \krypton_det_instance|out_ascii[48]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~11_combout\);

-- Location: LC_X6_Y6_N3
\write_data~9\ : maxv_lcell
-- Equation(s):
-- \write_data~9_combout\ = (((!\krypton_det_instance|y_present.s1~regout\ & \krypton_det_instance|y_present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \krypton_det_instance|y_present.s1~regout\,
	datad => \krypton_det_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~9_combout\);

-- Location: LC_X6_Y7_N3
\Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Equal4~0_combout\ = (i(1) & (!i(0) & (!i(2) & \Equal2~9_combout\)))

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
	dataa => i(1),
	datab => i(0),
	datac => i(2),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~0_combout\);

-- Location: LC_X6_Y6_N2
\write_data~10\ : maxv_lcell
-- Equation(s):
-- \write_data~10_combout\ = (\Equal4~0_combout\ & ((\krypton_det_instance|y_present.s2~regout\ & ((\krypton_det_instance|Equal3~1_combout\))) # (!\krypton_det_instance|y_present.s2~regout\ & (\write_data~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~9_combout\,
	datab => \krypton_det_instance|y_present.s2~regout\,
	datac => \krypton_det_instance|Equal3~1_combout\,
	datad => \Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~10_combout\);

-- Location: LC_X7_Y7_N7
\write_data~52\ : maxv_lcell
-- Equation(s):
-- \write_data~52_combout\ = (\write_data~10_combout\ & ((i(2)) # ((i(1)) # (!\Equal2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => \Equal2~9_combout\,
	datac => \write_data~10_combout\,
	datad => i(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~52_combout\);

-- Location: LC_X7_Y7_N0
\write_data~5\ : maxv_lcell
-- Equation(s):
-- \write_data~5_combout\ = (i(2) $ (((!i(0) & !i(1))))) # (!\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a9ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~5_combout\);

-- Location: LC_X6_Y8_N4
\Equal7~0\ : maxv_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (i(0) & (!i(1) & (i(2) & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(1),
	datac => i(2),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0_combout\);

-- Location: LC_X6_Y8_N5
\write_data~6\ : maxv_lcell
-- Equation(s):
-- \write_data~6_combout\ = (\Equal7~0_combout\ & ((\krypton_det_instance|y_present.s6~regout\) # ((\krypton_det_instance|y_present.s5~regout\ & !\krypton_det_instance|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s5~regout\,
	datab => \krypton_det_instance|Equal6~0_combout\,
	datac => \krypton_det_instance|y_present.s6~regout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~6_combout\);

-- Location: LC_X7_Y7_N2
\write_data~7\ : maxv_lcell
-- Equation(s):
-- \write_data~7_combout\ = (write_data(0) & (\Equal8~0_combout\ & (!\rst~combout\ & !\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => write_data(0),
	datab => \Equal8~0_combout\,
	datac => \rst~combout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~7_combout\);

-- Location: LC_X7_Y7_N3
\write_data~8\ : maxv_lcell
-- Equation(s):
-- \write_data~8_combout\ = (!\Equal2~10_combout\ & (\write_data~5_combout\ & ((\write_data~6_combout\) # (\write_data~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \write_data~5_combout\,
	datac => \write_data~6_combout\,
	datad => \write_data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~8_combout\);

-- Location: LC_X7_Y5_N5
\write_data~13\ : maxv_lcell
-- Equation(s):
-- \write_data~13_combout\ = ((\rst~combout\) # ((\lcd_instance|ack~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \lcd_instance|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~13_combout\);

-- Location: LC_X7_Y7_N4
\write_data[0]\ : maxv_lcell
-- Equation(s):
-- write_data(0) = DFFEAS((\lcd_instance|ack~regout\ & ((\write_data~11_combout\) # ((\write_data~52_combout\) # (\write_data~8_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_data~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|ack~regout\,
	datab => \write_data~11_combout\,
	datac => \write_data~52_combout\,
	datad => \write_data~8_combout\,
	aclr => GND,
	ena => \write_data~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(0));

-- Location: LC_X8_Y6_N5
\lcd_instance|data_dis[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|data_dis\(0) = DFFEAS(GND, GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~28_combout\, write_data(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => write_data(0),
	aclr => GND,
	sload => VCC,
	ena => \lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|data_dis\(0));

-- Location: LC_X8_Y7_N3
\write_column~0\ : maxv_lcell
-- Equation(s):
-- \write_column~0_combout\ = (i(0) & (\Equal2~9_combout\ & ((!i(1)) # (!i(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column~0_combout\);

-- Location: LC_X8_Y7_N8
\write_column[0]~3\ : maxv_lcell
-- Equation(s):
-- \write_column[0]~3_combout\ = ((\rst~combout\) # ((\write_column[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \write_column[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column[0]~3_combout\);

-- Location: LC_X8_Y7_N5
\write_column[0]\ : maxv_lcell
-- Equation(s):
-- write_column(0) = DFFEAS(((\lcd_instance|ack~regout\ & (!\Equal2~10_combout\ & \write_column~0_combout\))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datab => \lcd_instance|ack~regout\,
	datac => \Equal2~10_combout\,
	datad => \write_column~0_combout\,
	aclr => GND,
	ena => \write_column[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(0));

-- Location: LC_X9_Y6_N1
\lcd_instance|cmd_position[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector7~0\ = (\lcd_instance|Selector8~0_combout\ & (\lcd_instance|lcd\(0) & ((!\lcd_instance|lcd[1]~0_combout\)))) # (!\lcd_instance|Selector8~0_combout\ & ((C1_cmd_position[0]) # ((\lcd_instance|lcd\(0) & 
-- !\lcd_instance|lcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|Selector8~0_combout\,
	datab => \lcd_instance|lcd\(0),
	datac => write_column(0),
	datad => \lcd_instance|lcd[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector7~0\,
	regout => \lcd_instance|cmd_position\(0));

-- Location: LC_X8_Y6_N9
\lcd_instance|lcd[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(0) = DFFEAS((\lcd_instance|Selector7~1_combout\) # ((\lcd_instance|Selector7~0\) # ((\lcd_instance|lcd[7]~1\ & \lcd_instance|data_dis\(0)))), GLOBAL(\lcd_clk~regout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|lcd[7]~1\,
	datab => \lcd_instance|Selector7~1_combout\,
	datac => \lcd_instance|data_dis\(0),
	datad => \lcd_instance|Selector7~0\,
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(0));

-- Location: LC_X6_Y7_N4
\write_column~4\ : maxv_lcell
-- Equation(s):
-- \write_column~4_combout\ = (i(2)) # ((i(1)) # ((!\Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column~4_combout\);

-- Location: LC_X8_Y7_N6
\write_column~6\ : maxv_lcell
-- Equation(s):
-- \write_column~6_combout\ = (i(2) $ (((!i(1)) # (!i(0))))) # (!\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "95ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column~6_combout\);

-- Location: LC_X7_Y8_N0
\write_column[0]~5\ : maxv_lcell
-- Equation(s):
-- \write_column[0]~5_combout\ = (((i(1)) # (!\Equal2~9_combout\)) # (!i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column[0]~5_combout\);

-- Location: LC_X8_Y7_N9
\write_column[1]\ : maxv_lcell
-- Equation(s):
-- write_column(1) = DFFEAS((\lcd_instance|ack~regout\ & (((!\write_column~6_combout\ & !\write_column[0]~5_combout\)) # (!\write_column~4_combout\))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "444c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \write_column~4_combout\,
	datab => \lcd_instance|ack~regout\,
	datac => \write_column~6_combout\,
	datad => \write_column[0]~5_combout\,
	aclr => GND,
	ena => \write_column[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(1));

-- Location: LC_X9_Y7_N3
\lcd_instance|cmd_position[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|cmd_position\(1) = DFFEAS(GND, GLOBAL(\lcd_clk~regout\), VCC, , , write_column(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => write_column(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|cmd_position\(1));

-- Location: LC_X6_Y5_N8
\write_data~15\ : maxv_lcell
-- Equation(s):
-- \write_data~15_combout\ = (((write_data(1)) # (\rst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => write_data(1),
	datad => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~15_combout\);

-- Location: LC_X7_Y7_N9
\Equal3~0\ : maxv_lcell
-- Equation(s):
-- \Equal3~0_combout\ = (!i(2) & (i(0) & (!i(1) & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~0_combout\);

-- Location: LC_X6_Y5_N0
\write_data~14\ : maxv_lcell
-- Equation(s):
-- \write_data~14_combout\ = (\Equal3~0_combout\ & ((\krypton_det_instance|y_present.s1~regout\ & (\krypton_det_instance|Equal2~1_combout\)) # (!\krypton_det_instance|y_present.s1~regout\ & ((\krypton_det_instance|y_present.rst~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal2~1_combout\,
	datab => \krypton_det_instance|y_present.rst~regout\,
	datac => \krypton_det_instance|y_present.s1~regout\,
	datad => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~14_combout\);

-- Location: LC_X6_Y5_N5
\write_data~16\ : maxv_lcell
-- Equation(s):
-- \write_data~16_combout\ = (!\Equal7~0_combout\ & ((\Equal8~0_combout\ & (\write_data~15_combout\)) # (!\Equal8~0_combout\ & ((\krypton_det_instance|outp~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~15_combout\,
	datab => \Equal8~0_combout\,
	datac => \krypton_det_instance|outp~combout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~16_combout\);

-- Location: LC_X6_Y5_N6
\write_data~17\ : maxv_lcell
-- Equation(s):
-- \write_data~17_combout\ = (\write_data~14_combout\) # ((\write_data~5_combout\ & ((\write_data~6_combout\) # (\write_data~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~5_combout\,
	datab => \write_data~14_combout\,
	datac => \write_data~6_combout\,
	datad => \write_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~17_combout\);

-- Location: LC_X6_Y5_N7
\write_data[1]\ : maxv_lcell
-- Equation(s):
-- write_data(1) = DFFEAS((\Equal2~10_combout\ & (\krypton_det_instance|out_ascii[48]~0_combout\)) # (!\Equal2~10_combout\ & (((\write_data~17_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , \write_data~15_combout\, , , !\lcd_instance|ack~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \krypton_det_instance|out_ascii[48]~0_combout\,
	datab => \Equal2~10_combout\,
	datac => \write_data~15_combout\,
	datad => \write_data~17_combout\,
	aclr => GND,
	sload => \lcd_instance|ALT_INV_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(1));

-- Location: LC_X7_Y5_N4
\lcd_instance|data_dis[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|data_dis\(1) = DFFEAS(GND, GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~28_combout\, write_data(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => write_data(1),
	aclr => GND,
	sload => VCC,
	ena => \lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|data_dis\(1));

-- Location: LC_X10_Y6_N7
\lcd_instance|Selector1~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector1~0_combout\ = (\lcd_instance|state.S0~regout\ & (((!\lcd_instance|state.S1~regout\ & !\lcd_instance|state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state.S0~regout\,
	datac => \lcd_instance|state.S1~regout\,
	datad => \lcd_instance|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector1~0_combout\);

-- Location: LC_X9_Y5_N2
\lcd_instance|lcd[1]~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd[1]~2_combout\ = (!\rst~combout\ & (!\lcd_instance|state.S9~regout\ & ((\lcd_instance|state.S0~regout\) # (\lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \lcd_instance|state.S0~regout\,
	datac => \lcd_instance|state.S9~regout\,
	datad => \lcd_instance|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd[1]~2_combout\);

-- Location: LC_X9_Y6_N2
\lcd_instance|lcd[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(1) = DFFEAS((\lcd_instance|Selector8~0_combout\ & (((\lcd_instance|data_dis\(1) & \lcd_instance|Selector1~0_combout\)))) # (!\lcd_instance|Selector8~0_combout\ & (\lcd_instance|cmd_position\(1))), GLOBAL(\lcd_clk~regout\), VCC, , 
-- \lcd_instance|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|Selector8~0_combout\,
	datab => \lcd_instance|cmd_position\(1),
	datac => \lcd_instance|data_dis\(1),
	datad => \lcd_instance|Selector1~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(1));

-- Location: LC_X6_Y8_N3
\Equal6~0\ : maxv_lcell
-- Equation(s):
-- \Equal6~0_combout\ = (!i(0) & (!i(1) & (i(2) & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(1),
	datac => i(2),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~0_combout\);

-- Location: LC_X6_Y8_N7
\write_data~20\ : maxv_lcell
-- Equation(s):
-- \write_data~20_combout\ = (((!\krypton_det_instance|y_present.s5~regout\ & !\krypton_det_instance|y_present.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \krypton_det_instance|y_present.s5~regout\,
	datad => \krypton_det_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~20_combout\);

-- Location: LC_X6_Y8_N8
\write_data~21\ : maxv_lcell
-- Equation(s):
-- \write_data~21_combout\ = (\Equal6~0_combout\ & (((\krypton_det_instance|Equal5~0_combout\ & \krypton_det_instance|y_present.s4~regout\)) # (!\write_data~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal5~0_combout\,
	datab => \krypton_det_instance|y_present.s4~regout\,
	datac => \write_data~20_combout\,
	datad => \Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~21_combout\);

-- Location: LC_X6_Y8_N9
\write_data~22\ : maxv_lcell
-- Equation(s):
-- \write_data~22_combout\ = ((!\write_data~21_combout\ & ((\Equal6~0_combout\) # (!\write_data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datac => \write_data~6_combout\,
	datad => \write_data~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~22_combout\);

-- Location: LC_X6_Y7_N5
\Equal5~0\ : maxv_lcell
-- Equation(s):
-- \Equal5~0_combout\ = (i(1) & (i(0) & (!i(2) & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(0),
	datac => i(2),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X7_Y8_N1
\write_data~18\ : maxv_lcell
-- Equation(s):
-- \write_data~18_combout\ = (!\Equal5~0_combout\ & (\lcd_instance|ack~regout\ & (!\Equal4~0_combout\ & \write_column~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \lcd_instance|ack~regout\,
	datac => \Equal4~0_combout\,
	datad => \write_column~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~18_combout\);

-- Location: LC_X8_Y8_N4
\write_data~19\ : maxv_lcell
-- Equation(s):
-- \write_data~19_combout\ = (\Equal8~0_combout\ & ((\rst~combout\) # ((write_data(2))))) # (!\Equal8~0_combout\ & (((\krypton_det_instance|outp~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => write_data(2),
	datac => \Equal8~0_combout\,
	datad => \krypton_det_instance|outp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~19_combout\);

-- Location: LC_X7_Y8_N6
\write_data~23\ : maxv_lcell
-- Equation(s):
-- \write_data~23_combout\ = (\write_data~18_combout\ & (((\write_column[0]~5_combout\ & \write_data~19_combout\)) # (!\write_data~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~22_combout\,
	datab => \write_data~18_combout\,
	datac => \write_column[0]~5_combout\,
	datad => \write_data~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~23_combout\);

-- Location: LC_X7_Y8_N7
\write_data[2]\ : maxv_lcell
-- Equation(s):
-- write_data(2) = DFFEAS((\write_data~23_combout\) # ((!\lcd_instance|ack~regout\ & ((\rst~combout\) # (write_data(2))))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \rst~combout\,
	datab => write_data(2),
	datac => \lcd_instance|ack~regout\,
	datad => \write_data~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(2));

-- Location: LC_X8_Y6_N3
\lcd_instance|data_dis[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|data_dis\(2) = DFFEAS(GND, GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~28_combout\, write_data(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => write_data(2),
	aclr => GND,
	sload => VCC,
	ena => \lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|data_dis\(2));

-- Location: LC_X8_Y7_N0
\write_column~8\ : maxv_lcell
-- Equation(s):
-- \write_column~8_combout\ = ((i(2) & ((i(1)))) # (!i(2) & ((!i(1)) # (!i(0))))) # (!\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column~8_combout\);

-- Location: LC_X8_Y7_N1
\write_column[2]\ : maxv_lcell
-- Equation(s):
-- write_column(2) = DFFEAS((\lcd_instance|ack~regout\ & (((!\write_column~6_combout\ & \write_column~8_combout\)) # (!\write_column~4_combout\))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \write_column~4_combout\,
	datab => \lcd_instance|ack~regout\,
	datac => \write_column~6_combout\,
	datad => \write_column~8_combout\,
	aclr => GND,
	ena => \write_column[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(2));

-- Location: LC_X8_Y5_N6
\lcd_instance|cmd_position[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector5~1\ = (\lcd_instance|lcd[1]~0_combout\ & (((C1_cmd_position[2] & !\lcd_instance|Selector8~0_combout\)))) # (!\lcd_instance|lcd[1]~0_combout\ & ((\lcd_instance|lcd\(2)) # ((C1_cmd_position[2] & !\lcd_instance|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|lcd[1]~0_combout\,
	datab => \lcd_instance|lcd\(2),
	datac => write_column(2),
	datad => \lcd_instance|Selector8~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector5~1\,
	regout => \lcd_instance|cmd_position\(2));

-- Location: LC_X9_Y6_N6
\lcd_instance|Selector5~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector5~2_combout\ = (!\lcd_instance|count_cmd\(0) & (\lcd_instance|Selector5~0_combout\ & (\lcd_instance|count_cmd\(2) $ (\lcd_instance|count_cmd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|count_cmd\(2),
	datab => \lcd_instance|count_cmd\(0),
	datac => \lcd_instance|Selector5~0_combout\,
	datad => \lcd_instance|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector5~2_combout\);

-- Location: LC_X8_Y5_N2
\lcd_instance|lcd[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(2) = DFFEAS((\lcd_instance|Selector5~1\) # ((\lcd_instance|Selector5~2_combout\) # ((\lcd_instance|data_dis\(2) & \lcd_instance|lcd[7]~1\))), GLOBAL(\lcd_clk~regout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|data_dis\(2),
	datab => \lcd_instance|lcd[7]~1\,
	datac => \lcd_instance|Selector5~1\,
	datad => \lcd_instance|Selector5~2_combout\,
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(2));

-- Location: LC_X9_Y6_N8
\lcd_instance|Selector4~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector4~1_combout\ = (!\lcd_instance|count_cmd\(0) & (!\lcd_instance|count_cmd\(2) & ((!\lcd_instance|Selector8~1_combout\) # (!\lcd_instance|state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state.S0~regout\,
	datab => \lcd_instance|count_cmd\(0),
	datac => \lcd_instance|Selector8~1_combout\,
	datad => \lcd_instance|count_cmd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector4~1_combout\);

-- Location: LC_X8_Y6_N4
\write_data~26\ : maxv_lcell
-- Equation(s):
-- \write_data~26_combout\ = (write_data(3)) # (((\rst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => write_data(3),
	datac => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~26_combout\);

-- Location: LC_X6_Y6_N4
\write_data~25\ : maxv_lcell
-- Equation(s):
-- \write_data~25_combout\ = (((!\Equal3~0_combout\ & \write_data~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~0_combout\,
	datad => \write_data~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~25_combout\);

-- Location: LC_X7_Y6_N2
\write_data~27\ : maxv_lcell
-- Equation(s):
-- \write_data~27_combout\ = (!\Equal7~0_combout\ & ((\Equal8~0_combout\ & ((\write_data~26_combout\))) # (!\Equal8~0_combout\ & (\krypton_det_instance|outp~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \krypton_det_instance|outp~combout\,
	datac => \Equal7~0_combout\,
	datad => \write_data~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~27_combout\);

-- Location: LC_X7_Y6_N3
\write_data~28\ : maxv_lcell
-- Equation(s):
-- \write_data~28_combout\ = (\write_data~25_combout\) # ((\write_data~5_combout\ & ((\write_data~6_combout\) # (\write_data~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~5_combout\,
	datab => \write_data~25_combout\,
	datac => \write_data~6_combout\,
	datad => \write_data~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~28_combout\);

-- Location: LC_X7_Y6_N1
\write_data[3]\ : maxv_lcell
-- Equation(s):
-- write_data(3) = DFFEAS((\Equal2~10_combout\ & (\krypton_det_instance|out_ascii[48]~0_combout\)) # (!\Equal2~10_combout\ & (((\write_data~28_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , \write_data~26_combout\, , , !\lcd_instance|ack~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \Equal2~10_combout\,
	datab => \krypton_det_instance|out_ascii[48]~0_combout\,
	datac => \write_data~26_combout\,
	datad => \write_data~28_combout\,
	aclr => GND,
	sload => \lcd_instance|ALT_INV_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(3));

-- Location: LC_X8_Y6_N6
\lcd_instance|data_dis[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|data_dis\(3) = DFFEAS(GND, GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~28_combout\, write_data(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datac => write_data(3),
	aclr => GND,
	sload => VCC,
	ena => \lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|data_dis\(3));

-- Location: LC_X8_Y7_N7
\write_column[3]\ : maxv_lcell
-- Equation(s):
-- write_column(3) = DFFEAS((\write_column~4_combout\ & (\lcd_instance|ack~regout\ & ((\Equal4~0_combout\) # (!\write_column~6_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_column[0]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \write_column~4_combout\,
	datab => \lcd_instance|ack~regout\,
	datac => \Equal4~0_combout\,
	datad => \write_column~6_combout\,
	aclr => GND,
	ena => \write_column[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(3));

-- Location: LC_X9_Y6_N5
\lcd_instance|cmd_position[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector4~0\ = (\lcd_instance|Selector8~0_combout\ & (\lcd_instance|lcd\(3) & ((!\lcd_instance|lcd[1]~0_combout\)))) # (!\lcd_instance|Selector8~0_combout\ & ((C1_cmd_position[3]) # ((\lcd_instance|lcd\(3) & 
-- !\lcd_instance|lcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|Selector8~0_combout\,
	datab => \lcd_instance|lcd\(3),
	datac => write_column(3),
	datad => \lcd_instance|lcd[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector4~0\,
	regout => \lcd_instance|cmd_position\(3));

-- Location: LC_X8_Y6_N7
\lcd_instance|lcd[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(3) = DFFEAS((\lcd_instance|Selector4~1_combout\) # ((\lcd_instance|Selector4~0\) # ((\lcd_instance|lcd[7]~1\ & \lcd_instance|data_dis\(3)))), GLOBAL(\lcd_clk~regout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|lcd[7]~1\,
	datab => \lcd_instance|Selector4~1_combout\,
	datac => \lcd_instance|data_dis\(3),
	datad => \lcd_instance|Selector4~0\,
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(3));

-- Location: LC_X5_Y8_N7
\write_column~11\ : maxv_lcell
-- Equation(s):
-- \write_column~11_combout\ = ((\lcd_instance|ack~regout\ & (!\Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|ack~regout\,
	datac => \Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_column~11_combout\);

-- Location: LC_X5_Y8_N6
\write_data~29\ : maxv_lcell
-- Equation(s):
-- \write_data~29_combout\ = ((\lcd_instance|ack~regout\ & (!\Equal4~0_combout\ & \write_column~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|ack~regout\,
	datac => \Equal4~0_combout\,
	datad => \write_column~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~29_combout\);

-- Location: LC_X5_Y8_N9
\write_data~30\ : maxv_lcell
-- Equation(s):
-- \write_data~30_combout\ = (\krypton_det_instance|y_present.s4~regout\) # (((\krypton_det_instance|Equal4~4_combout\ & \krypton_det_instance|y_present.s3~regout\)) # (!\write_data~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal4~4_combout\,
	datab => \krypton_det_instance|y_present.s3~regout\,
	datac => \krypton_det_instance|y_present.s4~regout\,
	datad => \write_data~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~30_combout\);

-- Location: LC_X5_Y8_N1
\write_data~31\ : maxv_lcell
-- Equation(s):
-- \write_data~31_combout\ = (\write_data~29_combout\ & ((\Equal5~0_combout\ & ((\write_data~30_combout\))) # (!\Equal5~0_combout\ & (\write_data~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \write_data~21_combout\,
	datac => \write_data~29_combout\,
	datad => \write_data~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~31_combout\);

-- Location: LC_X5_Y8_N2
\write_data~32\ : maxv_lcell
-- Equation(s):
-- \write_data~32_combout\ = (\write_data~31_combout\) # ((!\write_column[0]~2_combout\ & ((write_data(4)) # (\rst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => write_data(4),
	datab => \rst~combout\,
	datac => \write_column[0]~2_combout\,
	datad => \write_data~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~32_combout\);

-- Location: LC_X5_Y8_N3
\write_data[4]\ : maxv_lcell
-- Equation(s):
-- write_data(4) = DFFEAS((\write_data~32_combout\) # ((\write_column~11_combout\ & ((\write_data~14_combout\) # (\write_data~25_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \write_data~14_combout\,
	datab => \write_column~11_combout\,
	datac => \write_data~25_combout\,
	datad => \write_data~32_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(4));

-- Location: LC_X8_Y6_N1
\lcd_instance|data_dis[4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|data_dis\(4) = DFFEAS((((write_data(4)))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~28_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datad => write_data(4),
	aclr => GND,
	ena => \lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|data_dis\(4));

-- Location: LC_X9_Y6_N7
\lcd_instance|Selector3~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector3~0_combout\ = (!\lcd_instance|count_cmd\(2) & (!\lcd_instance|count_cmd\(1) & (!\lcd_instance|lcd[7]~1\ & !\lcd_instance|count_cmd\(0))))

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
	dataa => \lcd_instance|count_cmd\(2),
	datab => \lcd_instance|count_cmd\(1),
	datac => \lcd_instance|lcd[7]~1\,
	datad => \lcd_instance|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector3~0_combout\);

-- Location: LC_X9_Y6_N3
\lcd_instance|lcd[4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(4) = DFFEAS((\lcd_instance|Selector8~0_combout\ & ((\lcd_instance|Selector3~0_combout\) # ((\lcd_instance|data_dis\(4) & \lcd_instance|lcd[7]~1\)))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|data_dis\(4),
	datab => \lcd_instance|Selector3~0_combout\,
	datac => \lcd_instance|lcd[7]~1\,
	datad => \lcd_instance|Selector8~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(4));

-- Location: LC_X8_Y6_N2
\write_data~46\ : maxv_lcell
-- Equation(s):
-- \write_data~46_combout\ = (((\rst~combout\) # (write_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => write_data(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~46_combout\);

-- Location: LC_X7_Y6_N8
\write_data~43\ : maxv_lcell
-- Equation(s):
-- \write_data~43_combout\ = ((\Equal8~0_combout\ & ((!\rst~combout\))) # (!\Equal8~0_combout\ & (\krypton_det_instance|y_present.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \krypton_det_instance|y_present.s6~regout\,
	datac => \rst~combout\,
	datad => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~43_combout\);

-- Location: LC_X7_Y6_N9
\write_data~44\ : maxv_lcell
-- Equation(s):
-- \write_data~44_combout\ = ((\Equal8~0_combout\ & ((write_data(5)))) # (!\Equal8~0_combout\ & (\krypton_det_instance|Equal0~1_combout\))) # (!\write_data~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal0~1_combout\,
	datab => \Equal8~0_combout\,
	datac => write_data(5),
	datad => \write_data~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~44_combout\);

-- Location: LC_X6_Y8_N0
\write_data~53\ : maxv_lcell
-- Equation(s):
-- \write_data~53_combout\ = (\krypton_det_instance|y_present.s4~regout\ & (((!\krypton_det_instance|Equal5~0_combout\)))) # (!\krypton_det_instance|y_present.s4~regout\ & (!\krypton_det_instance|y_present.s5~regout\ & 
-- ((!\krypton_det_instance|y_present.s6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s5~regout\,
	datab => \krypton_det_instance|Equal5~0_combout\,
	datac => \krypton_det_instance|y_present.s6~regout\,
	datad => \krypton_det_instance|y_present.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~53_combout\);

-- Location: LC_X7_Y8_N2
\write_data~34\ : maxv_lcell
-- Equation(s):
-- \write_data~34_combout\ = (i(2)) # (((!i(0) & !i(1))) # (!\Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(2),
	datac => i(1),
	datad => \Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~34_combout\);

-- Location: LC_X6_Y8_N1
\write_data~35\ : maxv_lcell
-- Equation(s):
-- \write_data~35_combout\ = (\Equal7~0_combout\ & ((\krypton_det_instance|y_present.s5~regout\ & (\krypton_det_instance|Equal6~0_combout\)) # (!\krypton_det_instance|y_present.s5~regout\ & ((!\krypton_det_instance|y_present.s6~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s5~regout\,
	datab => \krypton_det_instance|Equal6~0_combout\,
	datac => \krypton_det_instance|y_present.s6~regout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~35_combout\);

-- Location: LC_X6_Y8_N2
\write_data~36\ : maxv_lcell
-- Equation(s):
-- \write_data~36_combout\ = (\write_data~34_combout\ & ((\Equal6~0_combout\ & (\write_data~53_combout\)) # (!\Equal6~0_combout\ & ((\write_data~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \write_data~53_combout\,
	datac => \write_data~34_combout\,
	datad => \write_data~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~36_combout\);

-- Location: LC_X5_Y6_N6
\write_data~41\ : maxv_lcell
-- Equation(s):
-- \write_data~41_combout\ = (\krypton_det_instance|y_present.s1~regout\ & (((\inp~combout\(2)) # (!\inp~combout\(1))) # (!\krypton_det_instance|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s1~regout\,
	datab => \krypton_det_instance|Equal2~0_combout\,
	datac => \inp~combout\(1),
	datad => \inp~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~41_combout\);

-- Location: LC_X5_Y6_N4
\write_data~39\ : maxv_lcell
-- Equation(s):
-- \write_data~39_combout\ = ((\krypton_det_instance|y_present.s1~regout\) # ((\krypton_det_instance|y_present.s2~regout\ & !\krypton_det_instance|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \krypton_det_instance|y_present.s2~regout\,
	datac => \krypton_det_instance|y_present.s1~regout\,
	datad => \krypton_det_instance|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~39_combout\);

-- Location: LC_X7_Y6_N0
\write_data~40\ : maxv_lcell
-- Equation(s):
-- \write_data~40_combout\ = (\Equal3~0_combout\ & (!\krypton_det_instance|y_present.rst~regout\)) # (!\Equal3~0_combout\ & (\Equal4~0_combout\ & ((\write_data~39_combout\) # (!\krypton_det_instance|y_present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.rst~regout\,
	datab => \write_data~39_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~40_combout\);

-- Location: LC_X6_Y6_N5
\write_data~37\ : maxv_lcell
-- Equation(s):
-- \write_data~37_combout\ = (\krypton_det_instance|y_present.s2~regout\) # (((\krypton_det_instance|y_present.s3~regout\ & !\krypton_det_instance|Equal4~4_combout\)) # (!\write_data~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s3~regout\,
	datab => \krypton_det_instance|Equal4~4_combout\,
	datac => \krypton_det_instance|y_present.s2~regout\,
	datad => \write_data~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~37_combout\);

-- Location: LC_X7_Y6_N4
\write_data~38\ : maxv_lcell
-- Equation(s):
-- \write_data~38_combout\ = (\write_data~37_combout\ & (\Equal5~0_combout\ & (!\Equal4~0_combout\ & !\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~37_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~38_combout\);

-- Location: LC_X7_Y6_N5
\write_data~42\ : maxv_lcell
-- Equation(s):
-- \write_data~42_combout\ = (\write_data~40_combout\) # ((\write_data~38_combout\) # ((\write_data~41_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~41_combout\,
	datab => \Equal3~0_combout\,
	datac => \write_data~40_combout\,
	datad => \write_data~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~42_combout\);

-- Location: LC_X7_Y6_N6
\write_data~45\ : maxv_lcell
-- Equation(s):
-- \write_data~45_combout\ = (\write_data~36_combout\) # ((\write_data~42_combout\) # ((\write_data~4_combout\ & \write_data~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~4_combout\,
	datab => \write_data~44_combout\,
	datac => \write_data~36_combout\,
	datad => \write_data~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~45_combout\);

-- Location: LC_X7_Y6_N7
\write_data[5]\ : maxv_lcell
-- Equation(s):
-- write_data(5) = DFFEAS((\Equal2~10_combout\ & (!\krypton_det_instance|out_ascii[48]~0_combout\)) # (!\Equal2~10_combout\ & (((\write_data~45_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , , \write_data~46_combout\, , , !\lcd_instance|ack~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7722",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \Equal2~10_combout\,
	datab => \krypton_det_instance|out_ascii[48]~0_combout\,
	datac => \write_data~46_combout\,
	datad => \write_data~45_combout\,
	aclr => GND,
	sload => \lcd_instance|ALT_INV_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(5));

-- Location: LC_X8_Y6_N8
\lcd_instance|data_dis[5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|data_dis\(5) = DFFEAS((((write_data(5)))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~28_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datad => write_data(5),
	aclr => GND,
	ena => \lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|data_dis\(5));

-- Location: LC_X9_Y6_N9
\lcd_instance|lcd[5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(5) = DFFEAS((\lcd_instance|Selector8~0_combout\ & ((\lcd_instance|Selector3~0_combout\) # ((\lcd_instance|data_dis\(5) & \lcd_instance|lcd[7]~1\)))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|data_dis\(5),
	datab => \lcd_instance|Selector3~0_combout\,
	datac => \lcd_instance|lcd[7]~1\,
	datad => \lcd_instance|Selector8~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(5));

-- Location: LC_X7_Y8_N5
\write_data~48\ : maxv_lcell
-- Equation(s):
-- \write_data~48_combout\ = (\write_column[0]~5_combout\ & ((\Equal8~0_combout\ & ((write_data(6)))) # (!\Equal8~0_combout\ & (!\krypton_det_instance|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal0~1_combout\,
	datab => write_data(6),
	datac => \write_column[0]~5_combout\,
	datad => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~48_combout\);

-- Location: LC_X7_Y8_N3
\write_data~49\ : maxv_lcell
-- Equation(s):
-- \write_data~49_combout\ = (\write_data~18_combout\ & (((\write_data~48_combout\ & \write_data~43_combout\)) # (!\write_data~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~48_combout\,
	datab => \write_data~18_combout\,
	datac => \write_data~22_combout\,
	datad => \write_data~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~49_combout\);

-- Location: LC_X7_Y8_N4
\write_data~50\ : maxv_lcell
-- Equation(s):
-- \write_data~50_combout\ = (\write_data~49_combout\) # ((\Equal5~0_combout\ & (\write_data~29_combout\ & \write_data~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \write_data~29_combout\,
	datac => \write_data~30_combout\,
	datad => \write_data~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~50_combout\);

-- Location: LC_X7_Y8_N8
\write_data~47\ : maxv_lcell
-- Equation(s):
-- \write_data~47_combout\ = (\write_column~4_combout\ & ((\write_data~10_combout\) # ((!\Equal2~10_combout\ & \write_data~14_combout\)))) # (!\write_column~4_combout\ & (!\Equal2~10_combout\ & ((\write_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_column~4_combout\,
	datab => \Equal2~10_combout\,
	datac => \write_data~10_combout\,
	datad => \write_data~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data~47_combout\);

-- Location: LC_X7_Y8_N9
\write_data[6]\ : maxv_lcell
-- Equation(s):
-- write_data(6) = DFFEAS((\write_data~50_combout\) # ((\lcd_instance|ack~regout\ & ((\write_data~11_combout\) # (\write_data~47_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , \write_data~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \write_data~11_combout\,
	datab => \lcd_instance|ack~regout\,
	datac => \write_data~50_combout\,
	datad => \write_data~47_combout\,
	aclr => GND,
	ena => \write_data~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(6));

-- Location: LC_X8_Y6_N0
\lcd_instance|data_dis[6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|data_dis\(6) = DFFEAS((((write_data(6)))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|state~28_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	datad => write_data(6),
	aclr => GND,
	ena => \lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|data_dis\(6));

-- Location: LC_X9_Y6_N4
\lcd_instance|lcd[6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(6) = DFFEAS((\lcd_instance|data_dis\(6) & (((\lcd_instance|Selector8~0_combout\ & \lcd_instance|Selector1~0_combout\)))), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|data_dis\(6),
	datac => \lcd_instance|Selector8~0_combout\,
	datad => \lcd_instance|Selector1~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(6));

-- Location: LC_X9_Y6_N0
\lcd_instance|lcd[7]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(7) = DFFEAS(((\lcd_instance|count_cmd\(1) & (!\lcd_instance|lcd[7]~1\ & \lcd_instance|count_cmd\(0)))) # (!\lcd_instance|Selector8~0_combout\), GLOBAL(\lcd_clk~regout\), VCC, , \lcd_instance|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_clk~regout\,
	dataa => \lcd_instance|Selector8~0_combout\,
	datab => \lcd_instance|count_cmd\(1),
	datac => \lcd_instance|lcd[7]~1\,
	datad => \lcd_instance|count_cmd\(0),
	aclr => GND,
	ena => \lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(7));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rw~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd_rw);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd_en~regout\,
	oe => VCC,
	padio => ww_lcd_en);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd_rs~regout\,
	oe => VCC,
	padio => ww_lcd_rs);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(0),
	oe => VCC,
	padio => ww_lcd1(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(1),
	oe => VCC,
	padio => ww_lcd1(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(2),
	oe => VCC,
	padio => ww_lcd1(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(3),
	oe => VCC,
	padio => ww_lcd1(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(4),
	oe => VCC,
	padio => ww_lcd1(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(5),
	oe => VCC,
	padio => ww_lcd1(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(6),
	oe => VCC,
	padio => ww_lcd1(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(7),
	oe => VCC,
	padio => ww_lcd1(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b11~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_b11);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b12~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_b12);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|outp~combout\,
	oe => VCC,
	padio => ww_detect);
END structure;


