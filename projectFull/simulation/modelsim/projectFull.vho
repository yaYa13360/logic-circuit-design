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

-- DATE "05/26/2021 11:44:14"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projectFull IS
    PORT (
	TSF1 : OUT std_logic;
	TSF0 : OUT std_logic;
	in7 : IN std_logic;
	in6 : IN std_logic;
	in5 : IN std_logic;
	in4 : IN std_logic;
	in3 : IN std_logic;
	in2 : IN std_logic;
	in1 : IN std_logic;
	in0 : IN std_logic
	);
END projectFull;

-- Design Ports Information
-- TSF1	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TSF0	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in7	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in6	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in5	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in4	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projectFull IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TSF1 : std_logic;
SIGNAL ww_TSF0 : std_logic;
SIGNAL ww_in7 : std_logic;
SIGNAL ww_in6 : std_logic;
SIGNAL ww_in5 : std_logic;
SIGNAL ww_in4 : std_logic;
SIGNAL ww_in3 : std_logic;
SIGNAL ww_in2 : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_in0 : std_logic;
SIGNAL \in7~input_o\ : std_logic;
SIGNAL \in6~input_o\ : std_logic;
SIGNAL \in5~input_o\ : std_logic;
SIGNAL \in4~input_o\ : std_logic;
SIGNAL \in3~input_o\ : std_logic;
SIGNAL \in2~input_o\ : std_logic;
SIGNAL \in1~input_o\ : std_logic;
SIGNAL \in0~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

TSF1 <= ww_TSF1;
TSF0 <= ww_TSF0;
ww_in7 <= in7;
ww_in6 <= in6;
ww_in5 <= in5;
ww_in4 <= in4;
ww_in3 <= in3;
ww_in2 <= in2;
ww_in1 <= in1;
ww_in0 <= in0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X89_Y9_N22
\TSF1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_TSF1);

-- Location: IOOBUF_X89_Y4_N45
\TSF0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_TSF0);

-- Location: IOIBUF_X89_Y6_N38
\in7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in7,
	o => \in7~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\in6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in6,
	o => \in6~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\in5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in5,
	o => \in5~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\in4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in4,
	o => \in4~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\in3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3,
	o => \in3~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\in2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2,
	o => \in2~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\in1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1,
	o => \in1~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\in0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0,
	o => \in0~input_o\);

-- Location: LABCELL_X1_Y1_N0
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


