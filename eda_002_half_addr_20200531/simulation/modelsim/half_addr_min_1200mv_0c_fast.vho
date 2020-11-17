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

-- DATE "06/04/2020 13:22:52"

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

ENTITY 	half_addr IS
    PORT (
	SUM : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	CO : OUT std_logic
	);
END half_addr;

-- Design Ports Information
-- SUM	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CO	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF half_addr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SUM : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_CO : std_logic;
SIGNAL \SUM~output_o\ : std_logic;
SIGNAL \CO~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;

BEGIN

SUM <= ww_SUM;
ww_A <= A;
ww_B <= B;
CO <= ww_CO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y8_N16
\SUM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \SUM~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\CO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \CO~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y11_N24
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = \B~input_o\ $ (\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst~combout\);

-- Location: LCCOMB_X1_Y11_N26
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\B~input_o\ & \A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst1~combout\);

ww_SUM <= \SUM~output_o\;

ww_CO <= \CO~output_o\;
END structure;


