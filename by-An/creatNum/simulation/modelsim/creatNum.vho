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

-- DATE "05/12/2021 22:22:47"

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

ENTITY 	creatNum IS
    PORT (
	clk : IN std_logic;
	clk2 : IN std_logic;
	unit : IN std_logic_vector(4 DOWNTO 0);
	tmp : IN std_logic_vector(1 DOWNTO 0)
	);
END creatNum;

-- Design Ports Information
-- clk	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tmp[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tmp[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF creatNum IS
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
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_unit : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_tmp : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk2~input_o\ : std_logic;
SIGNAL \unit[0]~input_o\ : std_logic;
SIGNAL \unit[1]~input_o\ : std_logic;
SIGNAL \unit[2]~input_o\ : std_logic;
SIGNAL \unit[3]~input_o\ : std_logic;
SIGNAL \unit[4]~input_o\ : std_logic;
SIGNAL \tmp[0]~input_o\ : std_logic;
SIGNAL \tmp[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clk2 <= clk2;
ww_unit <= unit;
ww_tmp <= tmp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X89_Y9_N38
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\clk2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk2,
	o => \clk2~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\unit[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unit(0),
	o => \unit[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\unit[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unit(1),
	o => \unit[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\unit[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unit(2),
	o => \unit[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\unit[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unit(3),
	o => \unit[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\unit[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unit(4),
	o => \unit[4]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\tmp[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tmp(0),
	o => \tmp[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\tmp[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tmp(1),
	o => \tmp[1]~input_o\);

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


