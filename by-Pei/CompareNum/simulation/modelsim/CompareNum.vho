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

-- DATE "06/12/2021 14:33:44"

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

ENTITY 	CompareNum IS
    PORT (
	enter : IN std_logic;
	u : IN std_logic_vector(0 TO 7);
	g : IN std_logic_vector(0 TO 7);
	TFS : OUT std_logic_vector(0 TO 1);
	reset : IN std_logic
	);
END CompareNum;

-- Design Ports Information
-- TFS[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TFS[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[7]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CompareNum IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_u : std_logic_vector(0 TO 7);
SIGNAL ww_g : std_logic_vector(0 TO 7);
SIGNAL ww_TFS : std_logic_vector(0 TO 1);
SIGNAL ww_reset : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \enter~inputCLKENA0_outclk\ : std_logic;
SIGNAL \g[5]~input_o\ : std_logic;
SIGNAL \g[1]~input_o\ : std_logic;
SIGNAL \u[1]~input_o\ : std_logic;
SIGNAL \u[2]~input_o\ : std_logic;
SIGNAL \u[0]~input_o\ : std_logic;
SIGNAL \g[2]~input_o\ : std_logic;
SIGNAL \g[0]~input_o\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \g[4]~input_o\ : std_logic;
SIGNAL \g[3]~input_o\ : std_logic;
SIGNAL \u[4]~input_o\ : std_logic;
SIGNAL \u[3]~input_o\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \u[5]~input_o\ : std_logic;
SIGNAL \g[7]~input_o\ : std_logic;
SIGNAL \g[6]~input_o\ : std_logic;
SIGNAL \u[6]~input_o\ : std_logic;
SIGNAL \u[7]~input_o\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \temp~combout\ : std_logic;
SIGNAL \temp2[1]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL temp2 : std_logic_vector(0 TO 1);
SIGNAL \ALT_INV_g[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_g[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_g[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_g[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_g[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_g[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_g[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_g[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_u[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_temp~combout\ : std_logic;
SIGNAL \ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp~0_combout\ : std_logic;

BEGIN

ww_enter <= enter;
ww_u <= u;
ww_g <= g;
TFS <= ww_TFS;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_g[7]~input_o\ <= NOT \g[7]~input_o\;
\ALT_INV_u[7]~input_o\ <= NOT \u[7]~input_o\;
\ALT_INV_g[6]~input_o\ <= NOT \g[6]~input_o\;
\ALT_INV_u[6]~input_o\ <= NOT \u[6]~input_o\;
\ALT_INV_g[4]~input_o\ <= NOT \g[4]~input_o\;
\ALT_INV_u[4]~input_o\ <= NOT \u[4]~input_o\;
\ALT_INV_g[3]~input_o\ <= NOT \g[3]~input_o\;
\ALT_INV_u[3]~input_o\ <= NOT \u[3]~input_o\;
\ALT_INV_g[2]~input_o\ <= NOT \g[2]~input_o\;
\ALT_INV_u[2]~input_o\ <= NOT \u[2]~input_o\;
\ALT_INV_g[1]~input_o\ <= NOT \g[1]~input_o\;
\ALT_INV_u[1]~input_o\ <= NOT \u[1]~input_o\;
\ALT_INV_g[0]~input_o\ <= NOT \g[0]~input_o\;
\ALT_INV_u[0]~input_o\ <= NOT \u[0]~input_o\;
\ALT_INV_g[5]~input_o\ <= NOT \g[5]~input_o\;
\ALT_INV_u[5]~input_o\ <= NOT \u[5]~input_o\;
\ALT_INV_temp~combout\ <= NOT \temp~combout\;
\ALT_INV_temp~2_combout\ <= NOT \temp~2_combout\;
\ALT_INV_temp~1_combout\ <= NOT \temp~1_combout\;
\ALT_INV_temp~0_combout\ <= NOT \temp~0_combout\;

-- Location: IOOBUF_X52_Y81_N36
\TFS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp2(1),
	devoe => ww_devoe,
	o => ww_TFS(1));

-- Location: IOOBUF_X36_Y81_N36
\TFS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp2(0),
	devoe => ww_devoe,
	o => ww_TFS(0));

-- Location: IOIBUF_X89_Y35_N61
\enter~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: CLKCTRL_G10
\enter~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \enter~input_o\,
	outclk => \enter~inputCLKENA0_outclk\);

-- Location: IOIBUF_X50_Y81_N41
\g[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(5),
	o => \g[5]~input_o\);

-- Location: IOIBUF_X50_Y81_N58
\g[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(1),
	o => \g[1]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\u[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(1),
	o => \u[1]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\u[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(2),
	o => \u[2]~input_o\);

-- Location: IOIBUF_X50_Y81_N92
\u[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(0),
	o => \u[0]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\g[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(2),
	o => \g[2]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\g[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(0),
	o => \g[0]~input_o\);

-- Location: LABCELL_X45_Y80_N6
\temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = ( \g[2]~input_o\ & ( \g[0]~input_o\ & ( (\u[2]~input_o\ & (\u[0]~input_o\ & (!\g[1]~input_o\ $ (\u[1]~input_o\)))) ) ) ) # ( !\g[2]~input_o\ & ( \g[0]~input_o\ & ( (!\u[2]~input_o\ & (\u[0]~input_o\ & (!\g[1]~input_o\ $ 
-- (\u[1]~input_o\)))) ) ) ) # ( \g[2]~input_o\ & ( !\g[0]~input_o\ & ( (\u[2]~input_o\ & (!\u[0]~input_o\ & (!\g[1]~input_o\ $ (\u[1]~input_o\)))) ) ) ) # ( !\g[2]~input_o\ & ( !\g[0]~input_o\ & ( (!\u[2]~input_o\ & (!\u[0]~input_o\ & (!\g[1]~input_o\ $ 
-- (\u[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_g[1]~input_o\,
	datab => \ALT_INV_u[1]~input_o\,
	datac => \ALT_INV_u[2]~input_o\,
	datad => \ALT_INV_u[0]~input_o\,
	datae => \ALT_INV_g[2]~input_o\,
	dataf => \ALT_INV_g[0]~input_o\,
	combout => \temp~0_combout\);

-- Location: IOIBUF_X52_Y81_N52
\g[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(4),
	o => \g[4]~input_o\);

-- Location: IOIBUF_X52_Y81_N18
\g[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(3),
	o => \g[3]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\u[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(4),
	o => \u[4]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\u[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(3),
	o => \u[3]~input_o\);

-- Location: LABCELL_X45_Y80_N12
\temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = ( \u[3]~input_o\ & ( (\g[3]~input_o\ & (!\g[4]~input_o\ $ (\u[4]~input_o\))) ) ) # ( !\u[3]~input_o\ & ( (!\g[3]~input_o\ & (!\g[4]~input_o\ $ (\u[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_g[4]~input_o\,
	datac => \ALT_INV_g[3]~input_o\,
	datad => \ALT_INV_u[4]~input_o\,
	dataf => \ALT_INV_u[3]~input_o\,
	combout => \temp~1_combout\);

-- Location: IOIBUF_X50_Y81_N75
\u[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(5),
	o => \u[5]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\g[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(7),
	o => \g[7]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\g[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(6),
	o => \g[6]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\u[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(6),
	o => \u[6]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\u[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u(7),
	o => \u[7]~input_o\);

-- Location: LABCELL_X45_Y80_N15
\temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = ( \u[7]~input_o\ & ( (\g[7]~input_o\ & (!\g[6]~input_o\ $ (\u[6]~input_o\))) ) ) # ( !\u[7]~input_o\ & ( (!\g[7]~input_o\ & (!\g[6]~input_o\ $ (\u[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_g[7]~input_o\,
	datac => \ALT_INV_g[6]~input_o\,
	datad => \ALT_INV_u[6]~input_o\,
	dataf => \ALT_INV_u[7]~input_o\,
	combout => \temp~2_combout\);

-- Location: LABCELL_X45_Y80_N33
temp : cyclonev_lcell_comb
-- Equation(s):
-- \temp~combout\ = ( \temp~2_combout\ & ( (!\temp~0_combout\) # ((!\temp~1_combout\) # (!\g[5]~input_o\ $ (!\u[5]~input_o\))) ) ) # ( !\temp~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111101111110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_g[5]~input_o\,
	datab => \ALT_INV_temp~0_combout\,
	datac => \ALT_INV_temp~1_combout\,
	datad => \ALT_INV_u[5]~input_o\,
	dataf => \ALT_INV_temp~2_combout\,
	combout => \temp~combout\);

-- Location: LABCELL_X45_Y80_N30
\temp2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp2[1]~0_combout\ = ( !\temp~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_temp~combout\,
	combout => \temp2[1]~0_combout\);

-- Location: IOIBUF_X36_Y81_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X45_Y80_N31
\temp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \enter~inputCLKENA0_outclk\,
	d => \temp2[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(1));

-- Location: FF_X45_Y80_N34
\temp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \enter~inputCLKENA0_outclk\,
	d => \temp~combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(0));

-- Location: LABCELL_X11_Y60_N0
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


