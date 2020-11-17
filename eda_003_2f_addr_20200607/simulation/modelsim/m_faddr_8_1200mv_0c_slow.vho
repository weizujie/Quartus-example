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

-- DATE "06/07/2020 08:39:45"

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

ENTITY 	m_faddr IS
    PORT (
	CO : OUT std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	CIN : IN std_logic;
	SUM : OUT std_logic_vector(3 DOWNTO 0)
	);
END m_faddr;

-- Design Ports Information
-- CO	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m_faddr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CO : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CIN : std_logic;
SIGNAL ww_SUM : std_logic_vector(3 DOWNTO 0);
SIGNAL \CO~output_o\ : std_logic;
SIGNAL \SUM[3]~output_o\ : std_logic;
SIGNAL \SUM[2]~output_o\ : std_logic;
SIGNAL \SUM[1]~output_o\ : std_logic;
SIGNAL \SUM[0]~output_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst1|inst~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst3|inst1|inst~combout\ : std_logic;
SIGNAL \inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst2~0_combout\ : std_logic;

BEGIN

CO <= ww_CO;
ww_A <= A;
ww_B <= B;
ww_CIN <= CIN;
SUM <= ww_SUM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y6_N16
\CO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \CO~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\SUM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst2~0_combout\,
	devoe => ww_devoe,
	o => \SUM[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\SUM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~0_combout\,
	devoe => ww_devoe,
	o => \SUM[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\SUM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~0_combout\,
	devoe => ww_devoe,
	o => \SUM[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\SUM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2~0_combout\,
	devoe => ww_devoe,
	o => \SUM[0]~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X4_Y1_N12
\inst1|inst|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|inst~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst1|inst|inst~combout\);

-- Location: IOIBUF_X23_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\CIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X4_Y1_N16
\inst|inst|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|inst|inst~combout\);

-- Location: LCCOMB_X4_Y1_N26
\inst|inst1|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst~combout\ = \A[0]~input_o\ $ (\CIN~input_o\ $ (\B[0]~input_o\ $ (\inst|inst|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \CIN~input_o\,
	datac => \B[0]~input_o\,
	datad => \inst|inst|inst~combout\,
	combout => \inst|inst1|inst~combout\);

-- Location: IOIBUF_X32_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X4_Y1_N30
\inst3|inst1|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst~combout\ = \inst1|inst|inst~combout\ $ (\B[3]~input_o\ $ (\inst|inst1|inst~combout\ $ (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~combout\,
	datab => \B[3]~input_o\,
	datac => \inst|inst1|inst~combout\,
	datad => \A[3]~input_o\,
	combout => \inst3|inst1|inst~combout\);

-- Location: LCCOMB_X4_Y1_N24
\inst3|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\inst1|inst|inst~combout\ $ (\inst|inst1|inst~combout\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\inst1|inst|inst~combout\ $ (\inst|inst1|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~combout\,
	datab => \B[3]~input_o\,
	datac => \inst|inst1|inst~combout\,
	datad => \A[3]~input_o\,
	combout => \inst3|inst2~0_combout\);

-- Location: LCCOMB_X4_Y1_N10
\inst2|inst1|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst~combout\ = \A[0]~input_o\ $ (\CIN~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \CIN~input_o\,
	datac => \B[0]~input_o\,
	combout => \inst2|inst1|inst~combout\);

-- Location: LCCOMB_X4_Y1_N4
\inst1|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\inst|inst|inst~combout\ $ (\inst2|inst1|inst~combout\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\inst|inst|inst~combout\ $ (\inst2|inst1|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|inst|inst~combout\,
	datac => \B[2]~input_o\,
	datad => \inst2|inst1|inst~combout\,
	combout => \inst1|inst2~0_combout\);

-- Location: LCCOMB_X4_Y1_N6
\inst2|inst|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst~combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst2|inst|inst~combout\);

-- Location: LCCOMB_X4_Y1_N0
\inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\inst2|inst|inst~combout\ $ (\CIN~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\inst2|inst|inst~combout\ $ (\CIN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst~combout\,
	datab => \CIN~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|inst2~0_combout\);

-- Location: LCCOMB_X4_Y1_N2
\inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2~0_combout\ = (\A[0]~input_o\ & ((\CIN~input_o\) # (\B[0]~input_o\))) # (!\A[0]~input_o\ & (\CIN~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \CIN~input_o\,
	datac => \B[0]~input_o\,
	combout => \inst2|inst2~0_combout\);

ww_CO <= \CO~output_o\;

ww_SUM(3) <= \SUM[3]~output_o\;

ww_SUM(2) <= \SUM[2]~output_o\;

ww_SUM(1) <= \SUM[1]~output_o\;

ww_SUM(0) <= \SUM[0]~output_o\;
END structure;


