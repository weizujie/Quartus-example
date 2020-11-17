-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "05/31/2020 10:41:37"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_addr IS
    PORT (
	CO_7 : OUT std_logic;
	A_1 : IN std_logic;
	B_2 : IN std_logic;
	CIN_3 : IN std_logic;
	SUM_10 : OUT std_logic
	);
END full_addr;

-- Design Ports Information
-- CO_7	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SUM_10	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B_2	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CIN_3	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_1	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF full_addr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CO_7 : std_logic;
SIGNAL ww_A_1 : std_logic;
SIGNAL ww_B_2 : std_logic;
SIGNAL ww_CIN_3 : std_logic;
SIGNAL ww_SUM_10 : std_logic;
SIGNAL \CO_7~output_o\ : std_logic;
SIGNAL \SUM_10~output_o\ : std_logic;
SIGNAL \B_2~input_o\ : std_logic;
SIGNAL \A_1~input_o\ : std_logic;
SIGNAL \CIN_3~input_o\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;

BEGIN

CO_7 <= ww_CO_7;
ww_A_1 <= A_1;
ww_B_2 <= B_2;
ww_CIN_3 <= CIN_3;
SUM_10 <= ww_SUM_10;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y21_N9
\CO_7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \CO_7~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\SUM_10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~0_combout\,
	devoe => ww_devoe,
	o => \SUM_10~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\B_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_2,
	o => \B_2~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\A_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_1,
	o => \A_1~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\CIN_3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN_3,
	o => \CIN_3~input_o\);

-- Location: LCCOMB_X1_Y23_N24
\inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\B_2~input_o\ & ((\A_1~input_o\) # (\CIN_3~input_o\))) # (!\B_2~input_o\ & (\A_1~input_o\ & \CIN_3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_2~input_o\,
	datab => \A_1~input_o\,
	datad => \CIN_3~input_o\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\inst1|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = \B_2~input_o\ $ (\A_1~input_o\ $ (\CIN_3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_2~input_o\,
	datab => \A_1~input_o\,
	datad => \CIN_3~input_o\,
	combout => \inst1|inst~0_combout\);

ww_CO_7 <= \CO_7~output_o\;

ww_SUM_10 <= \SUM_10~output_o\;
END structure;


