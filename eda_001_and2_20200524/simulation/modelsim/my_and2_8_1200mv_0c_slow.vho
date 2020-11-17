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

-- DATE "05/24/2020 09:24:01"

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

ENTITY 	my_and2 IS
    PORT (
	output_3 : OUT std_logic;
	input1_1 : IN std_logic;
	input2_2 : IN std_logic
	);
END my_and2;

-- Design Ports Information
-- output_3	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- input1_1	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input2_2	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF my_and2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output_3 : std_logic;
SIGNAL ww_input1_1 : std_logic;
SIGNAL ww_input2_2 : std_logic;
SIGNAL \output_3~output_o\ : std_logic;
SIGNAL \input1_1~input_o\ : std_logic;
SIGNAL \input2_2~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;

BEGIN

output_3 <= ww_output_3;
ww_input1_1 <= input1_1;
ww_input2_2 <= input2_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y23_N16
\output_3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \output_3~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\input1_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1_1,
	o => \input1_1~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\input2_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2_2,
	o => \input2_2~input_o\);

-- Location: LCCOMB_X1_Y23_N16
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\input1_1~input_o\ & \input2_2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1_1~input_o\,
	datad => \input2_2~input_o\,
	combout => \inst~combout\);

ww_output_3 <= \output_3~output_o\;
END structure;


