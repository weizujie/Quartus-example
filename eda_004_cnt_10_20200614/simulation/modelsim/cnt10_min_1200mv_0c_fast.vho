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

-- DATE "06/14/2020 08:50:56"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cnt10 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	en : IN std_logic;
	updown : IN std_logic;
	load : IN std_logic;
	din : IN std_logic_vector(3 DOWNTO 0);
	co : OUT std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END cnt10;

-- Design Ports Information
-- co	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- updown	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cnt10 IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_updown : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_din : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_co : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \co~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \updown~input_o\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \q[3]~1_combout\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \co~1_combout\ : std_logic;
SIGNAL \co~2_combout\ : std_logic;
SIGNAL \q[0]~0_combout\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \q~2_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \co~0_combout\ : std_logic;
SIGNAL \co~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_en <= en;
ww_updown <= updown;
ww_load <= load;
ww_din <= din;
co <= ww_co;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y9_N9
\co~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \co~reg0_q\,
	devoe => ww_devoe,
	o => \co~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N1
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\din[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\updown~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_updown,
	o => \updown~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\din[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LCCOMB_X1_Y6_N22
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \q[2]~reg0_q\ $ (((\q[1]~reg0_q\ & \q[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[2]~reg0_q\,
	datac => \q[1]~reg0_q\,
	datad => \q[0]~reg0_q\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y6_N20
\q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~3_combout\ = (\load~input_o\ & (\din[2]~input_o\)) # (!\load~input_o\ & (((\Add0~1_combout\ & !\co~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[2]~input_o\,
	datab => \load~input_o\,
	datac => \Add0~1_combout\,
	datad => \co~2_combout\,
	combout => \q~3_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N1
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X1_Y6_N21
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \q[3]~reg0_q\ $ (((\q[1]~reg0_q\ & (\q[0]~reg0_q\ & \q[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~reg0_q\,
	datab => \q[0]~reg0_q\,
	datac => \q[3]~reg0_q\,
	datad => \q[2]~reg0_q\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X1_Y6_N14
\q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~1_combout\ = (\co~2_combout\ & (\updown~input_o\)) # (!\co~2_combout\ & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \updown~input_o\,
	datab => \Add0~2_combout\,
	datad => \co~2_combout\,
	combout => \q[3]~1_combout\);

-- Location: IOIBUF_X0_Y6_N22
\din[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: FF_X1_Y6_N15
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[3]~1_combout\,
	asdata => \din[3]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \load~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N16
\co~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \co~1_combout\ = (\q[3]~reg0_q\ & !\q[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[3]~reg0_q\,
	datad => \q[2]~reg0_q\,
	combout => \co~1_combout\);

-- Location: LCCOMB_X1_Y6_N6
\co~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \co~2_combout\ = (\updown~input_o\) # ((\q[0]~reg0_q\ & (!\q[1]~reg0_q\ & \co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \updown~input_o\,
	datab => \q[0]~reg0_q\,
	datac => \q[1]~reg0_q\,
	datad => \co~1_combout\,
	combout => \co~2_combout\);

-- Location: LCCOMB_X1_Y6_N28
\q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~0_combout\ = (\co~2_combout\ & (\updown~input_o\)) # (!\co~2_combout\ & ((!\q[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \updown~input_o\,
	datac => \q[0]~reg0_q\,
	datad => \co~2_combout\,
	combout => \q[0]~0_combout\);

-- Location: IOIBUF_X0_Y6_N15
\din[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: FF_X1_Y6_N29
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[0]~0_combout\,
	asdata => \din[0]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \load~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \q[1]~reg0_q\ $ (\q[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[1]~reg0_q\,
	datad => \q[0]~reg0_q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~2_combout\ = (\load~input_o\ & (\din[1]~input_o\)) # (!\load~input_o\ & (((\Add0~0_combout\ & !\co~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[1]~input_o\,
	datab => \load~input_o\,
	datac => \Add0~0_combout\,
	datad => \co~2_combout\,
	combout => \q~2_combout\);

-- Location: FF_X1_Y6_N31
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\q[1]~reg0_q\ & (\q[0]~reg0_q\ & (\q[3]~reg0_q\ & !\q[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~reg0_q\,
	datab => \q[0]~reg0_q\,
	datac => \q[3]~reg0_q\,
	datad => \q[2]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \co~0_combout\ = (!\load~input_o\ & ((\Equal0~0_combout\) # (\updown~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \Equal0~0_combout\,
	datad => \updown~input_o\,
	combout => \co~0_combout\);

-- Location: FF_X1_Y6_N13
\co~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \co~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \co~reg0_q\);

ww_co <= \co~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;
END structure;


