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

-- DATE "05/26/2021 03:07:32"

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

ENTITY 	matrixFace IS
    PORT (
	clk : IN std_logic;
	TFS : IN std_logic;
	gameStatus : IN std_logic;
	col_s : OUT std_logic_vector(0 TO 7);
	row_s : OUT std_logic_vector(0 TO 7)
	);
END matrixFace;

-- Design Ports Information
-- gameStatus	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TFS	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF matrixFace IS
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
SIGNAL ww_TFS : std_logic;
SIGNAL ww_gameStatus : std_logic;
SIGNAL ww_col_s : std_logic_vector(0 TO 7);
SIGNAL ww_row_s : std_logic_vector(0 TO 7);
SIGNAL \gameStatus~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \TFS~input_o\ : std_logic;
SIGNAL \cnt[0]~2_combout\ : std_logic;
SIGNAL \cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt[1]~0_combout\ : std_logic;
SIGNAL \cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt[2]~1_combout\ : std_logic;
SIGNAL \col_s~0_combout\ : std_logic;
SIGNAL \col_s[6]~reg0_q\ : std_logic;
SIGNAL \cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \col_s[5]~reg0_q\ : std_logic;
SIGNAL \col_s~1_combout\ : std_logic;
SIGNAL \col_s[4]~reg0_q\ : std_logic;
SIGNAL \col_s[3]~reg0_q\ : std_logic;
SIGNAL \col_s[2]~reg0_q\ : std_logic;
SIGNAL \col_s[1]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \row_s[7]~reg0_q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \row_s[6]~reg0_q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \row_s[5]~reg0_q\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \row_s[4]~reg0_q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \row_s[3]~reg0_q\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \row_s[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \row_s[1]~reg0_q\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \row_s[0]~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_TFS~input_o\ : std_logic;
SIGNAL ALT_INV_cnt : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_TFS <= TFS;
ww_gameStatus <= gameStatus;
col_s <= ww_col_s;
row_s <= ww_row_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cnt[2]~DUPLICATE_q\ <= NOT \cnt[2]~DUPLICATE_q\;
\ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \cnt[1]~DUPLICATE_q\;
\ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \cnt[0]~DUPLICATE_q\;
\ALT_INV_TFS~input_o\ <= NOT \TFS~input_o\;
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_cnt(1) <= NOT cnt(1);
ALT_INV_cnt(0) <= NOT cnt(0);

-- Location: IOOBUF_X26_Y0_N93
\col_s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_col_s(7));

-- Location: IOOBUF_X54_Y0_N36
\col_s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \col_s[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_col_s(6));

-- Location: IOOBUF_X54_Y0_N53
\col_s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \col_s[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_col_s(5));

-- Location: IOOBUF_X60_Y0_N2
\col_s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \col_s[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_col_s(4));

-- Location: IOOBUF_X58_Y0_N59
\col_s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \col_s[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_col_s(3));

-- Location: IOOBUF_X60_Y0_N53
\col_s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \col_s[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_col_s(2));

-- Location: IOOBUF_X58_Y0_N93
\col_s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \col_s[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_col_s(1));

-- Location: IOOBUF_X58_Y81_N76
\col_s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_col_s(0));

-- Location: IOOBUF_X54_Y0_N19
\row_s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(7));

-- Location: IOOBUF_X60_Y0_N36
\row_s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(6));

-- Location: IOOBUF_X56_Y0_N19
\row_s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(5));

-- Location: IOOBUF_X56_Y0_N36
\row_s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(4));

-- Location: IOOBUF_X58_Y0_N42
\row_s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(3));

-- Location: IOOBUF_X56_Y0_N2
\row_s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(2));

-- Location: IOOBUF_X56_Y0_N53
\row_s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(1));

-- Location: IOOBUF_X58_Y0_N76
\row_s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \row_s[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_row_s(0));

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

-- Location: IOIBUF_X60_Y0_N18
\TFS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TFS,
	o => \TFS~input_o\);

-- Location: FF_X57_Y1_N38
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LABCELL_X57_Y1_N36
\cnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[0]~2_combout\ = !cnt(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(0),
	combout => \cnt[0]~2_combout\);

-- Location: FF_X57_Y1_N37
\cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y1_N21
\cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[1]~0_combout\ = ( cnt(1) & ( !\cnt[0]~DUPLICATE_q\ ) ) # ( !cnt(1) & ( \cnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datae => ALT_INV_cnt(1),
	combout => \cnt[1]~0_combout\);

-- Location: FF_X57_Y1_N23
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: FF_X57_Y1_N22
\cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y1_N12
\cnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[2]~1_combout\ = ( cnt(2) & ( cnt(0) & ( !\cnt[1]~DUPLICATE_q\ ) ) ) # ( !cnt(2) & ( cnt(0) & ( \cnt[1]~DUPLICATE_q\ ) ) ) # ( cnt(2) & ( !cnt(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => ALT_INV_cnt(2),
	dataf => ALT_INV_cnt(0),
	combout => \cnt[2]~1_combout\);

-- Location: FF_X57_Y1_N13
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LABCELL_X57_Y1_N45
\col_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \col_s~0_combout\ = ( cnt(0) & ( cnt(2) & ( !\TFS~input_o\ $ (!cnt(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_TFS~input_o\,
	datad => ALT_INV_cnt(1),
	datae => ALT_INV_cnt(0),
	dataf => ALT_INV_cnt(2),
	combout => \col_s~0_combout\);

-- Location: FF_X57_Y1_N43
\col_s[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \col_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_s[6]~reg0_q\);

-- Location: FF_X57_Y1_N14
\cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y1_N33
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \cnt[0]~DUPLICATE_q\ & ( !\cnt[2]~DUPLICATE_q\ ) ) # ( !\cnt[0]~DUPLICATE_q\ & ( cnt(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[2]~DUPLICATE_q\,
	datad => ALT_INV_cnt(1),
	dataf => \ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: FF_X57_Y1_N20
\col_s[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mux2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_s[5]~reg0_q\);

-- Location: LABCELL_X57_Y1_N57
\col_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \col_s~1_combout\ = ( cnt(0) & ( cnt(2) & ( !\TFS~input_o\ $ (cnt(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_TFS~input_o\,
	datad => ALT_INV_cnt(1),
	datae => ALT_INV_cnt(0),
	dataf => ALT_INV_cnt(2),
	combout => \col_s~1_combout\);

-- Location: FF_X57_Y1_N55
\col_s[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \col_s~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_s[4]~reg0_q\);

-- Location: FF_X57_Y1_N58
\col_s[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \col_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_s[3]~reg0_q\);

-- Location: FF_X57_Y1_N34
\col_s[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_s[2]~reg0_q\);

-- Location: FF_X57_Y1_N47
\col_s[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \col_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_s[1]~reg0_q\);

-- Location: LABCELL_X57_Y1_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \cnt[1]~DUPLICATE_q\ & ( (!\cnt[0]~DUPLICATE_q\) # (!\cnt[2]~DUPLICATE_q\) ) ) # ( !\cnt[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[2]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X57_Y1_N52
\row_s[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[7]~reg0_q\);

-- Location: LABCELL_X57_Y1_N3
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \cnt[1]~DUPLICATE_q\ & ( (!\cnt[2]~DUPLICATE_q\) # (\cnt[0]~DUPLICATE_q\) ) ) # ( !\cnt[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \Mux3~1_combout\);

-- Location: FF_X57_Y1_N4
\row_s[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[6]~reg0_q\);

-- Location: LABCELL_X57_Y1_N48
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \cnt[1]~DUPLICATE_q\ ) # ( !\cnt[1]~DUPLICATE_q\ & ( (!\cnt[2]~DUPLICATE_q\) # (!\cnt[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \Mux3~2_combout\);

-- Location: FF_X57_Y1_N50
\row_s[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[5]~reg0_q\);

-- Location: LABCELL_X57_Y1_N0
\Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( cnt(0) ) # ( !cnt(0) & ( (!\cnt[2]~DUPLICATE_q\) # (\cnt[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[2]~DUPLICATE_q\,
	dataf => ALT_INV_cnt(0),
	combout => \Mux3~3_combout\);

-- Location: FF_X57_Y1_N1
\row_s[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[4]~reg0_q\);

-- Location: LABCELL_X57_Y1_N9
\Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \cnt[1]~DUPLICATE_q\ & ( (!\cnt[0]~DUPLICATE_q\) # (\cnt[2]~DUPLICATE_q\) ) ) # ( !\cnt[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[2]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \Mux3~4_combout\);

-- Location: FF_X57_Y1_N10
\row_s[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[3]~reg0_q\);

-- Location: LABCELL_X57_Y1_N30
\Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = ( cnt(0) ) # ( !cnt(0) & ( (!\cnt[1]~DUPLICATE_q\) # (\cnt[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt[1]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[2]~DUPLICATE_q\,
	dataf => ALT_INV_cnt(0),
	combout => \Mux3~5_combout\);

-- Location: FF_X57_Y1_N32
\row_s[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[2]~reg0_q\);

-- Location: LABCELL_X57_Y1_N6
\Mux3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = ( \cnt[1]~DUPLICATE_q\ ) # ( !\cnt[1]~DUPLICATE_q\ & ( (!\cnt[0]~DUPLICATE_q\) # (\cnt[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \Mux3~6_combout\);

-- Location: FF_X57_Y1_N7
\row_s[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[1]~reg0_q\);

-- Location: LABCELL_X57_Y1_N39
\Mux3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = ( \cnt[1]~DUPLICATE_q\ ) # ( !\cnt[1]~DUPLICATE_q\ & ( (\cnt[2]~DUPLICATE_q\) # (\cnt[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt[2]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \Mux3~7_combout\);

-- Location: FF_X57_Y1_N41
\row_s[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row_s[0]~reg0_q\);

-- Location: IOIBUF_X89_Y9_N55
\gameStatus~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gameStatus,
	o => \gameStatus~input_o\);

-- Location: LABCELL_X45_Y17_N0
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


