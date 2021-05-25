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

-- DATE "05/26/2021 03:12:57"

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

ENTITY 	genFace IS
    PORT (
	col_s0 : OUT std_logic;
	clock : IN std_logic;
	TFS : IN std_logic;
	gameStatus : IN std_logic;
	col_s1 : OUT std_logic;
	col_s2 : OUT std_logic;
	col_s3 : OUT std_logic;
	col_s4 : OUT std_logic;
	col_s5 : OUT std_logic;
	col_s6 : OUT std_logic;
	col_s7 : OUT std_logic;
	row_s0 : OUT std_logic;
	row_s1 : OUT std_logic;
	row_s2 : OUT std_logic;
	row_s3 : OUT std_logic;
	row_s4 : OUT std_logic;
	row_s5 : OUT std_logic;
	row_s6 : OUT std_logic;
	row_s7 : OUT std_logic
	);
END genFace;

-- Design Ports Information
-- col_s0	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gameStatus	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s1	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s3	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s4	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s5	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s6	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_s7	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s0	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s1	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s2	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s3	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s4	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s5	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s6	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_s7	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TFS	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF genFace IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_col_s0 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_TFS : std_logic;
SIGNAL ww_gameStatus : std_logic;
SIGNAL ww_col_s1 : std_logic;
SIGNAL ww_col_s2 : std_logic;
SIGNAL ww_col_s3 : std_logic;
SIGNAL ww_col_s4 : std_logic;
SIGNAL ww_col_s5 : std_logic;
SIGNAL ww_col_s6 : std_logic;
SIGNAL ww_col_s7 : std_logic;
SIGNAL ww_row_s0 : std_logic;
SIGNAL ww_row_s1 : std_logic;
SIGNAL ww_row_s2 : std_logic;
SIGNAL ww_row_s3 : std_logic;
SIGNAL ww_row_s4 : std_logic;
SIGNAL ww_row_s5 : std_logic;
SIGNAL ww_row_s6 : std_logic;
SIGNAL ww_row_s7 : std_logic;
SIGNAL \gameStatus~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~34\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|counter~2_combout\ : std_logic;
SIGNAL \inst1|Add0~18\ : std_logic;
SIGNAL \inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|counter~4_combout\ : std_logic;
SIGNAL \inst1|counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~30\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~49_sumout\ : std_logic;
SIGNAL \inst1|Add0~50\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|counter~1_combout\ : std_logic;
SIGNAL \inst1|counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~46\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~65_sumout\ : std_logic;
SIGNAL \inst1|Add0~66\ : std_logic;
SIGNAL \inst1|Add0~2\ : std_logic;
SIGNAL \inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|counter~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~26\ : std_logic;
SIGNAL \inst1|Add0~61_sumout\ : std_logic;
SIGNAL \inst1|counter~8_combout\ : std_logic;
SIGNAL \inst1|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~62\ : std_logic;
SIGNAL \inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|Add0~22\ : std_logic;
SIGNAL \inst1|Add0~57_sumout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Add0~58\ : std_logic;
SIGNAL \inst1|Add0~53_sumout\ : std_logic;
SIGNAL \inst1|counter~7_combout\ : std_logic;
SIGNAL \inst1|counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~54\ : std_logic;
SIGNAL \inst1|Add0~33_sumout\ : std_logic;
SIGNAL \inst1|counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \inst1|Add0~45_sumout\ : std_logic;
SIGNAL \inst1|counter~6_combout\ : std_logic;
SIGNAL \inst1|counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~41_sumout\ : std_logic;
SIGNAL \inst1|counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Add0~42\ : std_logic;
SIGNAL \inst1|Add0~37_sumout\ : std_logic;
SIGNAL \inst1|counter~5_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|counter~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|PULSE~0_combout\ : std_logic;
SIGNAL \inst1|PULSE~q\ : std_logic;
SIGNAL \inst|cnt[0]~2_combout\ : std_logic;
SIGNAL \inst|cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst|cnt[2]~1_combout\ : std_logic;
SIGNAL \inst|cnt[2]~feeder_combout\ : std_logic;
SIGNAL \TFS~input_o\ : std_logic;
SIGNAL \inst|col_s~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|col_s[2]~feeder_combout\ : std_logic;
SIGNAL \inst|col_s~1_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Mux3~6_combout\ : std_logic;
SIGNAL \inst|Mux3~7_combout\ : std_logic;
SIGNAL \inst|row_s\ : std_logic_vector(0 TO 7);
SIGNAL \inst|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|col_s\ : std_logic_vector(0 TO 7);
SIGNAL \inst1|counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_TFS~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cnt[2]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_PULSE~q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

col_s0 <= ww_col_s0;
ww_clock <= clock;
ww_TFS <= TFS;
ww_gameStatus <= gameStatus;
col_s1 <= ww_col_s1;
col_s2 <= ww_col_s2;
col_s3 <= ww_col_s3;
col_s4 <= ww_col_s4;
col_s5 <= ww_col_s5;
col_s6 <= ww_col_s6;
col_s7 <= ww_col_s7;
row_s0 <= ww_row_s0;
row_s1 <= ww_row_s1;
row_s2 <= ww_row_s2;
row_s3 <= ww_row_s3;
row_s4 <= ww_row_s4;
row_s5 <= ww_row_s5;
row_s6 <= ww_row_s6;
row_s7 <= ww_row_s7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \inst1|counter[3]~DUPLICATE_q\;
\inst1|ALT_INV_counter[6]~DUPLICATE_q\ <= NOT \inst1|counter[6]~DUPLICATE_q\;
\inst1|ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \inst1|counter[13]~DUPLICATE_q\;
\inst1|ALT_INV_counter[15]~DUPLICATE_q\ <= NOT \inst1|counter[15]~DUPLICATE_q\;
\inst1|ALT_INV_counter[16]~DUPLICATE_q\ <= NOT \inst1|counter[16]~DUPLICATE_q\;
\inst1|ALT_INV_counter[7]~DUPLICATE_q\ <= NOT \inst1|counter[7]~DUPLICATE_q\;
\inst1|ALT_INV_counter[9]~DUPLICATE_q\ <= NOT \inst1|counter[9]~DUPLICATE_q\;
\inst1|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \inst1|counter[2]~DUPLICATE_q\;
\inst1|ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \inst1|counter[12]~DUPLICATE_q\;
\inst1|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \inst1|counter[1]~DUPLICATE_q\;
\inst|ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \inst|cnt[0]~DUPLICATE_q\;
\ALT_INV_TFS~input_o\ <= NOT \TFS~input_o\;
\inst1|ALT_INV_Equal1~2_combout\ <= NOT \inst1|Equal1~2_combout\;
\inst1|ALT_INV_Equal1~1_combout\ <= NOT \inst1|Equal1~1_combout\;
\inst1|ALT_INV_Equal1~0_combout\ <= NOT \inst1|Equal1~0_combout\;
\inst1|ALT_INV_Equal0~3_combout\ <= NOT \inst1|Equal0~3_combout\;
\inst1|ALT_INV_Equal0~2_combout\ <= NOT \inst1|Equal0~2_combout\;
\inst1|ALT_INV_counter\(0) <= NOT \inst1|counter\(0);
\inst1|ALT_INV_counter\(3) <= NOT \inst1|counter\(3);
\inst1|ALT_INV_counter\(5) <= NOT \inst1|counter\(5);
\inst1|ALT_INV_counter\(6) <= NOT \inst1|counter\(6);
\inst1|ALT_INV_Equal0~1_combout\ <= NOT \inst1|Equal0~1_combout\;
\inst1|ALT_INV_counter\(11) <= NOT \inst1|counter\(11);
\inst1|ALT_INV_counter\(13) <= NOT \inst1|counter\(13);
\inst1|ALT_INV_counter\(15) <= NOT \inst1|counter\(15);
\inst1|ALT_INV_counter\(16) <= NOT \inst1|counter\(16);
\inst1|ALT_INV_counter\(7) <= NOT \inst1|counter\(7);
\inst1|ALT_INV_counter\(9) <= NOT \inst1|counter\(9);
\inst1|ALT_INV_Equal0~0_combout\ <= NOT \inst1|Equal0~0_combout\;
\inst1|ALT_INV_counter\(2) <= NOT \inst1|counter\(2);
\inst1|ALT_INV_counter\(4) <= NOT \inst1|counter\(4);
\inst1|ALT_INV_counter\(8) <= NOT \inst1|counter\(8);
\inst1|ALT_INV_counter\(10) <= NOT \inst1|counter\(10);
\inst1|ALT_INV_counter\(12) <= NOT \inst1|counter\(12);
\inst1|ALT_INV_counter\(14) <= NOT \inst1|counter\(14);
\inst1|ALT_INV_counter\(1) <= NOT \inst1|counter\(1);
\inst|ALT_INV_cnt[2]~1_combout\ <= NOT \inst|cnt[2]~1_combout\;
\inst1|ALT_INV_PULSE~q\ <= NOT \inst1|PULSE~q\;
\inst|ALT_INV_Mux2~0_combout\ <= NOT \inst|Mux2~0_combout\;
\inst|ALT_INV_cnt\(2) <= NOT \inst|cnt\(2);
\inst|ALT_INV_cnt\(1) <= NOT \inst|cnt\(1);
\inst|ALT_INV_cnt\(0) <= NOT \inst|cnt\(0);
\inst1|ALT_INV_Add0~61_sumout\ <= NOT \inst1|Add0~61_sumout\;
\inst1|ALT_INV_Add0~53_sumout\ <= NOT \inst1|Add0~53_sumout\;
\inst1|ALT_INV_Add0~45_sumout\ <= NOT \inst1|Add0~45_sumout\;
\inst1|ALT_INV_Add0~37_sumout\ <= NOT \inst1|Add0~37_sumout\;
\inst1|ALT_INV_Add0~29_sumout\ <= NOT \inst1|Add0~29_sumout\;
\inst1|ALT_INV_Add0~25_sumout\ <= NOT \inst1|Add0~25_sumout\;
\inst1|ALT_INV_Add0~17_sumout\ <= NOT \inst1|Add0~17_sumout\;
\inst1|ALT_INV_Add0~9_sumout\ <= NOT \inst1|Add0~9_sumout\;
\inst1|ALT_INV_Add0~1_sumout\ <= NOT \inst1|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y4_N45
\col_s0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_col_s0);

-- Location: IOOBUF_X89_Y36_N56
\col_s1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|col_s\(1),
	devoe => ww_devoe,
	o => ww_col_s1);

-- Location: IOOBUF_X66_Y81_N59
\col_s2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|col_s\(2),
	devoe => ww_devoe,
	o => ww_col_s2);

-- Location: IOOBUF_X64_Y0_N36
\col_s3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|col_s\(3),
	devoe => ww_devoe,
	o => ww_col_s3);

-- Location: IOOBUF_X89_Y35_N79
\col_s4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|col_s\(4),
	devoe => ww_devoe,
	o => ww_col_s4);

-- Location: IOOBUF_X89_Y36_N5
\col_s5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|col_s\(5),
	devoe => ww_devoe,
	o => ww_col_s5);

-- Location: IOOBUF_X89_Y35_N45
\col_s6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|col_s\(6),
	devoe => ww_devoe,
	o => ww_col_s6);

-- Location: IOOBUF_X62_Y0_N53
\col_s7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_col_s7);

-- Location: IOOBUF_X64_Y0_N53
\row_s0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(0),
	devoe => ww_devoe,
	o => ww_row_s0);

-- Location: IOOBUF_X66_Y0_N59
\row_s1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(1),
	devoe => ww_devoe,
	o => ww_row_s1);

-- Location: IOOBUF_X66_Y0_N76
\row_s2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(2),
	devoe => ww_devoe,
	o => ww_row_s2);

-- Location: IOOBUF_X64_Y0_N2
\row_s3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(3),
	devoe => ww_devoe,
	o => ww_row_s3);

-- Location: IOOBUF_X66_Y0_N42
\row_s4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(4),
	devoe => ww_devoe,
	o => ww_row_s4);

-- Location: IOOBUF_X89_Y9_N56
\row_s5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(5),
	devoe => ww_devoe,
	o => ww_row_s5);

-- Location: IOOBUF_X66_Y0_N93
\row_s6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(6),
	devoe => ww_devoe,
	o => ww_row_s6);

-- Location: IOOBUF_X89_Y35_N96
\row_s7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|row_s\(7),
	devoe => ww_devoe,
	o => ww_row_s7);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: FF_X68_Y31_N22
\inst1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(7));

-- Location: FF_X68_Y31_N58
\inst1|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N21
\inst1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~33_sumout\ = SUM(( \inst1|counter\(7) ) + ( GND ) + ( \inst1|Add0~54\ ))
-- \inst1|Add0~34\ = CARRY(( \inst1|counter\(7) ) + ( GND ) + ( \inst1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(7),
	cin => \inst1|Add0~54\,
	sumout => \inst1|Add0~33_sumout\,
	cout => \inst1|Add0~34\);

-- Location: LABCELL_X68_Y31_N24
\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( \inst1|counter\(8) ) + ( GND ) + ( \inst1|Add0~34\ ))
-- \inst1|Add0~18\ = CARRY(( \inst1|counter\(8) ) + ( GND ) + ( \inst1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(8),
	cin => \inst1|Add0~34\,
	sumout => \inst1|Add0~17_sumout\,
	cout => \inst1|Add0~18\);

-- Location: LABCELL_X68_Y31_N54
\inst1|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~2_combout\ = ( \inst1|counter[1]~DUPLICATE_q\ & ( \inst1|Add0~17_sumout\ & ( (!\inst1|Equal1~0_combout\) # ((!\inst1|Equal1~1_combout\) # ((!\inst1|Equal0~0_combout\) # (\inst1|counter\(7)))) ) ) ) # ( !\inst1|counter[1]~DUPLICATE_q\ & ( 
-- \inst1|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal1~0_combout\,
	datab => \inst1|ALT_INV_Equal1~1_combout\,
	datac => \inst1|ALT_INV_Equal0~0_combout\,
	datad => \inst1|ALT_INV_counter\(7),
	datae => \inst1|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_Add0~17_sumout\,
	combout => \inst1|counter~2_combout\);

-- Location: FF_X68_Y31_N56
\inst1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(8));

-- Location: LABCELL_X68_Y31_N27
\inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_sumout\ = SUM(( \inst1|counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~18\ ))
-- \inst1|Add0~30\ = CARRY(( \inst1|counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter[9]~DUPLICATE_q\,
	cin => \inst1|Add0~18\,
	sumout => \inst1|Add0~29_sumout\,
	cout => \inst1|Add0~30\);

-- Location: LABCELL_X67_Y31_N42
\inst1|counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~4_combout\ = ( \inst1|Add0~29_sumout\ & ( \inst1|Equal0~0_combout\ & ( ((!\inst1|counter[1]~DUPLICATE_q\) # ((!\inst1|Equal1~1_combout\) # (!\inst1|Equal1~0_combout\))) # (\inst1|counter[7]~DUPLICATE_q\) ) ) ) # ( \inst1|Add0~29_sumout\ & ( 
-- !\inst1|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter[7]~DUPLICATE_q\,
	datab => \inst1|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \inst1|ALT_INV_Equal1~1_combout\,
	datad => \inst1|ALT_INV_Equal1~0_combout\,
	datae => \inst1|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|ALT_INV_Equal0~0_combout\,
	combout => \inst1|counter~4_combout\);

-- Location: FF_X67_Y31_N43
\inst1|counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N30
\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( \inst1|counter\(10) ) + ( GND ) + ( \inst1|Add0~30\ ))
-- \inst1|Add0~14\ = CARRY(( \inst1|counter\(10) ) + ( GND ) + ( \inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(10),
	cin => \inst1|Add0~30\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

-- Location: FF_X68_Y31_N32
\inst1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(10));

-- Location: FF_X67_Y31_N28
\inst1|counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N33
\inst1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~49_sumout\ = SUM(( \inst1|counter\(11) ) + ( GND ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~50\ = CARRY(( \inst1|counter\(11) ) + ( GND ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(11),
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~49_sumout\,
	cout => \inst1|Add0~50\);

-- Location: FF_X68_Y31_N35
\inst1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(11));

-- Location: LABCELL_X68_Y31_N36
\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( \inst1|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~50\ ))
-- \inst1|Add0~10\ = CARRY(( \inst1|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter[12]~DUPLICATE_q\,
	cin => \inst1|Add0~50\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

-- Location: LABCELL_X67_Y31_N27
\inst1|counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~1_combout\ = ( \inst1|Add0~9_sumout\ & ( !\inst1|Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Equal1~2_combout\,
	dataf => \inst1|ALT_INV_Add0~9_sumout\,
	combout => \inst1|counter~1_combout\);

-- Location: FF_X67_Y31_N29
\inst1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(12));

-- Location: FF_X67_Y31_N52
\inst1|counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N39
\inst1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~45_sumout\ = SUM(( \inst1|counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~46\ = CARRY(( \inst1|counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter[13]~DUPLICATE_q\,
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~45_sumout\,
	cout => \inst1|Add0~46\);

-- Location: LABCELL_X68_Y31_N42
\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( \inst1|counter\(14) ) + ( GND ) + ( \inst1|Add0~46\ ))
-- \inst1|Add0~6\ = CARRY(( \inst1|counter\(14) ) + ( GND ) + ( \inst1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(14),
	cin => \inst1|Add0~46\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

-- Location: FF_X68_Y31_N44
\inst1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(14));

-- Location: FF_X67_Y31_N31
\inst1|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N0
\inst1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~65_sumout\ = SUM(( \inst1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst1|Add0~66\ = CARRY(( \inst1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst1|Add0~65_sumout\,
	cout => \inst1|Add0~66\);

-- Location: FF_X68_Y31_N2
\inst1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(0));

-- Location: LABCELL_X68_Y31_N3
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( \inst1|counter\(1) ) + ( GND ) + ( \inst1|Add0~66\ ))
-- \inst1|Add0~2\ = CARRY(( \inst1|counter\(1) ) + ( GND ) + ( \inst1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(1),
	cin => \inst1|Add0~66\,
	sumout => \inst1|Add0~1_sumout\,
	cout => \inst1|Add0~2\);

-- Location: LABCELL_X68_Y31_N6
\inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_sumout\ = SUM(( \inst1|counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~2\ ))
-- \inst1|Add0~26\ = CARRY(( \inst1|counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter[2]~DUPLICATE_q\,
	cin => \inst1|Add0~2\,
	sumout => \inst1|Add0~25_sumout\,
	cout => \inst1|Add0~26\);

-- Location: LABCELL_X67_Y31_N30
\inst1|counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~3_combout\ = ( \inst1|Equal1~1_combout\ & ( \inst1|Add0~25_sumout\ & ( ((!\inst1|Equal1~0_combout\) # ((!\inst1|counter\(1)) # (!\inst1|Equal0~0_combout\))) # (\inst1|counter[7]~DUPLICATE_q\) ) ) ) # ( !\inst1|Equal1~1_combout\ & ( 
-- \inst1|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter[7]~DUPLICATE_q\,
	datab => \inst1|ALT_INV_Equal1~0_combout\,
	datac => \inst1|ALT_INV_counter\(1),
	datad => \inst1|ALT_INV_Equal0~0_combout\,
	datae => \inst1|ALT_INV_Equal1~1_combout\,
	dataf => \inst1|ALT_INV_Add0~25_sumout\,
	combout => \inst1|counter~3_combout\);

-- Location: FF_X67_Y31_N32
\inst1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(2));

-- Location: LABCELL_X67_Y31_N6
\inst1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = ( !\inst1|counter\(14) & ( \inst1|counter\(2) & ( (!\inst1|counter\(10) & (!\inst1|counter\(4) & (\inst1|counter\(12) & \inst1|counter\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(10),
	datab => \inst1|ALT_INV_counter\(4),
	datac => \inst1|ALT_INV_counter\(12),
	datad => \inst1|ALT_INV_counter\(8),
	datae => \inst1|ALT_INV_counter\(14),
	dataf => \inst1|ALT_INV_counter\(2),
	combout => \inst1|Equal0~0_combout\);

-- Location: LABCELL_X68_Y31_N9
\inst1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~61_sumout\ = SUM(( \inst1|counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~26\ ))
-- \inst1|Add0~62\ = CARRY(( \inst1|counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter[3]~DUPLICATE_q\,
	cin => \inst1|Add0~26\,
	sumout => \inst1|Add0~61_sumout\,
	cout => \inst1|Add0~62\);

-- Location: LABCELL_X67_Y31_N33
\inst1|counter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~8_combout\ = ( \inst1|Equal1~1_combout\ & ( \inst1|Add0~61_sumout\ & ( ((!\inst1|Equal1~0_combout\) # ((!\inst1|Equal0~0_combout\) # (!\inst1|counter\(1)))) # (\inst1|counter[7]~DUPLICATE_q\) ) ) ) # ( !\inst1|Equal1~1_combout\ & ( 
-- \inst1|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter[7]~DUPLICATE_q\,
	datab => \inst1|ALT_INV_Equal1~0_combout\,
	datac => \inst1|ALT_INV_Equal0~0_combout\,
	datad => \inst1|ALT_INV_counter\(1),
	datae => \inst1|ALT_INV_Equal1~1_combout\,
	dataf => \inst1|ALT_INV_Add0~61_sumout\,
	combout => \inst1|counter~8_combout\);

-- Location: FF_X67_Y31_N34
\inst1|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N12
\inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_sumout\ = SUM(( \inst1|counter\(4) ) + ( GND ) + ( \inst1|Add0~62\ ))
-- \inst1|Add0~22\ = CARRY(( \inst1|counter\(4) ) + ( GND ) + ( \inst1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(4),
	cin => \inst1|Add0~62\,
	sumout => \inst1|Add0~21_sumout\,
	cout => \inst1|Add0~22\);

-- Location: FF_X68_Y31_N14
\inst1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(4));

-- Location: LABCELL_X68_Y31_N15
\inst1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~57_sumout\ = SUM(( \inst1|counter\(5) ) + ( GND ) + ( \inst1|Add0~22\ ))
-- \inst1|Add0~58\ = CARRY(( \inst1|counter\(5) ) + ( GND ) + ( \inst1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(5),
	cin => \inst1|Add0~22\,
	sumout => \inst1|Add0~57_sumout\,
	cout => \inst1|Add0~58\);

-- Location: FF_X68_Y31_N17
\inst1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(5));

-- Location: FF_X67_Y31_N35
\inst1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(3));

-- Location: FF_X67_Y31_N41
\inst1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(6));

-- Location: LABCELL_X67_Y31_N48
\inst1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = ( \inst1|counter\(6) & ( (!\inst1|counter\(5) & (\inst1|counter\(3) & !\inst1|counter\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(5),
	datac => \inst1|ALT_INV_counter\(3),
	datad => \inst1|ALT_INV_counter\(0),
	dataf => \inst1|ALT_INV_counter\(6),
	combout => \inst1|Equal1~1_combout\);

-- Location: LABCELL_X68_Y31_N18
\inst1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~53_sumout\ = SUM(( \inst1|counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~58\ ))
-- \inst1|Add0~54\ = CARRY(( \inst1|counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter[6]~DUPLICATE_q\,
	cin => \inst1|Add0~58\,
	sumout => \inst1|Add0~53_sumout\,
	cout => \inst1|Add0~54\);

-- Location: LABCELL_X67_Y31_N39
\inst1|counter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~7_combout\ = ( \inst1|Add0~53_sumout\ & ( \inst1|Equal0~0_combout\ & ( ((!\inst1|Equal1~1_combout\) # ((!\inst1|Equal1~0_combout\) # (!\inst1|counter\(1)))) # (\inst1|counter[7]~DUPLICATE_q\) ) ) ) # ( \inst1|Add0~53_sumout\ & ( 
-- !\inst1|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter[7]~DUPLICATE_q\,
	datab => \inst1|ALT_INV_Equal1~1_combout\,
	datac => \inst1|ALT_INV_Equal1~0_combout\,
	datad => \inst1|ALT_INV_counter\(1),
	datae => \inst1|ALT_INV_Add0~53_sumout\,
	dataf => \inst1|ALT_INV_Equal0~0_combout\,
	combout => \inst1|counter~7_combout\);

-- Location: FF_X67_Y31_N40
\inst1|counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[6]~DUPLICATE_q\);

-- Location: FF_X68_Y31_N23
\inst1|counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y31_N15
\inst1|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = ( \inst1|counter[1]~DUPLICATE_q\ & ( \inst1|Equal1~0_combout\ & ( (!\inst1|counter[7]~DUPLICATE_q\ & (\inst1|Equal0~0_combout\ & \inst1|Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter[7]~DUPLICATE_q\,
	datac => \inst1|ALT_INV_Equal0~0_combout\,
	datad => \inst1|ALT_INV_Equal1~1_combout\,
	datae => \inst1|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_Equal1~0_combout\,
	combout => \inst1|Equal1~2_combout\);

-- Location: LABCELL_X67_Y31_N51
\inst1|counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~6_combout\ = ( \inst1|Add0~45_sumout\ & ( !\inst1|Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Equal1~2_combout\,
	dataf => \inst1|ALT_INV_Add0~45_sumout\,
	combout => \inst1|counter~6_combout\);

-- Location: FF_X67_Y31_N53
\inst1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(13));

-- Location: FF_X67_Y31_N44
\inst1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(9));

-- Location: FF_X67_Y31_N22
\inst1|counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[16]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N45
\inst1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~41_sumout\ = SUM(( \inst1|counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~6\ ))
-- \inst1|Add0~42\ = CARRY(( \inst1|counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter[15]~DUPLICATE_q\,
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~41_sumout\,
	cout => \inst1|Add0~42\);

-- Location: FF_X67_Y31_N10
\inst1|counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \inst1|Add0~41_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y31_N48
\inst1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~37_sumout\ = SUM(( \inst1|counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter[16]~DUPLICATE_q\,
	cin => \inst1|Add0~42\,
	sumout => \inst1|Add0~37_sumout\);

-- Location: LABCELL_X67_Y31_N21
\inst1|counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~5_combout\ = ( \inst1|Add0~37_sumout\ & ( !\inst1|Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Equal1~2_combout\,
	dataf => \inst1|ALT_INV_Add0~37_sumout\,
	combout => \inst1|counter~5_combout\);

-- Location: FF_X67_Y31_N23
\inst1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(16));

-- Location: FF_X67_Y31_N11
\inst1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \inst1|Add0~41_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(15));

-- Location: LABCELL_X67_Y31_N18
\inst1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = ( !\inst1|counter\(15) & ( (\inst1|counter\(13) & (\inst1|counter\(9) & (!\inst1|counter\(11) & \inst1|counter\(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(13),
	datab => \inst1|ALT_INV_counter\(9),
	datac => \inst1|ALT_INV_counter\(11),
	datad => \inst1|ALT_INV_counter\(16),
	dataf => \inst1|ALT_INV_counter\(15),
	combout => \inst1|Equal1~0_combout\);

-- Location: LABCELL_X68_Y31_N57
\inst1|counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|counter~0_combout\ = ( \inst1|counter\(1) & ( \inst1|Add0~1_sumout\ & ( (!\inst1|Equal1~0_combout\) # ((!\inst1|Equal1~1_combout\) # ((!\inst1|Equal0~0_combout\) # (\inst1|counter\(7)))) ) ) ) # ( !\inst1|counter\(1) & ( \inst1|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal1~0_combout\,
	datab => \inst1|ALT_INV_Equal1~1_combout\,
	datac => \inst1|ALT_INV_counter\(7),
	datad => \inst1|ALT_INV_Equal0~0_combout\,
	datae => \inst1|ALT_INV_counter\(1),
	dataf => \inst1|ALT_INV_Add0~1_sumout\,
	combout => \inst1|counter~0_combout\);

-- Location: FF_X68_Y31_N59
\inst1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(1));

-- Location: LABCELL_X67_Y31_N54
\inst1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = ( !\inst1|counter\(16) & ( \inst1|counter\(11) & ( (!\inst1|counter\(13) & \inst1|counter\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(13),
	datad => \inst1|ALT_INV_counter\(15),
	datae => \inst1|ALT_INV_counter\(16),
	dataf => \inst1|ALT_INV_counter\(11),
	combout => \inst1|Equal0~1_combout\);

-- Location: LABCELL_X67_Y31_N3
\inst1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = ( !\inst1|counter\(3) & ( (\inst1|counter\(0) & (!\inst1|counter\(6) & \inst1|counter\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(0),
	datac => \inst1|ALT_INV_counter\(6),
	datad => \inst1|ALT_INV_counter\(5),
	dataf => \inst1|ALT_INV_counter\(3),
	combout => \inst1|Equal0~2_combout\);

-- Location: LABCELL_X67_Y31_N0
\inst1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = ( \inst1|Equal0~2_combout\ & ( (!\inst1|counter\(9) & (\inst1|counter[7]~DUPLICATE_q\ & \inst1|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_counter\(9),
	datac => \inst1|ALT_INV_counter[7]~DUPLICATE_q\,
	datad => \inst1|ALT_INV_Equal0~1_combout\,
	dataf => \inst1|ALT_INV_Equal0~2_combout\,
	combout => \inst1|Equal0~3_combout\);

-- Location: LABCELL_X67_Y31_N24
\inst1|PULSE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|PULSE~0_combout\ = ( \inst1|Equal1~2_combout\ & ( !\inst1|PULSE~q\ ) ) # ( !\inst1|Equal1~2_combout\ & ( !\inst1|PULSE~q\ $ (((!\inst1|counter\(1)) # ((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(1),
	datab => \inst1|ALT_INV_Equal0~0_combout\,
	datac => \inst1|ALT_INV_Equal0~3_combout\,
	datad => \inst1|ALT_INV_PULSE~q\,
	dataf => \inst1|ALT_INV_Equal1~2_combout\,
	combout => \inst1|PULSE~0_combout\);

-- Location: FF_X67_Y31_N59
\inst1|PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \inst1|PULSE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PULSE~q\);

-- Location: LABCELL_X66_Y31_N21
\inst|cnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~2_combout\ = ( !\inst|cnt[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \inst|cnt[0]~2_combout\);

-- Location: FF_X66_Y31_N20
\inst|cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	asdata => \inst|cnt[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y31_N39
\inst|cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~0_combout\ = ( \inst|cnt\(1) & ( !\inst|cnt[0]~DUPLICATE_q\ ) ) # ( !\inst|cnt\(1) & ( \inst|cnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|cnt[1]~0_combout\);

-- Location: FF_X66_Y31_N26
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	asdata => \inst|cnt[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: FF_X66_Y31_N19
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	asdata => \inst|cnt[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LABCELL_X66_Y31_N12
\inst|cnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~1_combout\ = ( \inst|cnt\(0) & ( !\inst|cnt\(2) $ (!\inst|cnt\(1)) ) ) # ( !\inst|cnt\(0) & ( \inst|cnt\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cnt\(2),
	datac => \inst|ALT_INV_cnt\(1),
	dataf => \inst|ALT_INV_cnt\(0),
	combout => \inst|cnt[2]~1_combout\);

-- Location: LABCELL_X66_Y31_N45
\inst|cnt[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~feeder_combout\ = \inst|cnt[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_cnt[2]~1_combout\,
	combout => \inst|cnt[2]~feeder_combout\);

-- Location: FF_X66_Y31_N47
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|cnt[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: IOIBUF_X89_Y36_N21
\TFS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TFS,
	o => \TFS~input_o\);

-- Location: LABCELL_X66_Y31_N48
\inst|col_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|col_s~0_combout\ = ( \inst|cnt\(0) & ( (\inst|cnt\(2) & (!\inst|cnt\(1) $ (!\TFS~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cnt\(1),
	datab => \inst|ALT_INV_cnt\(2),
	datac => \ALT_INV_TFS~input_o\,
	dataf => \inst|ALT_INV_cnt\(0),
	combout => \inst|col_s~0_combout\);

-- Location: FF_X66_Y31_N41
\inst|col_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	asdata => \inst|col_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|col_s\(1));

-- Location: LABCELL_X66_Y31_N9
\inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ( \inst|cnt\(1) & ( (!\inst|cnt[0]~DUPLICATE_q\) # (!\inst|cnt\(2)) ) ) # ( !\inst|cnt\(1) & ( (\inst|cnt[0]~DUPLICATE_q\ & !\inst|cnt\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_cnt\(2),
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux2~0_combout\);

-- Location: LABCELL_X66_Y31_N42
\inst|col_s[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|col_s[2]~feeder_combout\ = ( \inst|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Mux2~0_combout\,
	combout => \inst|col_s[2]~feeder_combout\);

-- Location: FF_X66_Y31_N44
\inst|col_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|col_s[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|col_s\(2));

-- Location: LABCELL_X66_Y31_N57
\inst|col_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|col_s~1_combout\ = ( \inst|cnt\(1) & ( (\inst|cnt[0]~DUPLICATE_q\ & (\inst|cnt\(2) & \TFS~input_o\)) ) ) # ( !\inst|cnt\(1) & ( (\inst|cnt[0]~DUPLICATE_q\ & (\inst|cnt\(2) & !\TFS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_cnt\(2),
	datad => \ALT_INV_TFS~input_o\,
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|col_s~1_combout\);

-- Location: FF_X66_Y31_N50
\inst|col_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	asdata => \inst|col_s~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|col_s\(3));

-- Location: FF_X66_Y31_N58
\inst|col_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|col_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|col_s\(4));

-- Location: FF_X66_Y31_N11
\inst|col_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|col_s\(5));

-- Location: FF_X66_Y31_N14
\inst|col_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	asdata => \inst|col_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|col_s\(6));

-- Location: LABCELL_X66_Y31_N15
\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \inst|cnt\(1) ) # ( !\inst|cnt\(1) & ( (\inst|cnt\(2)) # (\inst|cnt[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \inst|ALT_INV_cnt\(2),
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X66_Y31_N16
\inst|row_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(0));

-- Location: LABCELL_X66_Y31_N54
\inst|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = ( \inst|cnt\(1) ) # ( !\inst|cnt\(1) & ( (!\inst|cnt[0]~DUPLICATE_q\) # (\inst|cnt\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cnt\(2),
	datac => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux3~1_combout\);

-- Location: FF_X66_Y31_N56
\inst|row_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(1));

-- Location: LABCELL_X66_Y31_N6
\inst|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = ( \inst|cnt\(1) & ( (\inst|cnt[0]~DUPLICATE_q\) # (\inst|cnt\(2)) ) ) # ( !\inst|cnt\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cnt\(2),
	datac => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux3~2_combout\);

-- Location: FF_X66_Y31_N8
\inst|row_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(2));

-- Location: LABCELL_X66_Y31_N51
\inst|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = ( \inst|cnt\(0) & ( (!\inst|cnt\(1)) # (\inst|cnt\(2)) ) ) # ( !\inst|cnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_cnt\(2),
	datad => \inst|ALT_INV_cnt\(1),
	dataf => \inst|ALT_INV_cnt\(0),
	combout => \inst|Mux3~3_combout\);

-- Location: FF_X66_Y31_N53
\inst|row_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(3));

-- Location: LABCELL_X66_Y31_N36
\inst|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = ( \inst|cnt\(1) ) # ( !\inst|cnt\(1) & ( (!\inst|cnt\(2)) # (\inst|cnt[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cnt\(2),
	datac => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux3~4_combout\);

-- Location: FF_X66_Y31_N37
\inst|row_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(4));

-- Location: LABCELL_X66_Y31_N30
\inst|Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = ( \inst|cnt\(1) ) # ( !\inst|cnt\(1) & ( (!\inst|cnt\(2)) # (!\inst|cnt[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cnt\(2),
	datac => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux3~5_combout\);

-- Location: FF_X66_Y31_N32
\inst|row_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(5));

-- Location: LABCELL_X66_Y31_N27
\inst|Mux3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~6_combout\ = ( \inst|cnt\(1) & ( (!\inst|cnt\(2)) # (\inst|cnt[0]~DUPLICATE_q\) ) ) # ( !\inst|cnt\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cnt\(2),
	datad => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux3~6_combout\);

-- Location: FF_X66_Y31_N28
\inst|row_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(6));

-- Location: LABCELL_X66_Y31_N33
\inst|Mux3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~7_combout\ = ( \inst|cnt\(1) & ( (!\inst|cnt[0]~DUPLICATE_q\) # (!\inst|cnt\(2)) ) ) # ( !\inst|cnt\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_cnt\(2),
	dataf => \inst|ALT_INV_cnt\(1),
	combout => \inst|Mux3~7_combout\);

-- Location: FF_X66_Y31_N34
\inst|row_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|PULSE~q\,
	d => \inst|Mux3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_s\(7));

-- Location: IOIBUF_X70_Y81_N52
\gameStatus~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gameStatus,
	o => \gameStatus~input_o\);

-- Location: MLABCELL_X47_Y3_N0
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


