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

-- DATE "05/14/2021 19:05:18"

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

ENTITY 	countLife IS
    PORT (
	touch : IN std_logic;
	start : IN std_logic;
	led : OUT std_logic_vector(0 TO 3);
	gameStatus : OUT std_logic
	);
END countLife;

-- Design Ports Information
-- led[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gameStatus	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- touch	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF countLife IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_touch : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_led : std_logic_vector(0 TO 3);
SIGNAL ww_gameStatus : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \touch~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \tempTouch~combout\ : std_logic;
SIGNAL \temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \temp[0]~feeder_combout\ : std_logic;
SIGNAL \temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \temp[2]~feeder_combout\ : std_logic;
SIGNAL \temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \temp[3]~feeder_combout\ : std_logic;
SIGNAL \gameStatus~0_combout\ : std_logic;
SIGNAL temp : std_logic_vector(0 TO 3);
SIGNAL \ALT_INV_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_touch~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_gameStatus~0_combout\ : std_logic;
SIGNAL ALT_INV_temp : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_touch <= touch;
ww_start <= start;
led <= ww_led;
gameStatus <= ww_gameStatus;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_temp[0]~DUPLICATE_q\ <= NOT \temp[0]~DUPLICATE_q\;
\ALT_INV_temp[1]~DUPLICATE_q\ <= NOT \temp[1]~DUPLICATE_q\;
\ALT_INV_temp[2]~DUPLICATE_q\ <= NOT \temp[2]~DUPLICATE_q\;
\ALT_INV_temp[3]~DUPLICATE_q\ <= NOT \temp[3]~DUPLICATE_q\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_touch~input_o\ <= NOT \touch~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_gameStatus~0_combout\ <= NOT \gameStatus~0_combout\;
ALT_INV_temp(0) <= NOT temp(0);
ALT_INV_temp(1) <= NOT temp(1);
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(3) <= NOT temp(3);

-- Location: IOOBUF_X60_Y81_N36
\led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(3),
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X62_Y81_N53
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X60_Y81_N53
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X60_Y81_N2
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X62_Y81_N36
\gameStatus~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_gameStatus~0_combout\,
	devoe => ww_devoe,
	o => ww_gameStatus);

-- Location: IOIBUF_X62_Y81_N18
\touch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_touch,
	o => \touch~input_o\);

-- Location: IOIBUF_X62_Y81_N1
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X62_Y80_N45
tempTouch : cyclonev_lcell_comb
-- Equation(s):
-- \tempTouch~combout\ = LCELL(( \start~input_o\ ) # ( !\start~input_o\ & ( \touch~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_touch~input_o\,
	datae => \ALT_INV_start~input_o\,
	combout => \tempTouch~combout\);

-- Location: FF_X62_Y80_N38
\temp[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \temp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp[3]~DUPLICATE_q\);

-- Location: FF_X62_Y80_N56
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \temp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LABCELL_X62_Y80_N51
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( temp(2) & ( temp(3) ) ) # ( !temp(2) & ( temp(3) ) ) # ( temp(2) & ( !temp(3) ) ) # ( !temp(2) & ( !temp(3) & ( (!temp(0)) # (temp(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(0),
	datad => ALT_INV_temp(1),
	datae => ALT_INV_temp(2),
	dataf => ALT_INV_temp(3),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X62_Y80_N21
\temp[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[0]~feeder_combout\ = ( \Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \temp[0]~feeder_combout\);

-- Location: FF_X62_Y80_N23
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \temp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: FF_X62_Y80_N1
\temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp[1]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y80_N12
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \temp[1]~DUPLICATE_q\ & ( (!temp(0)) # (\temp[3]~DUPLICATE_q\) ) ) # ( !\temp[1]~DUPLICATE_q\ & ( ((!temp(0)) # (\temp[3]~DUPLICATE_q\)) # (temp(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(2),
	datac => ALT_INV_temp(0),
	datad => \ALT_INV_temp[3]~DUPLICATE_q\,
	dataf => \ALT_INV_temp[1]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X62_Y80_N54
\temp[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[2]~feeder_combout\ = ( \Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \temp[2]~feeder_combout\);

-- Location: FF_X62_Y80_N55
\temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \temp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp[2]~DUPLICATE_q\);

-- Location: FF_X62_Y80_N22
\temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \temp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp[0]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y80_N0
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ((!\temp[0]~DUPLICATE_q\) # (\temp[2]~DUPLICATE_q\)) # (temp(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(3),
	datab => \ALT_INV_temp[2]~DUPLICATE_q\,
	datac => \ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X62_Y80_N2
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LABCELL_X62_Y80_N24
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( temp(0) & ( \temp[2]~DUPLICATE_q\ & ( !temp(1) ) ) ) # ( !temp(0) & ( \temp[2]~DUPLICATE_q\ ) ) # ( temp(0) & ( !\temp[2]~DUPLICATE_q\ & ( \temp[3]~DUPLICATE_q\ ) ) ) # ( !temp(0) & ( !\temp[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp[3]~DUPLICATE_q\,
	datac => ALT_INV_temp(1),
	datae => ALT_INV_temp(0),
	dataf => \ALT_INV_temp[2]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X62_Y80_N36
\temp[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[3]~feeder_combout\ = ( \Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \temp[3]~feeder_combout\);

-- Location: FF_X62_Y80_N37
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tempTouch~combout\,
	d => \temp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LABCELL_X62_Y80_N15
\gameStatus~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gameStatus~0_combout\ = ( \temp[1]~DUPLICATE_q\ ) # ( !\temp[1]~DUPLICATE_q\ & ( ((temp(0)) # (temp(3))) # (\temp[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp[2]~DUPLICATE_q\,
	datac => ALT_INV_temp(3),
	datad => ALT_INV_temp(0),
	dataf => \ALT_INV_temp[1]~DUPLICATE_q\,
	combout => \gameStatus~0_combout\);

-- Location: LABCELL_X46_Y46_N3
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


