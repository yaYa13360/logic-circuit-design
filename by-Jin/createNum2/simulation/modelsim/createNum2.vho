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

-- DATE "05/17/2021 01:08:02"

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

ENTITY 	createNum2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	sel : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END createNum2;

-- Design Ports Information
-- q[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF createNum2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \d0~q\ : std_logic;
SIGNAL \run~q\ : std_logic;
SIGNAL \d1~feeder_combout\ : std_logic;
SIGNAL \d1~q\ : std_logic;
SIGNAL \run~0_combout\ : std_logic;
SIGNAL \run~DUPLICATE_q\ : std_logic;
SIGNAL \state.S7~q\ : std_logic;
SIGNAL \state.S6~q\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.S6~DUPLICATE_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.S7~DUPLICATE_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.S8~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \state.S9~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \state.S8~DUPLICATE_q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \state.S3~DUPLICATE_q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \state.S9~DUPLICATE_q\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL qt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_run~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S9~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S3~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S7~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S8~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S6~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_d0~q\ : std_logic;
SIGNAL \ALT_INV_d1~q\ : std_logic;
SIGNAL \ALT_INV_state.S1~q\ : std_logic;
SIGNAL \ALT_INV_run~q\ : std_logic;
SIGNAL \ALT_INV_state.S9~q\ : std_logic;
SIGNAL \ALT_INV_state.S5~q\ : std_logic;
SIGNAL \ALT_INV_state.S3~q\ : std_logic;
SIGNAL \ALT_INV_state.S7~q\ : std_logic;
SIGNAL \ALT_INV_state.S8~q\ : std_logic;
SIGNAL \ALT_INV_state.S6~q\ : std_logic;
SIGNAL \ALT_INV_state.S4~q\ : std_logic;
SIGNAL \ALT_INV_state.S2~q\ : std_logic;
SIGNAL \ALT_INV_state.S0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sel <= sel;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_run~DUPLICATE_q\ <= NOT \run~DUPLICATE_q\;
\ALT_INV_state.S9~DUPLICATE_q\ <= NOT \state.S9~DUPLICATE_q\;
\ALT_INV_state.S3~DUPLICATE_q\ <= NOT \state.S3~DUPLICATE_q\;
\ALT_INV_state.S7~DUPLICATE_q\ <= NOT \state.S7~DUPLICATE_q\;
\ALT_INV_state.S8~DUPLICATE_q\ <= NOT \state.S8~DUPLICATE_q\;
\ALT_INV_state.S6~DUPLICATE_q\ <= NOT \state.S6~DUPLICATE_q\;
\ALT_INV_state.S4~DUPLICATE_q\ <= NOT \state.S4~DUPLICATE_q\;
\ALT_INV_d0~q\ <= NOT \d0~q\;
\ALT_INV_d1~q\ <= NOT \d1~q\;
\ALT_INV_state.S1~q\ <= NOT \state.S1~q\;
\ALT_INV_run~q\ <= NOT \run~q\;
\ALT_INV_state.S9~q\ <= NOT \state.S9~q\;
\ALT_INV_state.S5~q\ <= NOT \state.S5~q\;
\ALT_INV_state.S3~q\ <= NOT \state.S3~q\;
\ALT_INV_state.S7~q\ <= NOT \state.S7~q\;
\ALT_INV_state.S8~q\ <= NOT \state.S8~q\;
\ALT_INV_state.S6~q\ <= NOT \state.S6~q\;
\ALT_INV_state.S4~q\ <= NOT \state.S4~q\;
\ALT_INV_state.S2~q\ <= NOT \state.S2~q\;
\ALT_INV_state.S0~q\ <= NOT \state.S0~q\;

-- Location: IOOBUF_X28_Y0_N2
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X30_Y0_N2
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X30_Y0_N36
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X30_Y0_N53
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X30_Y0_N18
\sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X30_Y1_N41
d0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sel~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0~q\);

-- Location: FF_X30_Y1_N16
run : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \run~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \run~q\);

-- Location: LABCELL_X30_Y1_N18
\d1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \d1~feeder_combout\ = ( \d0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d0~q\,
	combout => \d1~feeder_combout\);

-- Location: FF_X30_Y1_N20
d1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \d1~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1~q\);

-- Location: LABCELL_X30_Y1_N15
\run~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \run~0_combout\ = ( \d1~q\ & ( !\d0~q\ $ (\run~q\) ) ) # ( !\d1~q\ & ( \run~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d0~q\,
	datad => \ALT_INV_run~q\,
	dataf => \ALT_INV_d1~q\,
	combout => \run~0_combout\);

-- Location: FF_X30_Y1_N17
\run~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \run~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \run~DUPLICATE_q\);

-- Location: FF_X30_Y1_N29
\state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S7~q\);

-- Location: FF_X30_Y1_N59
\state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S6~q\);

-- Location: FF_X30_Y1_N26
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LABCELL_X30_Y1_N6
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \run~q\ & ( (!\state.S2~q\ & \state.S3~q\) ) ) # ( !\run~q\ & ( \state.S2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S2~q\,
	datad => \ALT_INV_state.S3~q\,
	dataf => \ALT_INV_run~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X30_Y1_N7
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LABCELL_X30_Y1_N24
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \state.S3~q\ & ( !\run~DUPLICATE_q\ ) ) # ( !\state.S3~q\ & ( (\run~DUPLICATE_q\ & \state.S4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_run~DUPLICATE_q\,
	datad => \ALT_INV_state.S4~q\,
	dataf => \ALT_INV_state.S3~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X30_Y1_N25
\state.S4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~DUPLICATE_q\);

-- Location: LABCELL_X30_Y1_N9
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.S4~DUPLICATE_q\ & ( !\run~DUPLICATE_q\ ) ) # ( !\state.S4~DUPLICATE_q\ & ( (\run~DUPLICATE_q\ & \state.S5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_run~DUPLICATE_q\,
	datad => \ALT_INV_state.S5~q\,
	dataf => \ALT_INV_state.S4~DUPLICATE_q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X30_Y1_N10
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LABCELL_X30_Y1_N57
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \state.S5~q\ & ( !\run~DUPLICATE_q\ ) ) # ( !\state.S5~q\ & ( (\run~DUPLICATE_q\ & \state.S6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_run~DUPLICATE_q\,
	datad => \ALT_INV_state.S6~q\,
	dataf => \ALT_INV_state.S5~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X30_Y1_N58
\state.S6~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S6~DUPLICATE_q\);

-- Location: LABCELL_X30_Y1_N27
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \state.S6~DUPLICATE_q\ & ( !\run~DUPLICATE_q\ ) ) # ( !\state.S6~DUPLICATE_q\ & ( (\run~DUPLICATE_q\ & \state.S7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_run~DUPLICATE_q\,
	datad => \ALT_INV_state.S7~q\,
	dataf => \ALT_INV_state.S6~DUPLICATE_q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X30_Y1_N28
\state.S7~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S7~DUPLICATE_q\);

-- Location: LABCELL_X30_Y1_N45
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \state.S7~DUPLICATE_q\ & ( !\run~DUPLICATE_q\ ) ) # ( !\state.S7~DUPLICATE_q\ & ( (\run~DUPLICATE_q\ & \state.S8~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_run~DUPLICATE_q\,
	datad => \ALT_INV_state.S8~q\,
	dataf => \ALT_INV_state.S7~DUPLICATE_q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X30_Y1_N46
\state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S8~q\);

-- Location: LABCELL_X30_Y1_N33
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \state.S8~q\ & ( !\run~DUPLICATE_q\ ) ) # ( !\state.S8~q\ & ( (\run~DUPLICATE_q\ & \state.S9~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_run~DUPLICATE_q\,
	datad => \ALT_INV_state.S9~q\,
	dataf => \ALT_INV_state.S8~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X30_Y1_N35
\state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S9~q\);

-- Location: LABCELL_X30_Y1_N42
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \run~q\ & ( (\state.S0~q\) # (\state.S9~q\) ) ) # ( !\run~q\ & ( !\state.S9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S9~q\,
	datad => \ALT_INV_state.S0~q\,
	dataf => \ALT_INV_run~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X30_Y1_N44
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LABCELL_X30_Y1_N30
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \run~q\ & ( (\state.S0~q\ & \state.S1~q\) ) ) # ( !\run~q\ & ( !\state.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S0~q\,
	datad => \ALT_INV_state.S1~q\,
	dataf => \ALT_INV_run~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X30_Y1_N31
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LABCELL_X30_Y1_N54
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.S1~q\ & ( !\run~DUPLICATE_q\ ) ) # ( !\state.S1~q\ & ( (\run~DUPLICATE_q\ & \state.S2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_run~DUPLICATE_q\,
	datad => \ALT_INV_state.S2~q\,
	dataf => \ALT_INV_state.S1~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X30_Y1_N56
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: FF_X30_Y1_N47
\state.S8~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S8~DUPLICATE_q\);

-- Location: LABCELL_X30_Y1_N12
WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ( \state.S0~q\ & ( (!\state.S2~q\ & (!\state.S8~DUPLICATE_q\ & (!\state.S4~q\ & !\state.S6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S2~q\,
	datab => \ALT_INV_state.S8~DUPLICATE_q\,
	datac => \ALT_INV_state.S4~q\,
	datad => \ALT_INV_state.S6~q\,
	dataf => \ALT_INV_state.S0~q\,
	combout => \WideOr2~combout\);

-- Location: FF_X30_Y1_N14
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: FF_X30_Y1_N8
\state.S3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~DUPLICATE_q\);

-- Location: LABCELL_X30_Y1_N51
WideOr1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ( \state.S3~DUPLICATE_q\ ) # ( !\state.S3~DUPLICATE_q\ & ( ((\state.S2~q\) # (\state.S6~q\)) # (\state.S7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S7~q\,
	datac => \ALT_INV_state.S6~q\,
	datad => \ALT_INV_state.S2~q\,
	dataf => \ALT_INV_state.S3~DUPLICATE_q\,
	combout => \WideOr1~combout\);

-- Location: FF_X30_Y1_N52
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: LABCELL_X30_Y1_N48
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \state.S5~q\ ) # ( !\state.S5~q\ & ( ((\state.S6~q\) # (\state.S4~q\)) # (\state.S7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S7~q\,
	datac => \ALT_INV_state.S4~q\,
	datad => \ALT_INV_state.S6~q\,
	dataf => \ALT_INV_state.S5~q\,
	combout => \WideOr0~combout\);

-- Location: FF_X30_Y1_N50
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: FF_X30_Y1_N34
\state.S9~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S9~DUPLICATE_q\);

-- Location: LABCELL_X30_Y1_N0
\qt[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- qt(3) = ( \state.S8~DUPLICATE_q\ & ( \state.S9~DUPLICATE_q\ ) ) # ( !\state.S8~DUPLICATE_q\ & ( \state.S9~DUPLICATE_q\ ) ) # ( \state.S8~DUPLICATE_q\ & ( !\state.S9~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.S8~DUPLICATE_q\,
	dataf => \ALT_INV_state.S9~DUPLICATE_q\,
	combout => qt(3));

-- Location: FF_X30_Y1_N2
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => qt(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: LABCELL_X42_Y70_N0
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


