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

-- DATE "06/20/2020 09:22:41"

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

ENTITY 	sled IS
    PORT (
	dig : OUT std_logic_vector(7 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0);
	CLK_48M : IN std_logic
	);
END sled;

-- Design Ports Information
-- dig[7]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_48M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sled IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dig : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK_48M : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_48M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig[7]~output_o\ : std_logic;
SIGNAL \dig[6]~output_o\ : std_logic;
SIGNAL \dig[5]~output_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \CLK_48M~input_o\ : std_logic;
SIGNAL \CLK_48M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

dig <= ww_dig;
seg <= ww_seg;
ww_CLK_48M <= CLK_48M;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25));

\CLK_48M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_48M~input_o\);
\inst|ALT_INV_WideOr0~0_combout\ <= NOT \inst|WideOr0~0_combout\;

-- Location: IOOBUF_X28_Y24_N23
\dig[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\dig[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\dig[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\dig[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_48M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_48M,
	o => \CLK_48M~input_o\);

-- Location: CLKCTRL_G2
\CLK_48M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_48M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_48M~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N6
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X2_Y11_N8
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X1_Y11_N2
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X1_Y11_N0
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X1_Y11_N4
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ & 
-- (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\,
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X2_Y10_N30
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X2_Y10_N28
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & 
-- (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & !\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X2_Y10_N20
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	datad => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X1_Y10_N28
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) & 
-- (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25) & \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24),
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23),
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25),
	datad => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22),
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & (\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ & 
-- (\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datab => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	datac => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datad => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X1_Y10_N24
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\);

-- Location: LCCOMB_X1_Y10_N26
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\ = !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\);

-- Location: LCCOMB_X2_Y10_N6
\inst6|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\) # ((\inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ & 
-- \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\,
	datab => \inst6|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datac => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: FF_X1_Y11_N7
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y11_N8
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X1_Y11_N9
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y11_N10
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X1_Y11_N11
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y11_N12
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X1_Y11_N13
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X1_Y11_N14
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X1_Y11_N15
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X1_Y11_N16
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X1_Y11_N17
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X1_Y11_N18
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X1_Y11_N19
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X1_Y11_N20
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X1_Y11_N21
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X1_Y11_N22
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X1_Y11_N23
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X1_Y11_N24
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X1_Y11_N25
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X1_Y11_N26
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X1_Y11_N27
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X1_Y11_N28
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X1_Y11_N29
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X1_Y11_N30
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X1_Y11_N31
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X1_Y10_N0
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X1_Y10_N1
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X1_Y10_N2
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X1_Y10_N3
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X1_Y10_N4
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X1_Y10_N5
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X1_Y10_N6
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X1_Y10_N7
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X1_Y10_N8
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X1_Y10_N9
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X1_Y10_N10
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X1_Y10_N11
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X1_Y10_N12
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X1_Y10_N13
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X1_Y10_N14
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X1_Y10_N15
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X1_Y10_N16
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X1_Y10_N17
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X1_Y10_N18
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X1_Y10_N19
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X1_Y10_N20
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) & ((\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X1_Y10_N21
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23));

-- Location: LCCOMB_X1_Y10_N22
\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ = (\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & (\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # 
-- (!\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & (!\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\ = CARRY((\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & !\inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24),
	datad => VCC,
	cin => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\,
	cout => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\);

-- Location: FF_X1_Y10_N23
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24));

-- Location: FF_X1_Y10_N25
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_48M~inputclkctrl_outclk\,
	d => \inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25));

-- Location: CLKCTRL_G1
\inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y1_N16
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X17_Y1_N17
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X17_Y1_N18
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X17_Y1_N19
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X17_Y1_N20
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X17_Y1_N21
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X17_Y1_N22
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X17_Y1_N23
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X17_Y1_N24
\inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X17_Y1_N30
\inst|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X17_Y1_N28
\inst|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X17_Y1_N2
\inst|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X17_Y1_N8
\inst|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|WideOr4~0_combout\);

-- Location: LCCOMB_X17_Y1_N10
\inst|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr5~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|WideOr5~0_combout\);

-- Location: LCCOMB_X17_Y1_N12
\inst|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|WideOr6~0_combout\);

ww_dig(7) <= \dig[7]~output_o\;

ww_dig(6) <= \dig[6]~output_o\;

ww_dig(5) <= \dig[5]~output_o\;

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(0) <= \dig[0]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


