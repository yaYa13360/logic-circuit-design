-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "05/19/2021 02:09:18"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	scanf_gen IS
    PORT (
	clockin : IN std_logic;
	clockout : OUT std_logic
	);
END scanf_gen;

-- Design Ports Information
-- clockout	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clockin	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF scanf_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clockin : std_logic;
SIGNAL ww_clockout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clockin~input_o\ : std_logic;
SIGNAL \clockin~inputCLKENA0_outclk\ : std_logic;
SIGNAL \counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \PULSE~0_combout\ : std_logic;
SIGNAL \PULSE~q\ : std_logic;
SIGNAL counter : std_logic_vector(16 DOWNTO 0);
SIGNAL ALT_INV_counter : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_PULSE~q\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clockin <= clockin;
clockout <= ww_clockout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(1) <= NOT counter(1);
\ALT_INV_PULSE~q\ <= NOT \PULSE~q\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \counter[3]~DUPLICATE_q\;
\ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \counter[13]~DUPLICATE_q\;
\ALT_INV_counter[16]~DUPLICATE_q\ <= NOT \counter[16]~DUPLICATE_q\;
\ALT_INV_counter[8]~DUPLICATE_q\ <= NOT \counter[8]~DUPLICATE_q\;
\ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \counter[1]~DUPLICATE_q\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(6) <= NOT counter(6);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(9) <= NOT counter(9);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(10) <= NOT counter(10);

-- Location: IOOBUF_X40_Y81_N36
\clockout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PULSE~q\,
	devoe => ww_devoe,
	o => ww_clockout);

-- Location: IOIBUF_X89_Y35_N61
\clockin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockin,
	o => \clockin~input_o\);

-- Location: CLKCTRL_G10
\clockin~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clockin~input_o\,
	outclk => \clockin~inputCLKENA0_outclk\);

-- Location: FF_X43_Y74_N59
\counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1]~DUPLICATE_q\);

-- Location: FF_X43_Y74_N11
\counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y74_N0
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~66\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X42_Y74_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X42_Y74_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~2\ = CARRY(( \counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[1]~DUPLICATE_q\,
	cin => \Add0~66\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X42_Y74_N6
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~26\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~2\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X42_Y74_N9
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~62\ = CARRY(( \counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[3]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X43_Y74_N9
\counter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = ( \Add0~61_sumout\ & ( \Equal0~0_combout\ & ( ((!\Equal1~1_combout\) # ((!\Equal1~0_combout\) # (!counter(1)))) # (counter(7)) ) ) ) # ( \Add0~61_sumout\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_counter(1),
	datae => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X43_Y74_N10
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X42_Y74_N12
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~22\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add0~62\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X42_Y74_N13
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X42_Y74_N15
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~58\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(5),
	cin => \Add0~22\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X42_Y74_N16
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X43_Y74_N45
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !counter(0) & ( (counter(3) & (!counter(5) & counter(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(3),
	datac => ALT_INV_counter(5),
	datad => ALT_INV_counter(6),
	dataf => ALT_INV_counter(0),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X43_Y74_N21
\counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = ( \Equal1~1_combout\ & ( \Add0~25_sumout\ & ( ((!\counter[1]~DUPLICATE_q\) # ((!\Equal1~0_combout\) # (!\Equal0~0_combout\))) # (counter(7)) ) ) ) # ( !\Equal1~1_combout\ & ( \Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => \ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \counter~3_combout\);

-- Location: FF_X43_Y74_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X43_Y74_N30
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !counter(7) & ( counter(1) & ( (\Equal0~0_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => ALT_INV_counter(7),
	dataf => ALT_INV_counter(1),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X42_Y74_N21
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~34\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~54\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X42_Y74_N24
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~18\ = CARRY(( \counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[8]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X43_Y74_N48
\counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = ( \Equal1~1_combout\ & ( \Add0~17_sumout\ & ( ((!\Equal1~0_combout\) # ((!\Equal0~0_combout\) # (!\counter[1]~DUPLICATE_q\))) # (counter(7)) ) ) ) # ( !\Equal1~1_combout\ & ( \Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \counter~2_combout\);

-- Location: FF_X43_Y74_N50
\counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[8]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y74_N27
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~30\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(9),
	cin => \Add0~18\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X42_Y74_N30
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~14\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(10),
	cin => \Add0~30\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X42_Y74_N31
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X42_Y74_N33
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~50\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add0~14\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X42_Y74_N34
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X42_Y74_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~10\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(12),
	cin => \Add0~50\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X43_Y74_N39
\counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = ( \Add0~9_sumout\ & ( !\Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \counter~1_combout\);

-- Location: FF_X43_Y74_N41
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X42_Y74_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~46\ = CARRY(( \counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[13]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X42_Y74_N57
\counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = ( \Add0~45_sumout\ & ( !\Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \counter~6_combout\);

-- Location: FF_X42_Y74_N59
\counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y74_N42
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~6\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(14),
	cin => \Add0~46\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X42_Y74_N43
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: FF_X43_Y74_N49
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X43_Y74_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !counter(4) & ( counter(12) & ( (counter(2) & (!counter(14) & (!counter(10) & counter(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(2),
	datab => ALT_INV_counter(14),
	datac => ALT_INV_counter(10),
	datad => ALT_INV_counter(8),
	datae => ALT_INV_counter(4),
	dataf => ALT_INV_counter(12),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X43_Y74_N18
\counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = ( \Equal1~1_combout\ & ( \Add0~29_sumout\ & ( ((!\counter[1]~DUPLICATE_q\) # ((!\Equal0~0_combout\) # (!\Equal1~0_combout\))) # (counter(7)) ) ) ) # ( !\Equal1~1_combout\ & ( \Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => \ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \counter~4_combout\);

-- Location: FF_X43_Y74_N20
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: FF_X42_Y74_N58
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: FF_X42_Y74_N56
\counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[16]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y74_N45
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~42\ = CARRY(( counter(15) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(15),
	cin => \Add0~6\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X42_Y74_N46
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X42_Y74_N48
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[16]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\);

-- Location: LABCELL_X42_Y74_N54
\counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = ( \Add0~37_sumout\ & ( !\Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \counter~5_combout\);

-- Location: FF_X42_Y74_N55
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X43_Y74_N15
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !counter(15) & ( (counter(9) & (!counter(11) & (counter(13) & counter(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(9),
	datab => ALT_INV_counter(11),
	datac => ALT_INV_counter(13),
	datad => ALT_INV_counter(16),
	dataf => ALT_INV_counter(15),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X42_Y74_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(6),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X43_Y74_N54
\counter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = ( \counter[1]~DUPLICATE_q\ & ( \Add0~53_sumout\ & ( ((!\Equal1~0_combout\) # ((!\Equal0~0_combout\) # (!\Equal1~1_combout\))) # (counter(7)) ) ) ) # ( !\counter[1]~DUPLICATE_q\ & ( \Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \counter~7_combout\);

-- Location: FF_X43_Y74_N56
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: FF_X42_Y74_N22
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X43_Y74_N57
\counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = ( counter(1) & ( \Add0~1_sumout\ & ( ((!\Equal1~0_combout\) # ((!\Equal1~1_combout\) # (!\Equal0~0_combout\))) # (counter(7)) ) ) ) # ( !counter(1) & ( \Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_counter(1),
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \counter~0_combout\);

-- Location: FF_X43_Y74_N58
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X43_Y74_N3
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !counter(3) & ( counter(5) & ( (!counter(6) & counter(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(6),
	datab => ALT_INV_counter(0),
	datae => ALT_INV_counter(3),
	dataf => ALT_INV_counter(5),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X43_Y74_N42
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( counter(15) & ( (counter(11) & (!counter(16) & !counter(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(11),
	datac => ALT_INV_counter(16),
	datad => ALT_INV_counter(13),
	dataf => ALT_INV_counter(15),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X43_Y74_N12
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~1_combout\ & ( (!counter(9) & (counter(7) & \Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(9),
	datac => ALT_INV_counter(7),
	datad => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X43_Y74_N36
\PULSE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PULSE~0_combout\ = ( \Equal0~3_combout\ & ( !\PULSE~q\ $ (((!\Equal1~2_combout\ & ((!counter(1)) # (!\Equal0~0_combout\))))) ) ) # ( !\Equal0~3_combout\ & ( !\Equal1~2_combout\ $ (!\PULSE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110111110010000011011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	datab => \ALT_INV_Equal1~2_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_PULSE~q\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \PULSE~0_combout\);

-- Location: FF_X43_Y74_N37
PULSE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~inputCLKENA0_outclk\,
	d => \PULSE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE~q\);

-- Location: LABCELL_X27_Y39_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


