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

-- DATE "07/04/2020 08:53:13"

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

ENTITY 	clock IS
    PORT (
	dig : OUT std_logic_vector(7 DOWNTO 0);
	CLK48M : IN std_logic;
	EN : IN std_logic;
	RST : IN std_logic;
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END clock;

-- Design Ports Information
-- dig[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[6]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK48M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock IS
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
SIGNAL ww_EN : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|co~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|clockout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|co~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|co~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK48M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|co~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst12|Add0~25\ : std_logic;
SIGNAL \inst12|Add0~26_combout\ : std_logic;
SIGNAL \inst12|counter~1_combout\ : std_logic;
SIGNAL \inst12|Add0~27\ : std_logic;
SIGNAL \inst12|Add0~28_combout\ : std_logic;
SIGNAL \inst12|Add0~29\ : std_logic;
SIGNAL \inst12|Add0~30_combout\ : std_logic;
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \inst12|Add0~1\ : std_logic;
SIGNAL \inst12|Add0~2_combout\ : std_logic;
SIGNAL \inst12|Add0~3\ : std_logic;
SIGNAL \inst12|Add0~4_combout\ : std_logic;
SIGNAL \inst12|Add0~5\ : std_logic;
SIGNAL \inst12|Add0~6_combout\ : std_logic;
SIGNAL \inst12|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|Add0~31\ : std_logic;
SIGNAL \inst12|Add0~32_combout\ : std_logic;
SIGNAL \inst12|Add0~15\ : std_logic;
SIGNAL \inst12|Add0~16_combout\ : std_logic;
SIGNAL \inst12|counter~3_combout\ : std_logic;
SIGNAL \inst12|Equal0~1_combout\ : std_logic;
SIGNAL \inst12|Equal0~2_combout\ : std_logic;
SIGNAL \inst12|Add0~17\ : std_logic;
SIGNAL \inst12|Add0~18_combout\ : std_logic;
SIGNAL \inst12|counter~4_combout\ : std_logic;
SIGNAL \inst12|Add0~19\ : std_logic;
SIGNAL \inst12|Add0~20_combout\ : std_logic;
SIGNAL \inst12|counter~0_combout\ : std_logic;
SIGNAL \inst12|Add0~21\ : std_logic;
SIGNAL \inst12|Add0~22_combout\ : std_logic;
SIGNAL \inst12|Add0~23\ : std_logic;
SIGNAL \inst12|Add0~24_combout\ : std_logic;
SIGNAL \inst12|Equal0~3_combout\ : std_logic;
SIGNAL \inst12|Add0~7\ : std_logic;
SIGNAL \inst12|Add0~8_combout\ : std_logic;
SIGNAL \inst12|counter~2_combout\ : std_logic;
SIGNAL \inst12|Add0~9\ : std_logic;
SIGNAL \inst12|Add0~10_combout\ : std_logic;
SIGNAL \inst12|Add0~11\ : std_logic;
SIGNAL \inst12|Add0~12_combout\ : std_logic;
SIGNAL \inst12|Add0~13\ : std_logic;
SIGNAL \inst12|Add0~14_combout\ : std_logic;
SIGNAL \inst12|Equal0~4_combout\ : std_logic;
SIGNAL \inst12|temp1~0_combout\ : std_logic;
SIGNAL \inst12|temp1~q\ : std_logic;
SIGNAL \inst12|Equal1~1_combout\ : std_logic;
SIGNAL \inst12|Equal1~0_combout\ : std_logic;
SIGNAL \inst12|temp2~0_combout\ : std_logic;
SIGNAL \inst12|temp2~q\ : std_logic;
SIGNAL \inst12|clockout~combout\ : std_logic;
SIGNAL \inst12|clockout~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|cnt[0]~2_combout\ : std_logic;
SIGNAL \inst7|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst7|cnt[2]~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~2_combout\ : std_logic;
SIGNAL \inst5|Decoder0~3_combout\ : std_logic;
SIGNAL \inst5|Decoder0~4_combout\ : std_logic;
SIGNAL \inst5|Decoder0~5_combout\ : std_logic;
SIGNAL \inst5|Decoder0~6_combout\ : std_logic;
SIGNAL \inst5|Decoder0~7_combout\ : std_logic;
SIGNAL \inst5|Mux3~3_combout\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|counter~2_combout\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|counter~1_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
SIGNAL \inst13|counter~3_combout\ : std_logic;
SIGNAL \inst13|Equal0~1_combout\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|counter~0_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|temp1~0_combout\ : std_logic;
SIGNAL \inst13|temp1~feeder_combout\ : std_logic;
SIGNAL \inst13|temp1~q\ : std_logic;
SIGNAL \inst13|Equal1~0_combout\ : std_logic;
SIGNAL \inst13|temp2~0_combout\ : std_logic;
SIGNAL \inst13|temp2~q\ : std_logic;
SIGNAL \inst13|clockout~combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \inst14~clkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \inst|cnt[0]~3_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt~2_combout\ : std_logic;
SIGNAL \inst|cnt~0_combout\ : std_logic;
SIGNAL \inst|cnt[2]~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|co~q\ : std_logic;
SIGNAL \inst|co~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|cnt[0]~4_combout\ : std_logic;
SIGNAL \inst1|cnt[3]~2_combout\ : std_logic;
SIGNAL \inst1|cnt[3]~3_combout\ : std_logic;
SIGNAL \inst1|cnt~0_combout\ : std_logic;
SIGNAL \inst1|cnt~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|co~q\ : std_logic;
SIGNAL \inst1|co~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|cnt[0]~3_combout\ : std_logic;
SIGNAL \inst2|cnt[2]~1_combout\ : std_logic;
SIGNAL \inst2|cnt~2_combout\ : std_logic;
SIGNAL \inst2|cnt~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|co~q\ : std_logic;
SIGNAL \inst2|co~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|cnt[0]~4_combout\ : std_logic;
SIGNAL \inst3|cnt~1_combout\ : std_logic;
SIGNAL \inst3|cnt~0_combout\ : std_logic;
SIGNAL \inst3|cnt[3]~2_combout\ : std_logic;
SIGNAL \inst3|cnt[3]~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~2_combout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|co~q\ : std_logic;
SIGNAL \inst3|co~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|Add1~0_combout\ : std_logic;
SIGNAL \inst4|Add1~1\ : std_logic;
SIGNAL \inst4|Add1~2_combout\ : std_logic;
SIGNAL \inst4|cnt~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Add1~7\ : std_logic;
SIGNAL \inst4|Add1~8_combout\ : std_logic;
SIGNAL \inst4|Add0~1_cout\ : std_logic;
SIGNAL \inst4|Add0~3_cout\ : std_logic;
SIGNAL \inst4|Add0~5_cout\ : std_logic;
SIGNAL \inst4|Add0~7_cout\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~11_combout\ : std_logic;
SIGNAL \inst4|Add0~12\ : std_logic;
SIGNAL \inst4|Add0~13_combout\ : std_logic;
SIGNAL \inst4|Add1~9\ : std_logic;
SIGNAL \inst4|Add1~11\ : std_logic;
SIGNAL \inst4|Add1~12_combout\ : std_logic;
SIGNAL \inst4|Add0~15_combout\ : std_logic;
SIGNAL \inst4|Add0~14\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|Add1~13\ : std_logic;
SIGNAL \inst4|Add1~14_combout\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|Add1~10_combout\ : std_logic;
SIGNAL \inst4|cnt~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Add1~3\ : std_logic;
SIGNAL \inst4|Add1~4_combout\ : std_logic;
SIGNAL \inst4|cnt~2_combout\ : std_logic;
SIGNAL \inst4|Add1~5\ : std_logic;
SIGNAL \inst4|Add1~6_combout\ : std_logic;
SIGNAL \inst4|cnt~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~4_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst5|Mux1~2_combout\ : std_logic;
SIGNAL \inst5|Mux1~3_combout\ : std_logic;
SIGNAL \inst5|Mux1~4_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~1_combout\ : std_logic;
SIGNAL \inst5|Mux2~2_combout\ : std_logic;
SIGNAL \inst5|Mux2~3_combout\ : std_logic;
SIGNAL \inst5|Mux2~4_combout\ : std_logic;
SIGNAL \inst5|Mux3~1_combout\ : std_logic;
SIGNAL \inst5|Mux3~4_combout\ : std_logic;
SIGNAL \inst5|Mux3~5_combout\ : std_logic;
SIGNAL \inst5|Mux3~6_combout\ : std_logic;
SIGNAL \inst5|Mux3~7_combout\ : std_logic;
SIGNAL \inst6|WideOr0~0_combout\ : std_logic;
SIGNAL \inst6|WideOr1~0_combout\ : std_logic;
SIGNAL \inst6|WideOr2~0_combout\ : std_logic;
SIGNAL \inst6|WideOr3~0_combout\ : std_logic;
SIGNAL \inst6|WideOr4~0_combout\ : std_logic;
SIGNAL \inst6|WideOr5~0_combout\ : std_logic;
SIGNAL \inst6|WideOr6~0_combout\ : std_logic;
SIGNAL \inst|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst2|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CLK48M~input_o\ : std_logic;
SIGNAL \inst12|ALT_INV_clockout~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_WideOr0~0_combout\ : std_logic;
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
ww_EN <= EN;
ww_RST <= RST;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|co~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|co~q\);

\inst12|clockout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12|clockout~combout\);

\inst2|co~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|co~q\);

\inst3|co~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|co~q\);

\CLK48M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK48M~input_o\);

\inst14~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14~q\);

\inst1|co~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|co~q\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_CLK48M~input_o\ <= NOT \CLK48M~input_o\;
\inst12|ALT_INV_clockout~combout\ <= NOT \inst12|clockout~combout\;
\inst6|ALT_INV_WideOr0~0_combout\ <= NOT \inst6|WideOr0~0_combout\;
\inst5|ALT_INV_Decoder0~7_combout\ <= NOT \inst5|Decoder0~7_combout\;
\inst5|ALT_INV_Decoder0~6_combout\ <= NOT \inst5|Decoder0~6_combout\;
\inst5|ALT_INV_Decoder0~5_combout\ <= NOT \inst5|Decoder0~5_combout\;
\inst5|ALT_INV_Decoder0~4_combout\ <= NOT \inst5|Decoder0~4_combout\;
\inst5|ALT_INV_Decoder0~3_combout\ <= NOT \inst5|Decoder0~3_combout\;
\inst5|ALT_INV_Decoder0~2_combout\ <= NOT \inst5|Decoder0~2_combout\;
\inst5|ALT_INV_Decoder0~1_combout\ <= NOT \inst5|Decoder0~1_combout\;
\inst5|ALT_INV_Decoder0~0_combout\ <= NOT \inst5|Decoder0~0_combout\;

-- Location: IOOBUF_X34_Y18_N16
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X34_Y9_N23
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X18_Y0_N16
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
	i => \inst6|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr6~0_combout\,
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

-- Location: LCCOMB_X1_Y10_N8
\inst12|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~24_combout\ = (\inst12|counter\(12) & (\inst12|Add0~23\ $ (GND))) # (!\inst12|counter\(12) & (!\inst12|Add0~23\ & VCC))
-- \inst12|Add0~25\ = CARRY((\inst12|counter\(12) & !\inst12|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(12),
	datad => VCC,
	cin => \inst12|Add0~23\,
	combout => \inst12|Add0~24_combout\,
	cout => \inst12|Add0~25\);

-- Location: LCCOMB_X1_Y10_N10
\inst12|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~26_combout\ = (\inst12|counter\(13) & (!\inst12|Add0~25\)) # (!\inst12|counter\(13) & ((\inst12|Add0~25\) # (GND)))
-- \inst12|Add0~27\ = CARRY((!\inst12|Add0~25\) # (!\inst12|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(13),
	datad => VCC,
	cin => \inst12|Add0~25\,
	combout => \inst12|Add0~26_combout\,
	cout => \inst12|Add0~27\);

-- Location: LCCOMB_X1_Y10_N20
\inst12|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|counter~1_combout\ = (\inst12|Add0~26_combout\ & (((!\inst12|Equal0~3_combout\) # (!\inst12|Equal0~4_combout\)) # (!\inst12|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~2_combout\,
	datab => \inst12|Equal0~4_combout\,
	datac => \inst12|Equal0~3_combout\,
	datad => \inst12|Add0~26_combout\,
	combout => \inst12|counter~1_combout\);

-- Location: FF_X1_Y10_N21
\inst12|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(13));

-- Location: LCCOMB_X1_Y10_N12
\inst12|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~28_combout\ = (\inst12|counter\(14) & (\inst12|Add0~27\ $ (GND))) # (!\inst12|counter\(14) & (!\inst12|Add0~27\ & VCC))
-- \inst12|Add0~29\ = CARRY((\inst12|counter\(14) & !\inst12|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(14),
	datad => VCC,
	cin => \inst12|Add0~27\,
	combout => \inst12|Add0~28_combout\,
	cout => \inst12|Add0~29\);

-- Location: FF_X1_Y10_N13
\inst12|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(14));

-- Location: LCCOMB_X1_Y10_N14
\inst12|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~30_combout\ = (\inst12|counter\(15) & (!\inst12|Add0~29\)) # (!\inst12|counter\(15) & ((\inst12|Add0~29\) # (GND)))
-- \inst12|Add0~31\ = CARRY((!\inst12|Add0~29\) # (!\inst12|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(15),
	datad => VCC,
	cin => \inst12|Add0~29\,
	combout => \inst12|Add0~30_combout\,
	cout => \inst12|Add0~31\);

-- Location: FF_X1_Y10_N15
\inst12|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(15));

-- Location: LCCOMB_X1_Y11_N16
\inst12|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~0_combout\ = \inst12|counter\(0) $ (VCC)
-- \inst12|Add0~1\ = CARRY(\inst12|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(0),
	datad => VCC,
	combout => \inst12|Add0~0_combout\,
	cout => \inst12|Add0~1\);

-- Location: FF_X1_Y11_N17
\inst12|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(0));

-- Location: LCCOMB_X1_Y11_N18
\inst12|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~2_combout\ = (\inst12|counter\(1) & (!\inst12|Add0~1\)) # (!\inst12|counter\(1) & ((\inst12|Add0~1\) # (GND)))
-- \inst12|Add0~3\ = CARRY((!\inst12|Add0~1\) # (!\inst12|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(1),
	datad => VCC,
	cin => \inst12|Add0~1\,
	combout => \inst12|Add0~2_combout\,
	cout => \inst12|Add0~3\);

-- Location: FF_X1_Y11_N19
\inst12|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(1));

-- Location: LCCOMB_X1_Y11_N20
\inst12|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~4_combout\ = (\inst12|counter\(2) & (\inst12|Add0~3\ $ (GND))) # (!\inst12|counter\(2) & (!\inst12|Add0~3\ & VCC))
-- \inst12|Add0~5\ = CARRY((\inst12|counter\(2) & !\inst12|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(2),
	datad => VCC,
	cin => \inst12|Add0~3\,
	combout => \inst12|Add0~4_combout\,
	cout => \inst12|Add0~5\);

-- Location: FF_X1_Y11_N21
\inst12|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(2));

-- Location: LCCOMB_X1_Y11_N22
\inst12|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~6_combout\ = (\inst12|counter\(3) & (!\inst12|Add0~5\)) # (!\inst12|counter\(3) & ((\inst12|Add0~5\) # (GND)))
-- \inst12|Add0~7\ = CARRY((!\inst12|Add0~5\) # (!\inst12|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(3),
	datad => VCC,
	cin => \inst12|Add0~5\,
	combout => \inst12|Add0~6_combout\,
	cout => \inst12|Add0~7\);

-- Location: FF_X1_Y11_N23
\inst12|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(3));

-- Location: LCCOMB_X1_Y11_N4
\inst12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~0_combout\ = (\inst12|counter\(3) & (!\inst12|counter\(4) & (!\inst12|counter\(5) & !\inst12|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(3),
	datab => \inst12|counter\(4),
	datac => \inst12|counter\(5),
	datad => \inst12|counter\(6),
	combout => \inst12|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y10_N16
\inst12|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~32_combout\ = \inst12|Add0~31\ $ (!\inst12|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|counter\(16),
	cin => \inst12|Add0~31\,
	combout => \inst12|Add0~32_combout\);

-- Location: FF_X1_Y10_N17
\inst12|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(16));

-- Location: LCCOMB_X1_Y11_N30
\inst12|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~14_combout\ = (\inst12|counter\(7) & (!\inst12|Add0~13\)) # (!\inst12|counter\(7) & ((\inst12|Add0~13\) # (GND)))
-- \inst12|Add0~15\ = CARRY((!\inst12|Add0~13\) # (!\inst12|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(7),
	datad => VCC,
	cin => \inst12|Add0~13\,
	combout => \inst12|Add0~14_combout\,
	cout => \inst12|Add0~15\);

-- Location: LCCOMB_X1_Y10_N0
\inst12|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~16_combout\ = (\inst12|counter\(8) & (\inst12|Add0~15\ $ (GND))) # (!\inst12|counter\(8) & (!\inst12|Add0~15\ & VCC))
-- \inst12|Add0~17\ = CARRY((\inst12|counter\(8) & !\inst12|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(8),
	datad => VCC,
	cin => \inst12|Add0~15\,
	combout => \inst12|Add0~16_combout\,
	cout => \inst12|Add0~17\);

-- Location: LCCOMB_X1_Y10_N28
\inst12|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|counter~3_combout\ = (\inst12|Add0~16_combout\ & (((!\inst12|Equal0~3_combout\) # (!\inst12|Equal0~4_combout\)) # (!\inst12|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~2_combout\,
	datab => \inst12|Equal0~4_combout\,
	datac => \inst12|Equal0~3_combout\,
	datad => \inst12|Add0~16_combout\,
	combout => \inst12|counter~3_combout\);

-- Location: FF_X1_Y10_N29
\inst12|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(8));

-- Location: LCCOMB_X1_Y10_N24
\inst12|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~1_combout\ = (!\inst12|counter\(14) & (\inst12|counter\(8) & (\inst12|counter\(9) & !\inst12|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(14),
	datab => \inst12|counter\(8),
	datac => \inst12|counter\(9),
	datad => \inst12|counter\(11),
	combout => \inst12|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y11_N0
\inst12|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~2_combout\ = (!\inst12|counter\(15) & (\inst12|Equal0~0_combout\ & (!\inst12|counter\(16) & \inst12|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(15),
	datab => \inst12|Equal0~0_combout\,
	datac => \inst12|counter\(16),
	datad => \inst12|Equal0~1_combout\,
	combout => \inst12|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y10_N2
\inst12|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~18_combout\ = (\inst12|counter\(9) & (!\inst12|Add0~17\)) # (!\inst12|counter\(9) & ((\inst12|Add0~17\) # (GND)))
-- \inst12|Add0~19\ = CARRY((!\inst12|Add0~17\) # (!\inst12|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(9),
	datad => VCC,
	cin => \inst12|Add0~17\,
	combout => \inst12|Add0~18_combout\,
	cout => \inst12|Add0~19\);

-- Location: LCCOMB_X1_Y10_N26
\inst12|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|counter~4_combout\ = (\inst12|Add0~18_combout\ & (((!\inst12|Equal0~3_combout\) # (!\inst12|Equal0~4_combout\)) # (!\inst12|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~2_combout\,
	datab => \inst12|Equal0~4_combout\,
	datac => \inst12|Equal0~3_combout\,
	datad => \inst12|Add0~18_combout\,
	combout => \inst12|counter~4_combout\);

-- Location: FF_X1_Y10_N27
\inst12|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(9));

-- Location: LCCOMB_X1_Y10_N4
\inst12|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~20_combout\ = (\inst12|counter\(10) & (\inst12|Add0~19\ $ (GND))) # (!\inst12|counter\(10) & (!\inst12|Add0~19\ & VCC))
-- \inst12|Add0~21\ = CARRY((\inst12|counter\(10) & !\inst12|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(10),
	datad => VCC,
	cin => \inst12|Add0~19\,
	combout => \inst12|Add0~20_combout\,
	cout => \inst12|Add0~21\);

-- Location: LCCOMB_X1_Y10_N22
\inst12|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|counter~0_combout\ = (\inst12|Add0~20_combout\ & (((!\inst12|Equal0~2_combout\) # (!\inst12|Equal0~4_combout\)) # (!\inst12|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~3_combout\,
	datab => \inst12|Equal0~4_combout\,
	datac => \inst12|Add0~20_combout\,
	datad => \inst12|Equal0~2_combout\,
	combout => \inst12|counter~0_combout\);

-- Location: FF_X1_Y10_N23
\inst12|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(10));

-- Location: LCCOMB_X1_Y10_N6
\inst12|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~22_combout\ = (\inst12|counter\(11) & (!\inst12|Add0~21\)) # (!\inst12|counter\(11) & ((\inst12|Add0~21\) # (GND)))
-- \inst12|Add0~23\ = CARRY((!\inst12|Add0~21\) # (!\inst12|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(11),
	datad => VCC,
	cin => \inst12|Add0~21\,
	combout => \inst12|Add0~22_combout\,
	cout => \inst12|Add0~23\);

-- Location: FF_X1_Y10_N7
\inst12|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(11));

-- Location: FF_X1_Y10_N9
\inst12|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(12));

-- Location: LCCOMB_X1_Y10_N30
\inst12|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~3_combout\ = (!\inst12|counter\(12) & (\inst12|counter\(10) & \inst12|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(12),
	datac => \inst12|counter\(10),
	datad => \inst12|counter\(13),
	combout => \inst12|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst12|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~8_combout\ = (\inst12|counter\(4) & (\inst12|Add0~7\ $ (GND))) # (!\inst12|counter\(4) & (!\inst12|Add0~7\ & VCC))
-- \inst12|Add0~9\ = CARRY((\inst12|counter\(4) & !\inst12|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(4),
	datad => VCC,
	cin => \inst12|Add0~7\,
	combout => \inst12|Add0~8_combout\,
	cout => \inst12|Add0~9\);

-- Location: LCCOMB_X1_Y11_N14
\inst12|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|counter~2_combout\ = (\inst12|Add0~8_combout\ & (((!\inst12|Equal0~2_combout\) # (!\inst12|Equal0~4_combout\)) # (!\inst12|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~3_combout\,
	datab => \inst12|Equal0~4_combout\,
	datac => \inst12|Equal0~2_combout\,
	datad => \inst12|Add0~8_combout\,
	combout => \inst12|counter~2_combout\);

-- Location: FF_X1_Y11_N15
\inst12|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(4));

-- Location: LCCOMB_X1_Y11_N26
\inst12|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~10_combout\ = (\inst12|counter\(5) & (!\inst12|Add0~9\)) # (!\inst12|counter\(5) & ((\inst12|Add0~9\) # (GND)))
-- \inst12|Add0~11\ = CARRY((!\inst12|Add0~9\) # (!\inst12|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(5),
	datad => VCC,
	cin => \inst12|Add0~9\,
	combout => \inst12|Add0~10_combout\,
	cout => \inst12|Add0~11\);

-- Location: FF_X1_Y11_N27
\inst12|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(5));

-- Location: LCCOMB_X1_Y11_N28
\inst12|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~12_combout\ = (\inst12|counter\(6) & (\inst12|Add0~11\ $ (GND))) # (!\inst12|counter\(6) & (!\inst12|Add0~11\ & VCC))
-- \inst12|Add0~13\ = CARRY((\inst12|counter\(6) & !\inst12|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|counter\(6),
	datad => VCC,
	cin => \inst12|Add0~11\,
	combout => \inst12|Add0~12_combout\,
	cout => \inst12|Add0~13\);

-- Location: FF_X1_Y11_N29
\inst12|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(6));

-- Location: FF_X1_Y11_N31
\inst12|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|counter\(7));

-- Location: LCCOMB_X1_Y11_N8
\inst12|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~4_combout\ = (!\inst12|counter\(7) & (\inst12|counter\(0) & (\inst12|counter\(1) & \inst12|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(7),
	datab => \inst12|counter\(0),
	datac => \inst12|counter\(1),
	datad => \inst12|counter\(2),
	combout => \inst12|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y11_N12
\inst12|temp1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|temp1~0_combout\ = \inst12|temp1~q\ $ (((\inst12|Equal0~4_combout\ & (\inst12|Equal0~3_combout\ & \inst12|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|temp1~q\,
	datab => \inst12|Equal0~4_combout\,
	datac => \inst12|Equal0~3_combout\,
	datad => \inst12|Equal0~2_combout\,
	combout => \inst12|temp1~0_combout\);

-- Location: FF_X1_Y11_N3
\inst12|temp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	asdata => \inst12|temp1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|temp1~q\);

-- Location: LCCOMB_X1_Y11_N6
\inst12|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal1~1_combout\ = (!\inst12|counter\(1) & (!\inst12|counter\(0) & (\inst12|counter\(7) & !\inst12|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(1),
	datab => \inst12|counter\(0),
	datac => \inst12|counter\(7),
	datad => \inst12|counter\(2),
	combout => \inst12|Equal1~1_combout\);

-- Location: LCCOMB_X1_Y10_N18
\inst12|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal1~0_combout\ = (!\inst12|counter\(10) & (\inst12|counter\(12) & !\inst12|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|counter\(10),
	datac => \inst12|counter\(12),
	datad => \inst12|counter\(13),
	combout => \inst12|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\inst12|temp2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|temp2~0_combout\ = \inst12|temp2~q\ $ (((\inst12|Equal1~1_combout\ & (\inst12|Equal0~2_combout\ & \inst12|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal1~1_combout\,
	datab => \inst12|Equal0~2_combout\,
	datac => \inst12|temp2~q\,
	datad => \inst12|Equal1~0_combout\,
	combout => \inst12|temp2~0_combout\);

-- Location: FF_X1_Y11_N11
\inst12|temp2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK48M~input_o\,
	d => \inst12|temp2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|temp2~q\);

-- Location: LCCOMB_X1_Y11_N2
\inst12|clockout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|clockout~combout\ = LCELL(\inst12|temp1~q\ $ (\inst12|temp2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|temp1~q\,
	datad => \inst12|temp2~q\,
	combout => \inst12|clockout~combout\);

-- Location: CLKCTRL_G1
\inst12|clockout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12|clockout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12|clockout~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N10
\inst7|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[0]~2_combout\ = !\inst7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cnt\(0),
	combout => \inst7|cnt[0]~2_combout\);

-- Location: FF_X2_Y11_N11
\inst7|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst7|cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(0));

-- Location: LCCOMB_X33_Y16_N4
\inst7|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[1]~0_combout\ = \inst7|cnt\(1) $ (\inst7|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(0),
	combout => \inst7|cnt[1]~0_combout\);

-- Location: FF_X33_Y16_N5
\inst7|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst7|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(1));

-- Location: LCCOMB_X33_Y16_N10
\inst7|cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[2]~1_combout\ = \inst7|cnt\(2) $ (((\inst7|cnt\(1) & \inst7|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(1),
	datac => \inst7|cnt\(2),
	datad => \inst7|cnt\(0),
	combout => \inst7|cnt[2]~1_combout\);

-- Location: FF_X33_Y16_N11
\inst7|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst7|cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(2));

-- Location: LCCOMB_X33_Y16_N24
\inst5|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~0_combout\ = (!\inst7|cnt\(0) & (!\inst7|cnt\(1) & !\inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~0_combout\);

-- Location: LCCOMB_X33_Y13_N6
\inst5|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~1_combout\ = (\inst7|cnt\(0) & (!\inst7|cnt\(1) & !\inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~1_combout\);

-- Location: LCCOMB_X33_Y13_N28
\inst5|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~2_combout\ = (!\inst7|cnt\(0) & (\inst7|cnt\(1) & !\inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~2_combout\);

-- Location: LCCOMB_X33_Y13_N26
\inst5|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~3_combout\ = (\inst7|cnt\(0) & (\inst7|cnt\(1) & !\inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~3_combout\);

-- Location: LCCOMB_X33_Y13_N8
\inst5|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~4_combout\ = (!\inst7|cnt\(0) & (!\inst7|cnt\(1) & \inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~4_combout\);

-- Location: LCCOMB_X33_Y16_N2
\inst5|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~5_combout\ = (\inst7|cnt\(0) & (!\inst7|cnt\(1) & \inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~5_combout\);

-- Location: LCCOMB_X33_Y16_N0
\inst5|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~6_combout\ = (!\inst7|cnt\(0) & (\inst7|cnt\(1) & \inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~6_combout\);

-- Location: LCCOMB_X33_Y13_N24
\inst5|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~7_combout\ = (\inst7|cnt\(0) & (\inst7|cnt\(1) & \inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Decoder0~7_combout\);

-- Location: LCCOMB_X33_Y13_N2
\inst5|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~3_combout\ = (\inst7|cnt\(2) & ((\inst7|cnt\(0)) # (!\inst7|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Mux3~3_combout\);

-- Location: LCCOMB_X2_Y11_N14
\inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = (\inst7|cnt\(0) & (\inst13|counter\(1) $ (VCC))) # (!\inst7|cnt\(0) & (\inst13|counter\(1) & VCC))
-- \inst13|Add0~1\ = CARRY((\inst7|cnt\(0) & \inst13|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datab => \inst13|counter\(1),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: FF_X2_Y11_N15
\inst13|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(1));

-- Location: LCCOMB_X2_Y11_N16
\inst13|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = (\inst13|counter\(2) & (!\inst13|Add0~1\)) # (!\inst13|counter\(2) & ((\inst13|Add0~1\) # (GND)))
-- \inst13|Add0~3\ = CARRY((!\inst13|Add0~1\) # (!\inst13|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(2),
	datad => VCC,
	cin => \inst13|Add0~1\,
	combout => \inst13|Add0~2_combout\,
	cout => \inst13|Add0~3\);

-- Location: FF_X2_Y11_N17
\inst13|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(2));

-- Location: LCCOMB_X2_Y11_N18
\inst13|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|counter\(3) & (\inst13|Add0~3\ $ (GND))) # (!\inst13|counter\(3) & (!\inst13|Add0~3\ & VCC))
-- \inst13|Add0~5\ = CARRY((\inst13|counter\(3) & !\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(3),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: FF_X2_Y11_N19
\inst13|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(3));

-- Location: LCCOMB_X2_Y11_N20
\inst13|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst13|counter\(4) & (!\inst13|Add0~5\)) # (!\inst13|counter\(4) & ((\inst13|Add0~5\) # (GND)))
-- \inst13|Add0~7\ = CARRY((!\inst13|Add0~5\) # (!\inst13|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(4),
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

-- Location: LCCOMB_X2_Y11_N0
\inst13|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~2_combout\ = (\inst13|Add0~6_combout\ & (((!\inst13|Equal0~0_combout\) # (!\inst13|counter\(2))) # (!\inst13|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~1_combout\,
	datab => \inst13|counter\(2),
	datac => \inst13|Equal0~0_combout\,
	datad => \inst13|Add0~6_combout\,
	combout => \inst13|counter~2_combout\);

-- Location: FF_X2_Y11_N1
\inst13|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(4));

-- Location: LCCOMB_X2_Y11_N22
\inst13|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = (\inst13|counter\(5) & (\inst13|Add0~7\ $ (GND))) # (!\inst13|counter\(5) & (!\inst13|Add0~7\ & VCC))
-- \inst13|Add0~9\ = CARRY((\inst13|counter\(5) & !\inst13|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(5),
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

-- Location: LCCOMB_X2_Y11_N24
\inst13|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = (\inst13|counter\(6) & (!\inst13|Add0~9\)) # (!\inst13|counter\(6) & ((\inst13|Add0~9\) # (GND)))
-- \inst13|Add0~11\ = CARRY((!\inst13|Add0~9\) # (!\inst13|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(6),
	datad => VCC,
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\,
	cout => \inst13|Add0~11\);

-- Location: LCCOMB_X2_Y11_N8
\inst13|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~1_combout\ = (\inst13|Add0~10_combout\ & (((!\inst13|Equal0~0_combout\) # (!\inst13|counter\(2))) # (!\inst13|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~1_combout\,
	datab => \inst13|counter\(2),
	datac => \inst13|Equal0~0_combout\,
	datad => \inst13|Add0~10_combout\,
	combout => \inst13|counter~1_combout\);

-- Location: FF_X2_Y11_N9
\inst13|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(6));

-- Location: LCCOMB_X2_Y11_N26
\inst13|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~12_combout\ = \inst13|Add0~11\ $ (!\inst13|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|counter\(7),
	cin => \inst13|Add0~11\,
	combout => \inst13|Add0~12_combout\);

-- Location: LCCOMB_X2_Y11_N6
\inst13|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~3_combout\ = (\inst13|Add0~12_combout\ & (((!\inst13|counter\(2)) # (!\inst13|Equal0~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|Equal0~1_combout\,
	datac => \inst13|Add0~12_combout\,
	datad => \inst13|counter\(2),
	combout => \inst13|counter~3_combout\);

-- Location: FF_X2_Y11_N7
\inst13|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(7));

-- Location: LCCOMB_X2_Y11_N28
\inst13|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~1_combout\ = (\inst13|counter\(7) & (\inst13|counter\(1) & (\inst7|cnt\(0) & !\inst13|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(7),
	datab => \inst13|counter\(1),
	datac => \inst7|cnt\(0),
	datad => \inst13|counter\(4),
	combout => \inst13|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y11_N4
\inst13|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~0_combout\ = (\inst13|Add0~8_combout\ & (((!\inst13|counter\(2)) # (!\inst13|Equal0~0_combout\)) # (!\inst13|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~1_combout\,
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|Add0~8_combout\,
	datad => \inst13|counter\(2),
	combout => \inst13|counter~0_combout\);

-- Location: FF_X2_Y11_N5
\inst13|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(5));

-- Location: LCCOMB_X2_Y11_N12
\inst13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (\inst13|counter\(5) & (\inst13|counter\(6) & \inst13|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(5),
	datac => \inst13|counter\(6),
	datad => \inst13|counter\(3),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y11_N30
\inst13|temp1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|temp1~0_combout\ = \inst13|temp1~q\ $ (((\inst13|Equal0~0_combout\ & (\inst13|counter\(2) & \inst13|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|temp1~q\,
	datac => \inst13|counter\(2),
	datad => \inst13|Equal0~1_combout\,
	combout => \inst13|temp1~0_combout\);

-- Location: LCCOMB_X3_Y11_N14
\inst13|temp1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|temp1~feeder_combout\ = \inst13|temp1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|temp1~0_combout\,
	combout => \inst13|temp1~feeder_combout\);

-- Location: FF_X3_Y11_N15
\inst13|temp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|clockout~clkctrl_outclk\,
	d => \inst13|temp1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|temp1~q\);

-- Location: LCCOMB_X2_Y11_N2
\inst13|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal1~0_combout\ = (!\inst13|counter\(7) & (\inst13|counter\(4) & (!\inst13|counter\(1) & !\inst7|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(7),
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(1),
	datad => \inst7|cnt\(0),
	combout => \inst13|Equal1~0_combout\);

-- Location: LCCOMB_X2_Y11_N30
\inst13|temp2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|temp2~0_combout\ = \inst13|temp2~q\ $ (((\inst13|Equal0~0_combout\ & (!\inst13|counter\(2) & \inst13|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|counter\(2),
	datac => \inst13|temp2~q\,
	datad => \inst13|Equal1~0_combout\,
	combout => \inst13|temp2~0_combout\);

-- Location: FF_X2_Y11_N31
\inst13|temp2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|ALT_INV_clockout~combout\,
	d => \inst13|temp2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|temp2~q\);

-- Location: LCCOMB_X3_Y11_N24
\inst13|clockout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|clockout~combout\ = LCELL(\inst13|temp1~q\ $ (\inst13|temp2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|temp1~q\,
	datad => \inst13|temp2~q\,
	combout => \inst13|clockout~combout\);

-- Location: LCCOMB_X3_Y11_N18
\inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = !\inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14~q\,
	combout => \inst14~0_combout\);

-- Location: FF_X3_Y11_N25
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|clockout~combout\,
	asdata => \inst14~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: CLKCTRL_G0
\inst14~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14~clkctrl_outclk\);

-- Location: IOIBUF_X28_Y24_N15
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X31_Y12_N28
\inst|cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~3_combout\ = !\inst|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	combout => \inst|cnt[0]~3_combout\);

-- Location: IOIBUF_X34_Y12_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G6
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X31_Y12_N29
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	d => \inst|cnt[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X31_Y12_N30
\inst|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~2_combout\ = (\inst|cnt\(2) & (\inst|cnt\(3) $ (((\inst|cnt\(1) & \inst|cnt\(0)))))) # (!\inst|cnt\(2) & (\inst|cnt\(3) & ((\inst|cnt\(1)) # (!\inst|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(3),
	datad => \inst|cnt\(0),
	combout => \inst|cnt~2_combout\);

-- Location: FF_X31_Y12_N31
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	d => \inst|cnt~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X31_Y12_N18
\inst|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~0_combout\ = (\inst|cnt\(0) & (!\inst|cnt\(1) & ((\inst|cnt\(2)) # (!\inst|cnt\(3))))) # (!\inst|cnt\(0) & (((\inst|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(2),
	combout => \inst|cnt~0_combout\);

-- Location: FF_X31_Y12_N19
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	d => \inst|cnt~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X31_Y12_N26
\inst|cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~1_combout\ = \inst|cnt\(2) $ (((\EN~input_o\ & (\inst|cnt\(0) & \inst|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(1),
	combout => \inst|cnt[2]~1_combout\);

-- Location: FF_X31_Y12_N27
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	d => \inst|cnt[2]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X31_Y12_N24
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|cnt\(2) & (!\inst|cnt\(1) & (\inst|cnt\(3) & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(3),
	datad => \inst|cnt\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: FF_X31_Y12_N25
\inst|co\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	d => \inst|Equal0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|co~q\);

-- Location: CLKCTRL_G5
\inst|co~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|co~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|co~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N30
\inst1|cnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[0]~4_combout\ = !\inst1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cnt\(0),
	combout => \inst1|cnt[0]~4_combout\);

-- Location: FF_X32_Y12_N31
\inst1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|co~clkctrl_outclk\,
	d => \inst1|cnt[0]~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(0));

-- Location: LCCOMB_X32_Y12_N20
\inst1|cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[3]~2_combout\ = (\inst1|cnt\(1) & (\EN~input_o\ & (\inst1|cnt\(0) & \inst1|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(1),
	datab => \EN~input_o\,
	datac => \inst1|cnt\(0),
	datad => \inst1|cnt\(2),
	combout => \inst1|cnt[3]~2_combout\);

-- Location: LCCOMB_X32_Y12_N26
\inst1|cnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[3]~3_combout\ = \inst1|cnt\(3) $ (\inst1|cnt[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cnt\(3),
	datad => \inst1|cnt[3]~2_combout\,
	combout => \inst1|cnt[3]~3_combout\);

-- Location: FF_X32_Y12_N27
\inst1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|co~clkctrl_outclk\,
	d => \inst1|cnt[3]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(3));

-- Location: LCCOMB_X32_Y12_N12
\inst1|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt~0_combout\ = (\inst1|cnt\(0) & (!\inst1|cnt\(1) & ((\inst1|cnt\(3)) # (!\inst1|cnt\(2))))) # (!\inst1|cnt\(0) & (((\inst1|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(2),
	datab => \inst1|cnt\(0),
	datac => \inst1|cnt\(1),
	datad => \inst1|cnt\(3),
	combout => \inst1|cnt~0_combout\);

-- Location: FF_X32_Y12_N13
\inst1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|co~clkctrl_outclk\,
	d => \inst1|cnt~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(1));

-- Location: LCCOMB_X32_Y12_N10
\inst1|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt~1_combout\ = (\inst1|cnt\(1) & (\inst1|cnt\(0) $ ((\inst1|cnt\(2))))) # (!\inst1|cnt\(1) & (\inst1|cnt\(2) & ((\inst1|cnt\(3)) # (!\inst1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(1),
	datab => \inst1|cnt\(0),
	datac => \inst1|cnt\(2),
	datad => \inst1|cnt\(3),
	combout => \inst1|cnt~1_combout\);

-- Location: FF_X32_Y12_N11
\inst1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|co~clkctrl_outclk\,
	d => \inst1|cnt~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(2));

-- Location: LCCOMB_X32_Y12_N22
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|cnt\(2) & (\inst1|cnt\(0) & (!\inst1|cnt\(3) & !\inst1|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(2),
	datab => \inst1|cnt\(0),
	datac => \inst1|cnt\(3),
	datad => \inst1|cnt\(1),
	combout => \inst1|Equal0~0_combout\);

-- Location: FF_X32_Y12_N23
\inst1|co\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|co~clkctrl_outclk\,
	d => \inst1|Equal0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|co~q\);

-- Location: CLKCTRL_G9
\inst1|co~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|co~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|co~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y13_N0
\inst2|cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt[0]~3_combout\ = !\inst2|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|cnt\(0),
	combout => \inst2|cnt[0]~3_combout\);

-- Location: FF_X33_Y13_N1
\inst2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|co~clkctrl_outclk\,
	d => \inst2|cnt[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(0));

-- Location: LCCOMB_X33_Y13_N4
\inst2|cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt[2]~1_combout\ = \inst2|cnt\(2) $ (((\EN~input_o\ & (\inst2|cnt\(0) & \inst2|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \inst2|cnt\(0),
	datac => \inst2|cnt\(2),
	datad => \inst2|cnt\(1),
	combout => \inst2|cnt[2]~1_combout\);

-- Location: FF_X33_Y13_N5
\inst2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|co~clkctrl_outclk\,
	d => \inst2|cnt[2]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(2));

-- Location: LCCOMB_X33_Y13_N18
\inst2|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~2_combout\ = (\inst2|cnt\(1) & (\inst2|cnt\(3) $ (((\inst2|cnt\(2) & \inst2|cnt\(0)))))) # (!\inst2|cnt\(1) & (\inst2|cnt\(3) & ((\inst2|cnt\(2)) # (!\inst2|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(1),
	datab => \inst2|cnt\(2),
	datac => \inst2|cnt\(3),
	datad => \inst2|cnt\(0),
	combout => \inst2|cnt~2_combout\);

-- Location: FF_X33_Y13_N19
\inst2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|co~clkctrl_outclk\,
	d => \inst2|cnt~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(3));

-- Location: LCCOMB_X33_Y13_N10
\inst2|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~0_combout\ = (\inst2|cnt\(0) & (!\inst2|cnt\(1) & ((\inst2|cnt\(2)) # (!\inst2|cnt\(3))))) # (!\inst2|cnt\(0) & (((\inst2|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(3),
	datab => \inst2|cnt\(0),
	datac => \inst2|cnt\(1),
	datad => \inst2|cnt\(2),
	combout => \inst2|cnt~0_combout\);

-- Location: FF_X33_Y13_N11
\inst2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|co~clkctrl_outclk\,
	d => \inst2|cnt~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(1));

-- Location: LCCOMB_X33_Y13_N30
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|cnt\(1) & (!\inst2|cnt\(2) & (\inst2|cnt\(3) & \inst2|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(1),
	datab => \inst2|cnt\(2),
	datac => \inst2|cnt\(3),
	datad => \inst2|cnt\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: FF_X33_Y13_N31
\inst2|co\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|co~clkctrl_outclk\,
	d => \inst2|Equal0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|co~q\);

-- Location: CLKCTRL_G8
\inst2|co~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|co~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|co~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N30
\inst3|cnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[0]~4_combout\ = !\inst3|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(0),
	combout => \inst3|cnt[0]~4_combout\);

-- Location: FF_X33_Y12_N31
\inst3|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|co~clkctrl_outclk\,
	d => \inst3|cnt[0]~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(0));

-- Location: LCCOMB_X33_Y12_N24
\inst3|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt~1_combout\ = (\inst3|cnt\(0) & ((\inst3|cnt\(1) & (!\inst3|cnt\(2))) # (!\inst3|cnt\(1) & (\inst3|cnt\(2) & \inst3|cnt\(3))))) # (!\inst3|cnt\(0) & (((\inst3|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(0),
	datab => \inst3|cnt\(1),
	datac => \inst3|cnt\(2),
	datad => \inst3|cnt\(3),
	combout => \inst3|cnt~1_combout\);

-- Location: FF_X33_Y12_N25
\inst3|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|co~clkctrl_outclk\,
	d => \inst3|cnt~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(2));

-- Location: LCCOMB_X33_Y12_N18
\inst3|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt~0_combout\ = (\inst3|cnt\(0) & (!\inst3|cnt\(1) & ((\inst3|cnt\(3)) # (!\inst3|cnt\(2))))) # (!\inst3|cnt\(0) & (((\inst3|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(0),
	datab => \inst3|cnt\(2),
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(3),
	combout => \inst3|cnt~0_combout\);

-- Location: FF_X33_Y12_N19
\inst3|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|co~clkctrl_outclk\,
	d => \inst3|cnt~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(1));

-- Location: LCCOMB_X33_Y12_N28
\inst3|cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3]~2_combout\ = (\EN~input_o\ & (\inst3|cnt\(1) & (\inst3|cnt\(0) & \inst3|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \inst3|cnt\(1),
	datac => \inst3|cnt\(0),
	datad => \inst3|cnt\(2),
	combout => \inst3|cnt[3]~2_combout\);

-- Location: LCCOMB_X33_Y12_N26
\inst3|cnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3]~3_combout\ = \inst3|cnt\(3) $ (\inst3|cnt[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(3),
	datad => \inst3|cnt[3]~2_combout\,
	combout => \inst3|cnt[3]~3_combout\);

-- Location: FF_X33_Y12_N27
\inst3|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|co~clkctrl_outclk\,
	d => \inst3|cnt[3]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(3));

-- Location: LCCOMB_X33_Y13_N12
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (!\inst7|cnt\(0) & \inst2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datad => \inst2|cnt\(3),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y13_N20
\inst5|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~2_combout\ = (\inst7|cnt\(2) & ((!\inst7|cnt\(1)))) # (!\inst7|cnt\(2) & (\inst7|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(2),
	combout => \inst5|Mux3~2_combout\);

-- Location: LCCOMB_X33_Y12_N22
\inst5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = (\inst5|Mux3~3_combout\ & (((\inst5|Mux0~0_combout\ & \inst5|Mux3~2_combout\)))) # (!\inst5|Mux3~3_combout\ & ((\inst3|cnt\(3)) # ((!\inst5|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~3_combout\,
	datab => \inst3|cnt\(3),
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|Mux3~2_combout\,
	combout => \inst5|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y12_N2
\inst5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst7|cnt\(2) & \inst7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cnt\(2),
	datad => \inst7|cnt\(1),
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst5|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~2_combout\ = (\inst5|Mux0~1_combout\ & ((\inst1|cnt\(3)) # ((!\inst5|Mux3~0_combout\)))) # (!\inst5|Mux0~1_combout\ & (((\inst|cnt\(3) & \inst5|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~1_combout\,
	datab => \inst1|cnt\(3),
	datac => \inst|cnt\(3),
	datad => \inst5|Mux3~0_combout\,
	combout => \inst5|Mux0~2_combout\);

-- Location: LCCOMB_X33_Y12_N10
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|cnt\(3) & (!\inst3|cnt\(1) & (\inst3|cnt\(0) & \inst3|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datab => \inst3|cnt\(1),
	datac => \inst3|cnt\(0),
	datad => \inst3|cnt\(2),
	combout => \inst3|Equal0~0_combout\);

-- Location: FF_X33_Y12_N11
\inst3|co\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|co~clkctrl_outclk\,
	d => \inst3|Equal0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|co~q\);

-- Location: CLKCTRL_G7
\inst3|co~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|co~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|co~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y23_N8
\inst4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~0_combout\ = \inst4|cnt\(0) $ (VCC)
-- \inst4|Add1~1\ = CARRY(\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(0),
	datad => VCC,
	combout => \inst4|Add1~0_combout\,
	cout => \inst4|Add1~1\);

-- Location: FF_X26_Y23_N9
\inst4|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|Add1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(0));

-- Location: LCCOMB_X26_Y23_N10
\inst4|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~2_combout\ = (\inst4|cnt\(1) & (!\inst4|Add1~1\)) # (!\inst4|cnt\(1) & ((\inst4|Add1~1\) # (GND)))
-- \inst4|Add1~3\ = CARRY((!\inst4|Add1~1\) # (!\inst4|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datad => VCC,
	cin => \inst4|Add1~1\,
	combout => \inst4|Add1~2_combout\,
	cout => \inst4|Add1~3\);

-- Location: LCCOMB_X25_Y23_N0
\inst4|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt~0_combout\ = (\inst4|Add1~2_combout\ & !\inst4|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add1~2_combout\,
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|cnt~0_combout\);

-- Location: FF_X25_Y23_N1
\inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|cnt~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(1));

-- Location: LCCOMB_X26_Y23_N6
\inst4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (\inst4|cnt\(3) & (\inst4|cnt\(0) & (!\inst4|cnt\(1) & !\inst4|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datab => \inst4|cnt\(0),
	datac => \inst4|cnt\(1),
	datad => \inst4|cnt\(2),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y23_N14
\inst4|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~6_combout\ = (\inst4|cnt\(3) & (!\inst4|Add1~5\)) # (!\inst4|cnt\(3) & ((\inst4|Add1~5\) # (GND)))
-- \inst4|Add1~7\ = CARRY((!\inst4|Add1~5\) # (!\inst4|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datad => VCC,
	cin => \inst4|Add1~5\,
	combout => \inst4|Add1~6_combout\,
	cout => \inst4|Add1~7\);

-- Location: LCCOMB_X26_Y23_N16
\inst4|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~8_combout\ = (\inst4|cnt\(4) & (\inst4|Add1~7\ $ (GND))) # (!\inst4|cnt\(4) & (!\inst4|Add1~7\ & VCC))
-- \inst4|Add1~9\ = CARRY((\inst4|cnt\(4) & !\inst4|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(4),
	datad => VCC,
	cin => \inst4|Add1~7\,
	combout => \inst4|Add1~8_combout\,
	cout => \inst4|Add1~9\);

-- Location: LCCOMB_X25_Y23_N14
\inst4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_cout\ = CARRY(\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(0),
	datad => VCC,
	cout => \inst4|Add0~1_cout\);

-- Location: LCCOMB_X25_Y23_N16
\inst4|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~3_cout\ = CARRY((!\inst4|cnt\(1) & !\inst4|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(1),
	datad => VCC,
	cin => \inst4|Add0~1_cout\,
	cout => \inst4|Add0~3_cout\);

-- Location: LCCOMB_X25_Y23_N18
\inst4|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_cout\ = CARRY((\inst4|cnt\(2)) # (!\inst4|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datad => VCC,
	cin => \inst4|Add0~3_cout\,
	cout => \inst4|Add0~5_cout\);

-- Location: LCCOMB_X25_Y23_N20
\inst4|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~7_cout\ = CARRY((!\inst4|Add0~5_cout\) # (!\inst4|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(3),
	datad => VCC,
	cin => \inst4|Add0~5_cout\,
	cout => \inst4|Add0~7_cout\);

-- Location: LCCOMB_X25_Y23_N22
\inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|cnt\(4) & (\inst4|Add0~7_cout\ $ (GND))) # (!\inst4|cnt\(4) & (!\inst4|Add0~7_cout\ & VCC))
-- \inst4|Add0~9\ = CARRY((\inst4|cnt\(4) & !\inst4|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(4),
	datad => VCC,
	cin => \inst4|Add0~7_cout\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X26_Y23_N28
\inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|Equal1~0_combout\ & ((\inst4|Add0~8_combout\))) # (!\inst4|Equal1~0_combout\ & (\inst4|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~0_combout\,
	datab => \inst4|Add1~8_combout\,
	datad => \inst4|Add0~8_combout\,
	combout => \inst4|Add0~10_combout\);

-- Location: FF_X26_Y23_N29
\inst4|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|Add0~10_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(4));

-- Location: LCCOMB_X25_Y23_N24
\inst4|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~11_combout\ = (\inst4|cnt\(5) & (!\inst4|Add0~9\)) # (!\inst4|cnt\(5) & ((\inst4|Add0~9\) # (GND)))
-- \inst4|Add0~12\ = CARRY((!\inst4|Add0~9\) # (!\inst4|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~11_combout\,
	cout => \inst4|Add0~12\);

-- Location: LCCOMB_X25_Y23_N26
\inst4|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_combout\ = (\inst4|cnt\(6) & (\inst4|Add0~12\ $ (GND))) # (!\inst4|cnt\(6) & (!\inst4|Add0~12\ & VCC))
-- \inst4|Add0~14\ = CARRY((\inst4|cnt\(6) & !\inst4|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(6),
	datad => VCC,
	cin => \inst4|Add0~12\,
	combout => \inst4|Add0~13_combout\,
	cout => \inst4|Add0~14\);

-- Location: LCCOMB_X26_Y23_N18
\inst4|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~10_combout\ = (\inst4|cnt\(5) & (!\inst4|Add1~9\)) # (!\inst4|cnt\(5) & ((\inst4|Add1~9\) # (GND)))
-- \inst4|Add1~11\ = CARRY((!\inst4|Add1~9\) # (!\inst4|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(5),
	datad => VCC,
	cin => \inst4|Add1~9\,
	combout => \inst4|Add1~10_combout\,
	cout => \inst4|Add1~11\);

-- Location: LCCOMB_X26_Y23_N20
\inst4|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~12_combout\ = (\inst4|cnt\(6) & (\inst4|Add1~11\ $ (GND))) # (!\inst4|cnt\(6) & (!\inst4|Add1~11\ & VCC))
-- \inst4|Add1~13\ = CARRY((\inst4|cnt\(6) & !\inst4|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(6),
	datad => VCC,
	cin => \inst4|Add1~11\,
	combout => \inst4|Add1~12_combout\,
	cout => \inst4|Add1~13\);

-- Location: LCCOMB_X25_Y23_N10
\inst4|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~15_combout\ = (\inst4|Equal1~0_combout\ & (\inst4|Add0~13_combout\)) # (!\inst4|Equal1~0_combout\ & ((\inst4|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~13_combout\,
	datac => \inst4|Add1~12_combout\,
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|Add0~15_combout\);

-- Location: FF_X25_Y23_N11
\inst4|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|Add0~15_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(6));

-- Location: LCCOMB_X25_Y23_N28
\inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = \inst4|cnt\(7) $ (\inst4|Add0~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(7),
	cin => \inst4|Add0~14\,
	combout => \inst4|Add0~16_combout\);

-- Location: LCCOMB_X26_Y23_N22
\inst4|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~14_combout\ = \inst4|Add1~13\ $ (\inst4|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|cnt\(7),
	cin => \inst4|Add1~13\,
	combout => \inst4|Add1~14_combout\);

-- Location: LCCOMB_X25_Y23_N8
\inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|Equal1~0_combout\ & (\inst4|Add0~16_combout\)) # (!\inst4|Equal1~0_combout\ & ((\inst4|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~0_combout\,
	datab => \inst4|Add0~16_combout\,
	datad => \inst4|Add1~14_combout\,
	combout => \inst4|Add0~18_combout\);

-- Location: FF_X25_Y23_N9
\inst4|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|Add0~18_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(7));

-- Location: LCCOMB_X25_Y23_N2
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst4|cnt\(2) & (!\inst4|cnt\(7) & (\inst4|cnt\(0) & !\inst4|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datab => \inst4|cnt\(7),
	datac => \inst4|cnt\(0),
	datad => \inst4|cnt\(6),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y23_N30
\inst4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (\inst4|Equal0~1_combout\ & \inst4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Equal0~1_combout\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y23_N6
\inst4|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt~1_combout\ = (!\inst4|Equal0~2_combout\ & ((\inst4|Equal1~0_combout\ & (\inst4|Add0~11_combout\)) # (!\inst4|Equal1~0_combout\ & ((\inst4|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~0_combout\,
	datab => \inst4|Add0~11_combout\,
	datac => \inst4|Equal0~2_combout\,
	datad => \inst4|Add1~10_combout\,
	combout => \inst4|cnt~1_combout\);

-- Location: FF_X25_Y23_N7
\inst4|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|cnt~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(5));

-- Location: LCCOMB_X25_Y23_N4
\inst4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (\inst4|cnt\(5) & (!\inst4|cnt\(3) & (\inst4|cnt\(1) & !\inst4|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(5),
	datab => \inst4|cnt\(3),
	datac => \inst4|cnt\(1),
	datad => \inst4|cnt\(4),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y23_N12
\inst4|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~4_combout\ = (\inst4|cnt\(2) & (\inst4|Add1~3\ $ (GND))) # (!\inst4|cnt\(2) & (!\inst4|Add1~3\ & VCC))
-- \inst4|Add1~5\ = CARRY((\inst4|cnt\(2) & !\inst4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datad => VCC,
	cin => \inst4|Add1~3\,
	combout => \inst4|Add1~4_combout\,
	cout => \inst4|Add1~5\);

-- Location: LCCOMB_X25_Y23_N12
\inst4|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt~2_combout\ = (\inst4|Add1~4_combout\ & ((!\inst4|Equal0~0_combout\) # (!\inst4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal0~1_combout\,
	datac => \inst4|Add1~4_combout\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|cnt~2_combout\);

-- Location: FF_X25_Y23_N13
\inst4|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|cnt~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(2));

-- Location: LCCOMB_X26_Y23_N26
\inst4|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt~3_combout\ = (\inst4|Add1~6_combout\ & !\inst4|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add1~6_combout\,
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|cnt~3_combout\);

-- Location: FF_X26_Y23_N27
\inst4|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|co~clkctrl_outclk\,
	d => \inst4|cnt~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(3));

-- Location: LCCOMB_X26_Y23_N4
\inst5|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~3_combout\ = (\inst7|cnt\(0) & (\inst4|cnt\(3))) # (!\inst7|cnt\(0) & ((\inst4|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datac => \inst7|cnt\(0),
	datad => \inst4|cnt\(7),
	combout => \inst5|Mux0~3_combout\);

-- Location: LCCOMB_X33_Y16_N26
\inst5|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~4_combout\ = (\inst7|cnt\(2) & (\inst5|Mux0~2_combout\)) # (!\inst7|cnt\(2) & ((\inst7|cnt\(1) & (\inst5|Mux0~2_combout\)) # (!\inst7|cnt\(1) & ((\inst5|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(2),
	datab => \inst5|Mux0~2_combout\,
	datac => \inst7|cnt\(1),
	datad => \inst5|Mux0~3_combout\,
	combout => \inst5|Mux0~4_combout\);

-- Location: LCCOMB_X33_Y13_N16
\inst5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (!\inst7|cnt\(0) & \inst2|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cnt\(0),
	datad => \inst2|cnt\(2),
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y12_N12
\inst5|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = (\inst5|Mux3~3_combout\ & (((\inst5|Mux1~0_combout\) # (!\inst5|Mux3~2_combout\)))) # (!\inst5|Mux3~3_combout\ & (\inst3|cnt\(2) & ((\inst5|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~3_combout\,
	datab => \inst3|cnt\(2),
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|Mux3~2_combout\,
	combout => \inst5|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y12_N8
\inst5|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~2_combout\ = (\inst5|Mux1~1_combout\ & ((\inst|cnt\(2)) # ((!\inst5|Mux3~0_combout\)))) # (!\inst5|Mux1~1_combout\ & (((\inst1|cnt\(2) & \inst5|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst5|Mux1~1_combout\,
	datac => \inst1|cnt\(2),
	datad => \inst5|Mux3~0_combout\,
	combout => \inst5|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y23_N0
\inst5|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~3_combout\ = (\inst7|cnt\(0) & (\inst4|cnt\(2))) # (!\inst7|cnt\(0) & ((\inst4|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datac => \inst7|cnt\(0),
	datad => \inst4|cnt\(6),
	combout => \inst5|Mux1~3_combout\);

-- Location: LCCOMB_X33_Y16_N28
\inst5|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~4_combout\ = (\inst7|cnt\(2) & (\inst5|Mux1~2_combout\)) # (!\inst7|cnt\(2) & ((\inst7|cnt\(1) & (\inst5|Mux1~2_combout\)) # (!\inst7|cnt\(1) & ((\inst5|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(2),
	datab => \inst5|Mux1~2_combout\,
	datac => \inst7|cnt\(1),
	datad => \inst5|Mux1~3_combout\,
	combout => \inst5|Mux1~4_combout\);

-- Location: LCCOMB_X33_Y13_N22
\inst5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst2|cnt\(1) & !\inst7|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(1),
	datac => \inst7|cnt\(0),
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y12_N20
\inst5|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~1_combout\ = (\inst5|Mux3~3_combout\ & (\inst5|Mux2~0_combout\ & ((\inst5|Mux3~2_combout\)))) # (!\inst5|Mux3~3_combout\ & (((\inst3|cnt\(1)) # (!\inst5|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~3_combout\,
	datab => \inst5|Mux2~0_combout\,
	datac => \inst3|cnt\(1),
	datad => \inst5|Mux3~2_combout\,
	combout => \inst5|Mux2~1_combout\);

-- Location: LCCOMB_X32_Y12_N6
\inst5|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~2_combout\ = (\inst5|Mux3~0_combout\ & ((\inst5|Mux2~1_combout\ & (\inst1|cnt\(1))) # (!\inst5|Mux2~1_combout\ & ((\inst|cnt\(1)))))) # (!\inst5|Mux3~0_combout\ & (((\inst5|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(1),
	datab => \inst5|Mux3~0_combout\,
	datac => \inst5|Mux2~1_combout\,
	datad => \inst|cnt\(1),
	combout => \inst5|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y23_N20
\inst5|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~3_combout\ = (\inst7|cnt\(0) & (\inst4|cnt\(1))) # (!\inst7|cnt\(0) & ((\inst4|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(1),
	datac => \inst7|cnt\(0),
	datad => \inst4|cnt\(5),
	combout => \inst5|Mux2~3_combout\);

-- Location: LCCOMB_X32_Y12_N18
\inst5|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~4_combout\ = (\inst7|cnt\(2) & (\inst5|Mux2~2_combout\)) # (!\inst7|cnt\(2) & ((\inst7|cnt\(1) & (\inst5|Mux2~2_combout\)) # (!\inst7|cnt\(1) & ((\inst5|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux2~2_combout\,
	datab => \inst7|cnt\(2),
	datac => \inst5|Mux2~3_combout\,
	datad => \inst7|cnt\(1),
	combout => \inst5|Mux2~4_combout\);

-- Location: LCCOMB_X33_Y13_N14
\inst5|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~1_combout\ = (\inst2|cnt\(0) & !\inst7|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(0),
	datac => \inst7|cnt\(0),
	combout => \inst5|Mux3~1_combout\);

-- Location: LCCOMB_X33_Y12_N8
\inst5|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~4_combout\ = (\inst5|Mux3~2_combout\ & ((\inst5|Mux3~3_combout\ & (\inst5|Mux3~1_combout\)) # (!\inst5|Mux3~3_combout\ & ((\inst3|cnt\(0)))))) # (!\inst5|Mux3~2_combout\ & (((\inst5|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~2_combout\,
	datab => \inst5|Mux3~1_combout\,
	datac => \inst5|Mux3~3_combout\,
	datad => \inst3|cnt\(0),
	combout => \inst5|Mux3~4_combout\);

-- Location: LCCOMB_X32_Y12_N14
\inst5|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~5_combout\ = (\inst5|Mux3~0_combout\ & ((\inst5|Mux3~4_combout\ & ((\inst|cnt\(0)))) # (!\inst5|Mux3~4_combout\ & (\inst1|cnt\(0))))) # (!\inst5|Mux3~0_combout\ & (((\inst5|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~0_combout\,
	datab => \inst1|cnt\(0),
	datac => \inst5|Mux3~4_combout\,
	datad => \inst|cnt\(0),
	combout => \inst5|Mux3~5_combout\);

-- Location: LCCOMB_X26_Y23_N30
\inst5|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~6_combout\ = (\inst7|cnt\(0) & (\inst4|cnt\(0))) # (!\inst7|cnt\(0) & ((\inst4|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(0),
	datac => \inst4|cnt\(0),
	datad => \inst4|cnt\(4),
	combout => \inst5|Mux3~6_combout\);

-- Location: LCCOMB_X33_Y16_N18
\inst5|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~7_combout\ = (\inst7|cnt\(1) & (\inst5|Mux3~5_combout\)) # (!\inst7|cnt\(1) & ((\inst7|cnt\(2) & (\inst5|Mux3~5_combout\)) # (!\inst7|cnt\(2) & ((\inst5|Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~5_combout\,
	datab => \inst7|cnt\(1),
	datac => \inst5|Mux3~6_combout\,
	datad => \inst7|cnt\(2),
	combout => \inst5|Mux3~7_combout\);

-- Location: LCCOMB_X33_Y16_N8
\inst6|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr0~0_combout\ = (\inst5|Mux2~4_combout\ & ((\inst5|Mux0~4_combout\ $ (!\inst5|Mux1~4_combout\)) # (!\inst5|Mux3~7_combout\))) # (!\inst5|Mux2~4_combout\ & ((\inst5|Mux0~4_combout\ & ((\inst5|Mux3~7_combout\) # (!\inst5|Mux1~4_combout\))) # 
-- (!\inst5|Mux0~4_combout\ & (\inst5|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~4_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux2~4_combout\,
	datad => \inst5|Mux3~7_combout\,
	combout => \inst6|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y16_N22
\inst6|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr1~0_combout\ = (\inst5|Mux1~4_combout\ & (\inst5|Mux3~7_combout\ & (\inst5|Mux0~4_combout\ $ (\inst5|Mux2~4_combout\)))) # (!\inst5|Mux1~4_combout\ & ((\inst5|Mux2~4_combout\) # ((!\inst5|Mux0~4_combout\ & \inst5|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~4_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux2~4_combout\,
	datad => \inst5|Mux3~7_combout\,
	combout => \inst6|WideOr1~0_combout\);

-- Location: LCCOMB_X33_Y16_N12
\inst6|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr2~0_combout\ = (\inst5|Mux0~4_combout\ & (!\inst5|Mux1~4_combout\ & ((\inst5|Mux2~4_combout\) # (\inst5|Mux3~7_combout\)))) # (!\inst5|Mux0~4_combout\ & ((\inst5|Mux3~7_combout\) # ((\inst5|Mux1~4_combout\ & !\inst5|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~4_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux2~4_combout\,
	datad => \inst5|Mux3~7_combout\,
	combout => \inst6|WideOr2~0_combout\);

-- Location: LCCOMB_X33_Y16_N30
\inst6|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr3~0_combout\ = (\inst5|Mux2~4_combout\ & ((\inst5|Mux1~4_combout\ & ((\inst5|Mux3~7_combout\))) # (!\inst5|Mux1~4_combout\ & (\inst5|Mux0~4_combout\)))) # (!\inst5|Mux2~4_combout\ & (!\inst5|Mux0~4_combout\ & (\inst5|Mux1~4_combout\ $ 
-- (\inst5|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~4_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux2~4_combout\,
	datad => \inst5|Mux3~7_combout\,
	combout => \inst6|WideOr3~0_combout\);

-- Location: LCCOMB_X33_Y16_N16
\inst6|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr4~0_combout\ = (\inst5|Mux3~7_combout\ & (\inst5|Mux0~4_combout\ & ((\inst5|Mux2~4_combout\)))) # (!\inst5|Mux3~7_combout\ & ((\inst5|Mux1~4_combout\ & (\inst5|Mux0~4_combout\)) # (!\inst5|Mux1~4_combout\ & ((\inst5|Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~4_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux2~4_combout\,
	datad => \inst5|Mux3~7_combout\,
	combout => \inst6|WideOr4~0_combout\);

-- Location: LCCOMB_X33_Y16_N14
\inst6|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr5~0_combout\ = (\inst5|Mux0~4_combout\ & ((\inst5|Mux2~4_combout\) # ((\inst5|Mux1~4_combout\ & !\inst5|Mux3~7_combout\)))) # (!\inst5|Mux0~4_combout\ & (\inst5|Mux1~4_combout\ & (\inst5|Mux2~4_combout\ $ (\inst5|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~4_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux2~4_combout\,
	datad => \inst5|Mux3~7_combout\,
	combout => \inst6|WideOr5~0_combout\);

-- Location: LCCOMB_X33_Y16_N20
\inst6|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr6~0_combout\ = (\inst5|Mux0~4_combout\ & ((\inst5|Mux1~4_combout\ & (!\inst5|Mux2~4_combout\ & \inst5|Mux3~7_combout\)) # (!\inst5|Mux1~4_combout\ & (\inst5|Mux2~4_combout\)))) # (!\inst5|Mux0~4_combout\ & (!\inst5|Mux2~4_combout\ & 
-- (\inst5|Mux1~4_combout\ $ (\inst5|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~4_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux2~4_combout\,
	datad => \inst5|Mux3~7_combout\,
	combout => \inst6|WideOr6~0_combout\);

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


