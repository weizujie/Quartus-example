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

-- DATE "06/21/2020 08:33:44"

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

ENTITY 	dled_17990425 IS
    PORT (
	dig : OUT std_logic_vector(7 DOWNTO 0);
	CLK48M : IN std_logic;
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END dled_17990425;

-- Design Ports Information
-- dig[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK48M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dled_17990425 IS
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
SIGNAL ww_CLK48M : std_logic;
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK48M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK48M~input_o\ : std_logic;
SIGNAL \CLK48M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|Decoder0~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~2_combout\ : std_logic;
SIGNAL \inst5|Decoder0~3_combout\ : std_logic;
SIGNAL \inst5|Decoder0~4_combout\ : std_logic;
SIGNAL \inst5|Decoder0~5_combout\ : std_logic;
SIGNAL \inst5|Decoder0~6_combout\ : std_logic;
SIGNAL \inst5|Decoder0~7_combout\ : std_logic;
SIGNAL \inst4|WideOr0~0_combout\ : std_logic;
SIGNAL \inst4|WideOr1~0_combout\ : std_logic;
SIGNAL \inst4|WideOr2~combout\ : std_logic;
SIGNAL \inst4|WideOr3~0_combout\ : std_logic;
SIGNAL \inst4|WideOr5~0_combout\ : std_logic;
SIGNAL \inst4|WideOr6~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~0_combout\ : std_logic;

BEGIN

dig <= ww_dig;
ww_CLK48M <= CLK48M;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

\CLK48M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK48M~input_o\);
\inst4|ALT_INV_WideOr6~0_combout\ <= NOT \inst4|WideOr6~0_combout\;
\inst4|ALT_INV_WideOr0~0_combout\ <= NOT \inst4|WideOr0~0_combout\;
\inst5|ALT_INV_Decoder0~7_combout\ <= NOT \inst5|Decoder0~7_combout\;
\inst5|ALT_INV_Decoder0~6_combout\ <= NOT \inst5|Decoder0~6_combout\;
\inst5|ALT_INV_Decoder0~5_combout\ <= NOT \inst5|Decoder0~5_combout\;
\inst5|ALT_INV_Decoder0~4_combout\ <= NOT \inst5|Decoder0~4_combout\;
\inst5|ALT_INV_Decoder0~3_combout\ <= NOT \inst5|Decoder0~3_combout\;
\inst5|ALT_INV_Decoder0~2_combout\ <= NOT \inst5|Decoder0~2_combout\;
\inst5|ALT_INV_Decoder0~1_combout\ <= NOT \inst5|Decoder0~1_combout\;
\inst5|ALT_INV_Decoder0~0_combout\ <= NOT \inst5|Decoder0~0_combout\;

-- Location: IOOBUF_X34_Y20_N9
\dig[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \dig[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\dig[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \dig[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\dig[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \dig[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\dig[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~4_combout\,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~5_combout\,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~6_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~7_combout\,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X34_Y17_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|WideOr2~combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK48M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK48M,
	o => \CLK48M~input_o\);

-- Location: CLKCTRL_G2
\CLK48M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK48M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK48M~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y13_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X33_Y12_N22
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

-- Location: LCCOMB_X33_Y13_N12
\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X33_Y12_N28
\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X33_Y12_N30
\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X33_Y13_N10
\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X33_Y12_N26
\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & (\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & 
-- (\inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X33_Y12_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X33_Y12_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~0_combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~0_combout\);

-- Location: LCCOMB_X33_Y12_N24
\inst|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~0_combout\) # ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~0_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: FF_X33_Y13_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X33_Y13_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X33_Y13_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X33_Y13_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X33_Y13_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X33_Y13_N20
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X33_Y13_N21
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X33_Y13_N22
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X33_Y13_N23
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X33_Y13_N24
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X33_Y13_N25
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X33_Y13_N26
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X33_Y13_N27
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X33_Y13_N28
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X33_Y13_N29
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X33_Y13_N30
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X33_Y13_N31
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X33_Y12_N0
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X33_Y12_N1
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X33_Y12_N2
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X33_Y12_N3
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X33_Y12_N4
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X33_Y12_N5
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X33_Y12_N6
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X33_Y12_N7
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X33_Y12_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X33_Y12_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X33_Y12_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X33_Y12_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X33_Y12_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X33_Y12_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: FF_X33_Y12_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	asdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: CLKCTRL_G8
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y17_N18
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X32_Y17_N19
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_outclk\,
	d => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X32_Y17_N20
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X32_Y17_N21
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_outclk\,
	d => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X32_Y17_N22
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\);

-- Location: FF_X32_Y17_N23
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]~clkctrl_outclk\,
	d => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X32_Y17_N24
\inst5|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~0_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst5|Decoder0~0_combout\);

-- Location: LCCOMB_X31_Y17_N24
\inst5|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~1_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|Decoder0~1_combout\);

-- Location: LCCOMB_X32_Y17_N14
\inst5|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~2_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst5|Decoder0~2_combout\);

-- Location: LCCOMB_X31_Y17_N2
\inst5|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~3_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|Decoder0~3_combout\);

-- Location: LCCOMB_X31_Y17_N28
\inst5|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~4_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|Decoder0~4_combout\);

-- Location: LCCOMB_X31_Y17_N6
\inst5|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~5_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|Decoder0~5_combout\);

-- Location: LCCOMB_X31_Y17_N20
\inst5|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~6_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|Decoder0~6_combout\);

-- Location: LCCOMB_X31_Y17_N18
\inst5|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~7_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|Decoder0~7_combout\);

-- Location: LCCOMB_X32_Y17_N0
\inst4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr0~0_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst4|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y17_N8
\inst4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr1~0_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y17_N26
\inst4|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr2~combout\ = ((\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|WideOr2~combout\);

-- Location: LCCOMB_X31_Y17_N0
\inst4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr3~0_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y17_N10
\inst4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr5~0_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|WideOr5~0_combout\);

-- Location: LCCOMB_X31_Y17_N12
\inst4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr6~0_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|WideOr6~0_combout\);

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


