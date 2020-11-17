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

-- DATE "07/05/2020 09:09:36"

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

ENTITY 	music IS
    PORT (
	BUZZER : OUT std_logic;
	CLK48M : IN std_logic;
	dig : OUT std_logic_vector(7 DOWNTO 0);
	seg7 : OUT std_logic;
	seg6 : OUT std_logic;
	seg5 : OUT std_logic;
	seg4 : OUT std_logic;
	seg3 : OUT std_logic;
	seg2 : OUT std_logic;
	seg1 : OUT std_logic;
	seg0 : OUT std_logic
	);
END music;

-- Design Ports Information
-- BUZZER	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK48M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF music IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BUZZER : std_logic;
SIGNAL ww_CLK48M : std_logic;
SIGNAL ww_dig : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7 : std_logic;
SIGNAL ww_seg6 : std_logic;
SIGNAL ww_seg5 : std_logic;
SIGNAL ww_seg4 : std_logic;
SIGNAL ww_seg3 : std_logic;
SIGNAL ww_seg2 : std_logic;
SIGNAL ww_seg1 : std_logic;
SIGNAL ww_seg0 : std_logic;
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|clockout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clockout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK48M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BUZZER~output_o\ : std_logic;
SIGNAL \dig[7]~output_o\ : std_logic;
SIGNAL \dig[6]~output_o\ : std_logic;
SIGNAL \dig[5]~output_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \seg7~output_o\ : std_logic;
SIGNAL \seg6~output_o\ : std_logic;
SIGNAL \seg5~output_o\ : std_logic;
SIGNAL \seg4~output_o\ : std_logic;
SIGNAL \seg3~output_o\ : std_logic;
SIGNAL \seg2~output_o\ : std_logic;
SIGNAL \seg1~output_o\ : std_logic;
SIGNAL \seg0~output_o\ : std_logic;
SIGNAL \CLK48M~input_o\ : std_logic;
SIGNAL \CLK48M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst12|cnt[0]~17_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|counter[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|counter~6_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|counter~5_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|counter~4_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|temp2~0_combout\ : std_logic;
SIGNAL \inst|temp2~q\ : std_logic;
SIGNAL \inst|temp1~0_combout\ : std_logic;
SIGNAL \inst|temp1~feeder_combout\ : std_logic;
SIGNAL \inst|temp1~q\ : std_logic;
SIGNAL \inst|clockout~combout\ : std_logic;
SIGNAL \inst|clockout~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|counter~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|counter~2_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|counter~0_combout\ : std_logic;
SIGNAL \inst2|temp2~0_combout\ : std_logic;
SIGNAL \inst2|temp2~q\ : std_logic;
SIGNAL \inst2|temp1~0_combout\ : std_logic;
SIGNAL \inst2|temp1~feeder_combout\ : std_logic;
SIGNAL \inst2|temp1~q\ : std_logic;
SIGNAL \inst2|clockout~combout\ : std_logic;
SIGNAL \inst2|clockout~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|counter~1_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|counter~2_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|counter~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|counter~0_combout\ : std_logic;
SIGNAL \inst8|Decoder1~0_combout\ : std_logic;
SIGNAL \inst12|cnt[0]~18\ : std_logic;
SIGNAL \inst12|cnt[1]~19_combout\ : std_logic;
SIGNAL \inst8|WideOr14~0_combout\ : std_logic;
SIGNAL \inst12|cnt[1]~20\ : std_logic;
SIGNAL \inst12|cnt[2]~21_combout\ : std_logic;
SIGNAL \inst8|WideOr13~0_combout\ : std_logic;
SIGNAL \inst12|cnt[2]~22\ : std_logic;
SIGNAL \inst12|cnt[3]~23_combout\ : std_logic;
SIGNAL \inst8|WideOr12~0_combout\ : std_logic;
SIGNAL \inst12|cnt[3]~24\ : std_logic;
SIGNAL \inst12|cnt[4]~25_combout\ : std_logic;
SIGNAL \inst8|WideOr11~0_combout\ : std_logic;
SIGNAL \inst12|cnt[4]~26\ : std_logic;
SIGNAL \inst12|cnt[5]~27_combout\ : std_logic;
SIGNAL \inst8|WideOr10~0_combout\ : std_logic;
SIGNAL \inst12|cnt[5]~28\ : std_logic;
SIGNAL \inst12|cnt[6]~29_combout\ : std_logic;
SIGNAL \inst8|WideOr9~0_combout\ : std_logic;
SIGNAL \inst12|cnt[6]~30\ : std_logic;
SIGNAL \inst12|cnt[7]~31_combout\ : std_logic;
SIGNAL \inst8|WideOr8~0_combout\ : std_logic;
SIGNAL \inst12|cnt[7]~32\ : std_logic;
SIGNAL \inst12|cnt[8]~33_combout\ : std_logic;
SIGNAL \inst8|WideOr7~0_combout\ : std_logic;
SIGNAL \inst12|cnt[8]~34\ : std_logic;
SIGNAL \inst12|cnt[9]~35_combout\ : std_logic;
SIGNAL \inst8|WideOr6~0_combout\ : std_logic;
SIGNAL \inst12|cnt[9]~36\ : std_logic;
SIGNAL \inst12|cnt[10]~37_combout\ : std_logic;
SIGNAL \inst8|WideOr5~0_combout\ : std_logic;
SIGNAL \inst12|cnt[10]~38\ : std_logic;
SIGNAL \inst12|cnt[11]~39_combout\ : std_logic;
SIGNAL \inst8|WideOr4~0_combout\ : std_logic;
SIGNAL \inst12|cnt[11]~40\ : std_logic;
SIGNAL \inst12|cnt[12]~41_combout\ : std_logic;
SIGNAL \inst8|WideOr3~0_combout\ : std_logic;
SIGNAL \inst12|cnt[12]~42\ : std_logic;
SIGNAL \inst12|cnt[13]~43_combout\ : std_logic;
SIGNAL \inst8|WideOr2~0_combout\ : std_logic;
SIGNAL \inst12|cnt[13]~44\ : std_logic;
SIGNAL \inst12|cnt[14]~45_combout\ : std_logic;
SIGNAL \inst8|WideOr1~0_combout\ : std_logic;
SIGNAL \inst12|cnt[14]~46\ : std_logic;
SIGNAL \inst12|cnt[15]~47_combout\ : std_logic;
SIGNAL \inst8|WideOr0~0_combout\ : std_logic;
SIGNAL \inst12|cnt[15]~48\ : std_logic;
SIGNAL \inst12|cnt[16]~49_combout\ : std_logic;
SIGNAL \inst8|Decoder0~0_combout\ : std_logic;
SIGNAL \inst12|Equal0~1_combout\ : std_logic;
SIGNAL \inst12|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|Equal0~2_combout\ : std_logic;
SIGNAL \inst12|Equal0~4_combout\ : std_logic;
SIGNAL \inst12|Equal0~3_combout\ : std_logic;
SIGNAL \inst12|Equal0~5_combout\ : std_logic;
SIGNAL \inst12|cout~q\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst8|WideOr18~0_combout\ : std_logic;
SIGNAL \inst3|seg[6]~0_combout\ : std_logic;
SIGNAL \inst8|WideOr16~0_combout\ : std_logic;
SIGNAL \inst8|WideOr19~0_combout\ : std_logic;
SIGNAL \inst3|seg[5]~1_combout\ : std_logic;
SIGNAL \inst8|WideOr20~0_combout\ : std_logic;
SIGNAL \inst3|seg[4]~2_combout\ : std_logic;
SIGNAL \inst3|seg[3]~5_combout\ : std_logic;
SIGNAL \inst3|seg[3]~6_combout\ : std_logic;
SIGNAL \inst8|WideOr22~0_combout\ : std_logic;
SIGNAL \inst3|seg[2]~3_combout\ : std_logic;
SIGNAL \inst8|WideOr23~0_combout\ : std_logic;
SIGNAL \inst3|seg[1]~4_combout\ : std_logic;
SIGNAL \inst8|WideOr24~0_combout\ : std_logic;
SIGNAL \inst8|WideOr24~1_combout\ : std_logic;
SIGNAL \inst|counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst1|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|cnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|ALT_INV_clockout~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_seg[4]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_seg[5]~1_combout\ : std_logic;
SIGNAL \ALT_INV_CLK48M~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_seg[3]~6_combout\ : std_logic;

BEGIN

BUZZER <= ww_BUZZER;
ww_CLK48M <= CLK48M;
dig <= ww_dig;
seg7 <= ww_seg7;
seg6 <= ww_seg6;
seg5 <= ww_seg5;
seg4 <= ww_seg4;
seg3 <= ww_seg3;
seg2 <= ww_seg2;
seg1 <= ww_seg1;
seg0 <= ww_seg0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|counter\(7) & \inst1|counter\(6) & \inst1|counter\(5) & \inst1|counter\(4) & \inst1|counter\(3) & \inst1|counter\(2) & \inst1|counter\(1) & 
\inst1|counter\(0));

\inst9|altsyncram_component|auto_generated|q_a\(0) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst9|altsyncram_component|auto_generated|q_a\(1) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst9|altsyncram_component|auto_generated|q_a\(2) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst9|altsyncram_component|auto_generated|q_a\(3) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\inst|clockout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clockout~combout\);

\inst2|clockout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clockout~combout\);

\CLK48M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK48M~input_o\);
\inst|ALT_INV_clockout~combout\ <= NOT \inst|clockout~combout\;
\inst3|ALT_INV_seg[4]~2_combout\ <= NOT \inst3|seg[4]~2_combout\;
\inst3|ALT_INV_seg[5]~1_combout\ <= NOT \inst3|seg[5]~1_combout\;
\ALT_INV_CLK48M~input_o\ <= NOT \CLK48M~input_o\;
\inst3|ALT_INV_seg[3]~6_combout\ <= NOT \inst3|seg[3]~6_combout\;

-- Location: IOOBUF_X13_Y0_N16
\BUZZER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \BUZZER~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\dig[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dig[7]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\dig[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dig[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\dig[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => VCC,
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_clockout~combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clockout~combout\,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\seg7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg7~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\seg6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|seg[6]~0_combout\,
	devoe => ww_devoe,
	o => \seg6~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\seg5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_seg[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg5~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\seg4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_seg[4]~2_combout\,
	devoe => ww_devoe,
	o => \seg4~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\seg3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \seg3~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\seg2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|seg[2]~3_combout\,
	devoe => ww_devoe,
	o => \seg2~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\seg1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|seg[1]~4_combout\,
	devoe => ww_devoe,
	o => \seg1~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\seg0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|WideOr24~1_combout\,
	devoe => ww_devoe,
	o => \seg0~output_o\);

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

-- Location: LCCOMB_X16_Y7_N16
\inst12|cnt[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[0]~17_combout\ = \inst12|cnt\(0) $ (VCC)
-- \inst12|cnt[0]~18\ = CARRY(\inst12|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(0),
	datad => VCC,
	combout => \inst12|cnt[0]~17_combout\,
	cout => \inst12|cnt[0]~18\);

-- Location: LCCOMB_X10_Y11_N12
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|counter\(15) & (!\inst|Add0~29\)) # (!\inst|counter\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X10_Y11_N14
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|counter\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|counter\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|counter\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X9_Y11_N30
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (!\inst|Equal0~5_combout\ & \inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~5_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X9_Y11_N31
\inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(16));

-- Location: LCCOMB_X10_Y11_N16
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|counter\(17) & (!\inst|Add0~33\)) # (!\inst|counter\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X9_Y11_N26
\inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (!\inst|Equal0~5_combout\ & \inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~5_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|counter~3_combout\);

-- Location: FF_X9_Y11_N27
\inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(17));

-- Location: LCCOMB_X10_Y11_N18
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = \inst|counter\(18) $ (!\inst|Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(18),
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\);

-- Location: LCCOMB_X10_Y11_N22
\inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|Equal0~5_combout\ & \inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X10_Y11_N23
\inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(18));

-- Location: LCCOMB_X10_Y12_N14
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X10_Y12_N15
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X10_Y12_N16
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(1) & (!\inst|Add0~1\)) # (!\inst|counter\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X10_Y12_N17
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X10_Y12_N18
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|counter\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|counter\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|counter\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X10_Y12_N19
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X10_Y12_N20
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(3) & (!\inst|Add0~5\)) # (!\inst|counter\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X10_Y12_N21
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X10_Y12_N22
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|counter\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|counter\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|counter\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X10_Y12_N23
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X10_Y12_N24
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|counter\(5) & (!\inst|Add0~9\)) # (!\inst|counter\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X10_Y12_N25
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X10_Y12_N26
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|counter\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|counter\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|counter\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X10_Y12_N27
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X10_Y12_N28
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|counter\(7) & (!\inst|Add0~13\)) # (!\inst|counter\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X9_Y11_N20
\inst|counter[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[7]~feeder_combout\ = \inst|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~14_combout\,
	combout => \inst|counter[7]~feeder_combout\);

-- Location: FF_X9_Y11_N21
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X10_Y12_N30
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|counter\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|counter\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|counter\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X10_Y12_N0
\inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~6_combout\ = (\inst|Add0~16_combout\ & !\inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~16_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|counter~6_combout\);

-- Location: FF_X10_Y12_N1
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X10_Y11_N0
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|counter\(9) & (!\inst|Add0~17\)) # (!\inst|counter\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X9_Y11_N16
\inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~5_combout\ = (\inst|Add0~18_combout\ & !\inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~18_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|counter~5_combout\);

-- Location: FF_X9_Y11_N17
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X10_Y11_N2
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|counter\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|counter\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|counter\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X10_Y11_N3
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X10_Y11_N4
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|counter\(11) & (!\inst|Add0~21\)) # (!\inst|counter\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X10_Y11_N5
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X10_Y11_N6
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|counter\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|counter\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|counter\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X9_Y11_N12
\inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~4_combout\ = (!\inst|Equal0~5_combout\ & \inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~5_combout\,
	datad => \inst|Add0~24_combout\,
	combout => \inst|counter~4_combout\);

-- Location: FF_X9_Y11_N13
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X10_Y11_N8
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|counter\(13) & (!\inst|Add0~25\)) # (!\inst|counter\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X10_Y11_N9
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X10_Y11_N30
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|counter\(12) & (!\inst|counter\(11) & (!\inst|counter\(13) & \inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datab => \inst|counter\(11),
	datac => \inst|counter\(13),
	datad => \inst|counter\(9),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y12_N10
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|counter\(4) & (!\inst|counter\(8) & (\inst|counter\(6) & \inst|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(8),
	datac => \inst|counter\(6),
	datad => \inst|counter\(5),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y12_N8
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|counter\(3) & (\inst|counter\(1) & (\inst|counter\(0) & \inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y11_N24
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(17) & (\inst|counter\(7) & (\inst|counter\(16) & !\inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(17),
	datab => \inst|counter\(7),
	datac => \inst|counter\(16),
	datad => \inst|counter\(10),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y11_N28
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~2_combout\ & (\inst|Equal0~3_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y11_N26
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|counter\(15) & (\inst|counter\(14) & (\inst|counter\(18) & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|counter\(14),
	datac => \inst|counter\(18),
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y11_N10
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|counter\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|counter\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|counter\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X10_Y11_N24
\inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (!\inst|Equal0~5_combout\ & \inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X10_Y11_N25
\inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(14));

-- Location: FF_X10_Y11_N13
\inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(15));

-- Location: LCCOMB_X10_Y11_N20
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|counter\(15) & (!\inst|counter\(18) & !\inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datac => \inst|counter\(18),
	datad => \inst|counter\(14),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y11_N22
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (!\inst|counter\(12) & (!\inst|counter\(9) & (\inst|counter\(13) & \inst|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datab => \inst|counter\(9),
	datac => \inst|counter\(13),
	datad => \inst|counter\(11),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X10_Y12_N12
\inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (!\inst|counter\(3) & (!\inst|counter\(2) & (!\inst|counter\(0) & !\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(2),
	datac => \inst|counter\(0),
	datad => \inst|counter\(1),
	combout => \inst|Equal1~3_combout\);

-- Location: LCCOMB_X10_Y12_N6
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (!\inst|counter\(4) & (!\inst|counter\(5) & (!\inst|counter\(6) & \inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(5),
	datac => \inst|counter\(6),
	datad => \inst|counter\(8),
	combout => \inst|Equal1~2_combout\);

-- Location: LCCOMB_X9_Y11_N28
\inst|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = (\inst|Equal1~1_combout\ & (\inst|Equal0~0_combout\ & (\inst|Equal1~3_combout\ & \inst|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal1~3_combout\,
	datad => \inst|Equal1~2_combout\,
	combout => \inst|Equal1~4_combout\);

-- Location: LCCOMB_X9_Y11_N8
\inst|temp2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp2~0_combout\ = \inst|temp2~q\ $ (((\inst|Equal1~0_combout\ & \inst|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datac => \inst|temp2~q\,
	datad => \inst|Equal1~4_combout\,
	combout => \inst|temp2~0_combout\);

-- Location: FF_X9_Y11_N9
\inst|temp2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK48M~input_o\,
	d => \inst|temp2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp2~q\);

-- Location: LCCOMB_X9_Y11_N10
\inst|temp1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp1~0_combout\ = \inst|temp1~q\ $ (\inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp1~q\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|temp1~0_combout\);

-- Location: LCCOMB_X9_Y11_N18
\inst|temp1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp1~feeder_combout\ = \inst|temp1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp1~0_combout\,
	combout => \inst|temp1~feeder_combout\);

-- Location: FF_X9_Y11_N19
\inst|temp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst|temp1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp1~q\);

-- Location: LCCOMB_X9_Y11_N14
\inst|clockout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clockout~combout\ = LCELL(\inst|temp2~q\ $ (\inst|temp1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp2~q\,
	datad => \inst|temp1~q\,
	combout => \inst|clockout~combout\);

-- Location: CLKCTRL_G4
\inst|clockout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clockout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clockout~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y13_N16
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|counter\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|counter\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|counter\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X10_Y13_N18
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|counter\(3) & (!\inst2|Add0~5\)) # (!\inst2|counter\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X10_Y13_N28
\inst2|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter~1_combout\ = (\inst2|Add0~6_combout\ & (((\inst2|counter\(2)) # (!\inst2|Equal0~0_combout\)) # (!\inst2|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datab => \inst2|counter\(2),
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|counter~1_combout\);

-- Location: FF_X10_Y13_N29
\inst2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clockout~clkctrl_outclk\,
	d => \inst2|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(3));

-- Location: LCCOMB_X10_Y13_N6
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|counter\(3) & (!\inst2|counter\(1) & !\inst2|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(1),
	datad => \inst2|counter\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y13_N12
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|counter\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X10_Y13_N24
\inst2|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter~2_combout\ = (\inst2|Add0~0_combout\ & (((\inst2|counter\(2)) # (!\inst2|Equal0~0_combout\)) # (!\inst2|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datab => \inst2|counter\(2),
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|counter~2_combout\);

-- Location: FF_X10_Y13_N25
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clockout~clkctrl_outclk\,
	d => \inst2|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LCCOMB_X10_Y13_N14
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|counter\(1) & (!\inst2|Add0~1\)) # (!\inst2|counter\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X10_Y13_N15
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clockout~clkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: FF_X10_Y13_N17
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clockout~clkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: LCCOMB_X10_Y13_N20
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = \inst2|counter\(4) $ (!\inst2|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\);

-- Location: LCCOMB_X10_Y13_N22
\inst2|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter~0_combout\ = (\inst2|Add0~8_combout\ & ((\inst2|counter\(2)) # ((!\inst2|counter\(4)) # (!\inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|counter\(4),
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|counter~0_combout\);

-- Location: FF_X10_Y13_N23
\inst2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clockout~clkctrl_outclk\,
	d => \inst2|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(4));

-- Location: LCCOMB_X10_Y13_N30
\inst2|temp2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp2~0_combout\ = \inst2|temp2~q\ $ (((!\inst2|counter\(4) & (\inst2|counter\(2) & \inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datab => \inst2|counter\(2),
	datac => \inst2|temp2~q\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|temp2~0_combout\);

-- Location: FF_X10_Y13_N31
\inst2|temp2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clockout~combout\,
	d => \inst2|temp2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp2~q\);

-- Location: LCCOMB_X10_Y13_N8
\inst2|temp1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp1~0_combout\ = \inst2|temp1~q\ $ (((\inst2|counter\(4) & (!\inst2|counter\(2) & \inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datab => \inst2|counter\(2),
	datac => \inst2|temp1~q\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|temp1~0_combout\);

-- Location: LCCOMB_X10_Y13_N10
\inst2|temp1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp1~feeder_combout\ = \inst2|temp1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp1~0_combout\,
	combout => \inst2|temp1~feeder_combout\);

-- Location: FF_X10_Y13_N11
\inst2|temp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clockout~clkctrl_outclk\,
	d => \inst2|temp1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp1~q\);

-- Location: LCCOMB_X10_Y13_N26
\inst2|clockout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clockout~combout\ = LCELL(\inst2|temp2~q\ $ (\inst2|temp1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp2~q\,
	datad => \inst2|temp1~q\,
	combout => \inst2|clockout~combout\);

-- Location: CLKCTRL_G1
\inst2|clockout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|clockout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|clockout~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y6_N28
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|counter\(0) & (\inst1|counter\(3) & (!\inst1|counter\(2) & \inst1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(0),
	datab => \inst1|counter\(3),
	datac => \inst1|counter\(2),
	datad => \inst1|counter\(1),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y6_N8
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|counter\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X14_Y6_N10
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|counter\(1) & (!\inst1|Add0~1\)) # (!\inst1|counter\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X14_Y6_N6
\inst1|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter~1_combout\ = (\inst1|Add0~2_combout\ & ((!\inst1|Equal0~1_combout\) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|counter~1_combout\);

-- Location: FF_X14_Y6_N7
\inst1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(1));

-- Location: LCCOMB_X14_Y6_N12
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|counter\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|counter\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|counter\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X14_Y6_N13
\inst1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(2));

-- Location: LCCOMB_X14_Y6_N14
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|counter\(3) & (!\inst1|Add0~5\)) # (!\inst1|counter\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X14_Y6_N4
\inst1|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter~2_combout\ = (\inst1|Add0~6_combout\ & ((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|counter~2_combout\);

-- Location: FF_X14_Y6_N5
\inst1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(3));

-- Location: LCCOMB_X14_Y6_N16
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|counter\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|counter\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|counter\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X14_Y6_N17
\inst1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(4));

-- Location: LCCOMB_X14_Y6_N18
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|counter\(5) & (!\inst1|Add0~9\)) # (!\inst1|counter\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X14_Y6_N19
\inst1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(5));

-- Location: LCCOMB_X14_Y6_N20
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|counter\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|counter\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|counter\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X14_Y6_N21
\inst1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(6));

-- Location: LCCOMB_X14_Y6_N22
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = \inst1|counter\(7) $ (\inst1|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(7),
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\);

-- Location: LCCOMB_X14_Y6_N26
\inst1|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter~3_combout\ = (\inst1|Add0~14_combout\ & ((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|counter~3_combout\);

-- Location: FF_X14_Y6_N27
\inst1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(7));

-- Location: LCCOMB_X14_Y6_N30
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|counter\(7) & (!\inst1|counter\(4) & (!\inst1|counter\(5) & !\inst1|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(7),
	datab => \inst1|counter\(4),
	datac => \inst1|counter\(5),
	datad => \inst1|counter\(6),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y6_N24
\inst1|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter~0_combout\ = (\inst1|Add0~0_combout\ & ((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|counter~0_combout\);

-- Location: FF_X14_Y6_N25
\inst1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clockout~clkctrl_outclk\,
	d => \inst1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(0));

-- Location: M9K_X15_Y6_N0
\inst9|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000900024000900024000900024000900030000A00030000D0003C000C00030000C0001400050001800090002000080002000060001400050001400030000C00030000C0003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "music.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst9|altsyncram:altsyncram_component|altsyncram_ir91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst|clockout~clkctrl_outclk\,
	portaaddr => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y7_N24
\inst8|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Decoder1~0_combout\ = ((\inst9|altsyncram_component|auto_generated|q_a\(0)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst8|Decoder1~0_combout\);

-- Location: FF_X16_Y7_N17
\inst12|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[0]~17_combout\,
	asdata => \inst8|Decoder1~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(0));

-- Location: LCCOMB_X16_Y7_N18
\inst12|cnt[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[1]~19_combout\ = (\inst12|cnt\(1) & (!\inst12|cnt[0]~18\)) # (!\inst12|cnt\(1) & ((\inst12|cnt[0]~18\) # (GND)))
-- \inst12|cnt[1]~20\ = CARRY((!\inst12|cnt[0]~18\) # (!\inst12|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(1),
	datad => VCC,
	cin => \inst12|cnt[0]~18\,
	combout => \inst12|cnt[1]~19_combout\,
	cout => \inst12|cnt[1]~20\);

-- Location: LCCOMB_X14_Y7_N2
\inst8|WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr14~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (\inst9|altsyncram_component|auto_generated|q_a\(1) $ (((!\inst9|altsyncram_component|auto_generated|q_a\(0)))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\inst9|altsyncram_component|auto_generated|q_a\(1)) # ((\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst8|WideOr14~0_combout\);

-- Location: FF_X16_Y7_N19
\inst12|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[1]~19_combout\,
	asdata => \inst8|WideOr14~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(1));

-- Location: LCCOMB_X16_Y7_N20
\inst12|cnt[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[2]~21_combout\ = (\inst12|cnt\(2) & (\inst12|cnt[1]~20\ $ (GND))) # (!\inst12|cnt\(2) & (!\inst12|cnt[1]~20\ & VCC))
-- \inst12|cnt[2]~22\ = CARRY((\inst12|cnt\(2) & !\inst12|cnt[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(2),
	datad => VCC,
	cin => \inst12|cnt[1]~20\,
	combout => \inst12|cnt[2]~21_combout\,
	cout => \inst12|cnt[2]~22\);

-- Location: LCCOMB_X14_Y7_N12
\inst8|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr13~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (\inst9|altsyncram_component|auto_generated|q_a\(3) $ (((\inst9|altsyncram_component|auto_generated|q_a\(0)) # (!\inst9|altsyncram_component|auto_generated|q_a\(1)))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(2) & ((\inst9|altsyncram_component|auto_generated|q_a\(1)) # ((!\inst9|altsyncram_component|auto_generated|q_a\(0)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst8|WideOr13~0_combout\);

-- Location: FF_X16_Y7_N21
\inst12|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[2]~21_combout\,
	asdata => \inst8|WideOr13~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(2));

-- Location: LCCOMB_X16_Y7_N22
\inst12|cnt[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[3]~23_combout\ = (\inst12|cnt\(3) & (!\inst12|cnt[2]~22\)) # (!\inst12|cnt\(3) & ((\inst12|cnt[2]~22\) # (GND)))
-- \inst12|cnt[3]~24\ = CARRY((!\inst12|cnt[2]~22\) # (!\inst12|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(3),
	datad => VCC,
	cin => \inst12|cnt[2]~22\,
	combout => \inst12|cnt[3]~23_combout\,
	cout => \inst12|cnt[3]~24\);

-- Location: LCCOMB_X16_Y7_N8
\inst8|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr12~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(0) & (!\inst9|altsyncram_component|auto_generated|q_a\(2) & ((!\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(0) & (!\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(2)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst8|WideOr12~0_combout\);

-- Location: FF_X16_Y7_N23
\inst12|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[3]~23_combout\,
	asdata => \inst8|WideOr12~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(3));

-- Location: LCCOMB_X16_Y7_N24
\inst12|cnt[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[4]~25_combout\ = (\inst12|cnt\(4) & (\inst12|cnt[3]~24\ $ (GND))) # (!\inst12|cnt\(4) & (!\inst12|cnt[3]~24\ & VCC))
-- \inst12|cnt[4]~26\ = CARRY((\inst12|cnt\(4) & !\inst12|cnt[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(4),
	datad => VCC,
	cin => \inst12|cnt[3]~24\,
	combout => \inst12|cnt[4]~25_combout\,
	cout => \inst12|cnt[4]~26\);

-- Location: LCCOMB_X16_Y7_N14
\inst8|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr11~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (!\inst9|altsyncram_component|auto_generated|q_a\(1) & (\inst9|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\inst9|altsyncram_component|auto_generated|q_a\(3) & (\inst9|altsyncram_component|auto_generated|q_a\(1))) # (!\inst9|altsyncram_component|auto_generated|q_a\(3) & ((!\inst9|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst8|WideOr11~0_combout\);

-- Location: FF_X16_Y7_N25
\inst12|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[4]~25_combout\,
	asdata => \inst8|WideOr11~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(4));

-- Location: LCCOMB_X16_Y7_N26
\inst12|cnt[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[5]~27_combout\ = (\inst12|cnt\(5) & (!\inst12|cnt[4]~26\)) # (!\inst12|cnt\(5) & ((\inst12|cnt[4]~26\) # (GND)))
-- \inst12|cnt[5]~28\ = CARRY((!\inst12|cnt[4]~26\) # (!\inst12|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(5),
	datad => VCC,
	cin => \inst12|cnt[4]~26\,
	combout => \inst12|cnt[5]~27_combout\,
	cout => \inst12|cnt[5]~28\);

-- Location: LCCOMB_X16_Y7_N4
\inst8|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr10~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & ((\inst9|altsyncram_component|auto_generated|q_a\(3)) # ((\inst9|altsyncram_component|auto_generated|q_a\(1) & !\inst9|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(2) & (\inst9|altsyncram_component|auto_generated|q_a\(1) $ (\inst9|altsyncram_component|auto_generated|q_a\(0) $ (!\inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst8|WideOr10~0_combout\);

-- Location: FF_X16_Y7_N27
\inst12|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[5]~27_combout\,
	asdata => \inst8|WideOr10~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(5));

-- Location: LCCOMB_X16_Y7_N28
\inst12|cnt[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[6]~29_combout\ = (\inst12|cnt\(6) & (\inst12|cnt[5]~28\ $ (GND))) # (!\inst12|cnt\(6) & (!\inst12|cnt[5]~28\ & VCC))
-- \inst12|cnt[6]~30\ = CARRY((\inst12|cnt\(6) & !\inst12|cnt[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(6),
	datad => VCC,
	cin => \inst12|cnt[5]~28\,
	combout => \inst12|cnt[6]~29_combout\,
	cout => \inst12|cnt[6]~30\);

-- Location: LCCOMB_X16_Y7_N2
\inst8|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr9~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(0) $ (!\inst9|altsyncram_component|auto_generated|q_a\(2))) # (!\inst9|altsyncram_component|auto_generated|q_a\(3)))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(0) & (\inst9|altsyncram_component|auto_generated|q_a\(3) $ (\inst9|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(0) & ((\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst8|WideOr9~0_combout\);

-- Location: FF_X16_Y7_N29
\inst12|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[6]~29_combout\,
	asdata => \inst8|WideOr9~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(6));

-- Location: LCCOMB_X16_Y7_N30
\inst12|cnt[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[7]~31_combout\ = (\inst12|cnt\(7) & (!\inst12|cnt[6]~30\)) # (!\inst12|cnt\(7) & ((\inst12|cnt[6]~30\) # (GND)))
-- \inst12|cnt[7]~32\ = CARRY((!\inst12|cnt[6]~30\) # (!\inst12|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(7),
	datad => VCC,
	cin => \inst12|cnt[6]~30\,
	combout => \inst12|cnt[7]~31_combout\,
	cout => \inst12|cnt[7]~32\);

-- Location: LCCOMB_X14_Y7_N6
\inst8|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr8~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (\inst9|altsyncram_component|auto_generated|q_a\(0) & (\inst9|altsyncram_component|auto_generated|q_a\(1) $ (!\inst9|altsyncram_component|auto_generated|q_a\(3))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(2) & (((!\inst9|altsyncram_component|auto_generated|q_a\(1) & !\inst9|altsyncram_component|auto_generated|q_a\(0))) # (!\inst9|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst8|WideOr8~0_combout\);

-- Location: FF_X16_Y7_N31
\inst12|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[7]~31_combout\,
	asdata => \inst8|WideOr8~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(7));

-- Location: LCCOMB_X16_Y6_N0
\inst12|cnt[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[8]~33_combout\ = (\inst12|cnt\(8) & (\inst12|cnt[7]~32\ $ (GND))) # (!\inst12|cnt\(8) & (!\inst12|cnt[7]~32\ & VCC))
-- \inst12|cnt[8]~34\ = CARRY((\inst12|cnt\(8) & !\inst12|cnt[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(8),
	datad => VCC,
	cin => \inst12|cnt[7]~32\,
	combout => \inst12|cnt[8]~33_combout\,
	cout => \inst12|cnt[8]~34\);

-- Location: LCCOMB_X16_Y6_N20
\inst8|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr7~0_combout\ = (!\inst9|altsyncram_component|auto_generated|q_a\(2) & ((\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst9|altsyncram_component|auto_generated|q_a\(1) & 
-- ((!\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr7~0_combout\);

-- Location: FF_X16_Y6_N1
\inst12|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[8]~33_combout\,
	asdata => \inst8|WideOr7~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(8));

-- Location: LCCOMB_X16_Y6_N2
\inst12|cnt[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[9]~35_combout\ = (\inst12|cnt\(9) & (!\inst12|cnt[8]~34\)) # (!\inst12|cnt\(9) & ((\inst12|cnt[8]~34\) # (GND)))
-- \inst12|cnt[9]~36\ = CARRY((!\inst12|cnt[8]~34\) # (!\inst12|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(9),
	datad => VCC,
	cin => \inst12|cnt[8]~34\,
	combout => \inst12|cnt[9]~35_combout\,
	cout => \inst12|cnt[9]~36\);

-- Location: LCCOMB_X16_Y6_N30
\inst8|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr6~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(0) & (!\inst9|altsyncram_component|auto_generated|q_a\(2) & ((!\inst9|altsyncram_component|auto_generated|q_a\(3))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(0) & 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(2)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr6~0_combout\);

-- Location: FF_X16_Y6_N3
\inst12|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[9]~35_combout\,
	asdata => \inst8|WideOr6~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(9));

-- Location: LCCOMB_X16_Y6_N4
\inst12|cnt[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[10]~37_combout\ = (\inst12|cnt\(10) & (\inst12|cnt[9]~36\ $ (GND))) # (!\inst12|cnt\(10) & (!\inst12|cnt[9]~36\ & VCC))
-- \inst12|cnt[10]~38\ = CARRY((\inst12|cnt\(10) & !\inst12|cnt[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(10),
	datad => VCC,
	cin => \inst12|cnt[9]~36\,
	combout => \inst12|cnt[10]~37_combout\,
	cout => \inst12|cnt[10]~38\);

-- Location: LCCOMB_X17_Y6_N0
\inst8|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr5~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (\inst9|altsyncram_component|auto_generated|q_a\(3) $ (((\inst9|altsyncram_component|auto_generated|q_a\(0) & !\inst9|altsyncram_component|auto_generated|q_a\(1)))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(2) & (!\inst9|altsyncram_component|auto_generated|q_a\(0) & (\inst9|altsyncram_component|auto_generated|q_a\(3) $ (!\inst9|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst8|WideOr5~0_combout\);

-- Location: FF_X16_Y6_N5
\inst12|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[10]~37_combout\,
	asdata => \inst8|WideOr5~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(10));

-- Location: LCCOMB_X16_Y6_N6
\inst12|cnt[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[11]~39_combout\ = (\inst12|cnt\(11) & (!\inst12|cnt[10]~38\)) # (!\inst12|cnt\(11) & ((\inst12|cnt[10]~38\) # (GND)))
-- \inst12|cnt[11]~40\ = CARRY((!\inst12|cnt[10]~38\) # (!\inst12|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(11),
	datad => VCC,
	cin => \inst12|cnt[10]~38\,
	combout => \inst12|cnt[11]~39_combout\,
	cout => \inst12|cnt[11]~40\);

-- Location: LCCOMB_X17_Y6_N30
\inst8|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr4~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(3) & (\inst9|altsyncram_component|auto_generated|q_a\(2) $ (((!\inst9|altsyncram_component|auto_generated|q_a\(1)))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(3) & 
-- (\inst9|altsyncram_component|auto_generated|q_a\(0) $ (((!\inst9|altsyncram_component|auto_generated|q_a\(2) & !\inst9|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst8|WideOr4~0_combout\);

-- Location: FF_X16_Y6_N7
\inst12|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[11]~39_combout\,
	asdata => \inst8|WideOr4~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(11));

-- Location: LCCOMB_X16_Y6_N8
\inst12|cnt[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[12]~41_combout\ = (\inst12|cnt\(12) & (\inst12|cnt[11]~40\ $ (GND))) # (!\inst12|cnt\(12) & (!\inst12|cnt[11]~40\ & VCC))
-- \inst12|cnt[12]~42\ = CARRY((\inst12|cnt\(12) & !\inst12|cnt[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(12),
	datad => VCC,
	cin => \inst12|cnt[11]~40\,
	combout => \inst12|cnt[12]~41_combout\,
	cout => \inst12|cnt[12]~42\);

-- Location: LCCOMB_X17_Y6_N12
\inst8|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr3~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(0) & (\inst9|altsyncram_component|auto_generated|q_a\(2) $ (((!\inst9|altsyncram_component|auto_generated|q_a\(3) & !\inst9|altsyncram_component|auto_generated|q_a\(1)))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(0) & (((\inst9|altsyncram_component|auto_generated|q_a\(3) & \inst9|altsyncram_component|auto_generated|q_a\(1))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst8|WideOr3~0_combout\);

-- Location: FF_X16_Y6_N9
\inst12|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[12]~41_combout\,
	asdata => \inst8|WideOr3~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(12));

-- Location: LCCOMB_X16_Y6_N10
\inst12|cnt[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[13]~43_combout\ = (\inst12|cnt\(13) & (!\inst12|cnt[12]~42\)) # (!\inst12|cnt\(13) & ((\inst12|cnt[12]~42\) # (GND)))
-- \inst12|cnt[13]~44\ = CARRY((!\inst12|cnt[12]~42\) # (!\inst12|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(13),
	datad => VCC,
	cin => \inst12|cnt[12]~42\,
	combout => \inst12|cnt[13]~43_combout\,
	cout => \inst12|cnt[13]~44\);

-- Location: LCCOMB_X16_Y6_N24
\inst8|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr2~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (((\inst9|altsyncram_component|auto_generated|q_a\(1)) # (\inst9|altsyncram_component|auto_generated|q_a\(3))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\inst9|altsyncram_component|auto_generated|q_a\(0) & ((\inst9|altsyncram_component|auto_generated|q_a\(1)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst9|altsyncram_component|auto_generated|q_a\(0) & 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr2~0_combout\);

-- Location: FF_X16_Y6_N11
\inst12|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[13]~43_combout\,
	asdata => \inst8|WideOr2~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(13));

-- Location: LCCOMB_X16_Y6_N12
\inst12|cnt[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[14]~45_combout\ = (\inst12|cnt\(14) & (\inst12|cnt[13]~44\ $ (GND))) # (!\inst12|cnt\(14) & (!\inst12|cnt[13]~44\ & VCC))
-- \inst12|cnt[14]~46\ = CARRY((\inst12|cnt\(14) & !\inst12|cnt[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(14),
	datad => VCC,
	cin => \inst12|cnt[13]~44\,
	combout => \inst12|cnt[14]~45_combout\,
	cout => \inst12|cnt[14]~46\);

-- Location: LCCOMB_X17_Y6_N10
\inst8|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr1~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (!\inst9|altsyncram_component|auto_generated|q_a\(3))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2) & (!\inst9|altsyncram_component|auto_generated|q_a\(1) & 
-- ((!\inst9|altsyncram_component|auto_generated|q_a\(0)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst8|WideOr1~0_combout\);

-- Location: FF_X16_Y6_N13
\inst12|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[14]~45_combout\,
	asdata => \inst8|WideOr1~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(14));

-- Location: LCCOMB_X16_Y6_N14
\inst12|cnt[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[15]~47_combout\ = (\inst12|cnt\(15) & (!\inst12|cnt[14]~46\)) # (!\inst12|cnt\(15) & ((\inst12|cnt[14]~46\) # (GND)))
-- \inst12|cnt[15]~48\ = CARRY((!\inst12|cnt[14]~46\) # (!\inst12|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(15),
	datad => VCC,
	cin => \inst12|cnt[14]~46\,
	combout => \inst12|cnt[15]~47_combout\,
	cout => \inst12|cnt[15]~48\);

-- Location: LCCOMB_X16_Y6_N22
\inst8|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr0~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2) & (((\inst9|altsyncram_component|auto_generated|q_a\(3))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2) & ((\inst9|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\inst9|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(0)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr0~0_combout\);

-- Location: FF_X16_Y6_N15
\inst12|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[15]~47_combout\,
	asdata => \inst8|WideOr0~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(15));

-- Location: LCCOMB_X16_Y6_N16
\inst12|cnt[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|cnt[16]~49_combout\ = \inst12|cnt[15]~48\ $ (!\inst12|cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|cnt\(16),
	cin => \inst12|cnt[15]~48\,
	combout => \inst12|cnt[16]~49_combout\);

-- Location: LCCOMB_X16_Y6_N26
\inst8|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Decoder0~0_combout\ = ((\inst9|altsyncram_component|auto_generated|q_a\(2)) # ((\inst9|altsyncram_component|auto_generated|q_a\(1)) # (\inst9|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst9|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|Decoder0~0_combout\);

-- Location: FF_X16_Y6_N17
\inst12|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|cnt[16]~49_combout\,
	asdata => \inst8|Decoder0~0_combout\,
	sload => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cnt\(16));

-- Location: LCCOMB_X16_Y7_N10
\inst12|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~1_combout\ = (\inst12|cnt\(5) & (\inst12|cnt\(4) & (\inst12|cnt\(7) & \inst12|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(5),
	datab => \inst12|cnt\(4),
	datac => \inst12|cnt\(7),
	datad => \inst12|cnt\(6),
	combout => \inst12|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y7_N12
\inst12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~0_combout\ = (\inst12|cnt\(0) & \inst12|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(0),
	datad => \inst12|cnt\(1),
	combout => \inst12|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y7_N0
\inst12|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~2_combout\ = (\inst12|Equal0~1_combout\ & (\inst12|cnt\(2) & (\inst12|cnt\(3) & \inst12|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~1_combout\,
	datab => \inst12|cnt\(2),
	datac => \inst12|cnt\(3),
	datad => \inst12|Equal0~0_combout\,
	combout => \inst12|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y6_N28
\inst12|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~4_combout\ = (\inst12|cnt\(13) & (\inst12|cnt\(12) & (\inst12|cnt\(15) & \inst12|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(13),
	datab => \inst12|cnt\(12),
	datac => \inst12|cnt\(15),
	datad => \inst12|cnt\(14),
	combout => \inst12|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y6_N18
\inst12|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~3_combout\ = (\inst12|cnt\(9) & (\inst12|cnt\(8) & (\inst12|cnt\(10) & \inst12|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(9),
	datab => \inst12|cnt\(8),
	datac => \inst12|cnt\(10),
	datad => \inst12|cnt\(11),
	combout => \inst12|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y7_N6
\inst12|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~5_combout\ = (\inst12|cnt\(16) & (\inst12|Equal0~2_combout\ & (\inst12|Equal0~4_combout\ & \inst12|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(16),
	datab => \inst12|Equal0~2_combout\,
	datac => \inst12|Equal0~4_combout\,
	datad => \inst12|Equal0~3_combout\,
	combout => \inst12|Equal0~5_combout\);

-- Location: FF_X16_Y7_N7
\inst12|cout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \inst12|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|cout~q\);

-- Location: LCCOMB_X17_Y7_N8
\inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = !\inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	combout => \inst4~0_combout\);

-- Location: FF_X17_Y7_N9
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|cout~q\,
	d => \inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X17_Y7_N26
\inst8|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr18~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(1) & (((\inst9|altsyncram_component|auto_generated|q_a\(2)) # (!\inst9|altsyncram_component|auto_generated|q_a\(3))) # (!\inst9|altsyncram_component|auto_generated|q_a\(0)))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(0) & ((\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(0) & (!\inst9|altsyncram_component|auto_generated|q_a\(2) & \inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr18~0_combout\);

-- Location: LCCOMB_X17_Y7_N0
\inst3|seg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|seg[6]~0_combout\ = (\inst|clockout~combout\ & (((!\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst|clockout~combout\ & (!\inst8|WideOr18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|WideOr18~0_combout\,
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst|clockout~combout\,
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|seg[6]~0_combout\);

-- Location: LCCOMB_X17_Y7_N10
\inst8|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr16~0_combout\ = \inst9|altsyncram_component|auto_generated|q_a\(2) $ (((!\inst9|altsyncram_component|auto_generated|q_a\(3) & ((\inst9|altsyncram_component|auto_generated|q_a\(1)) # (\inst9|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr16~0_combout\);

-- Location: LCCOMB_X17_Y7_N12
\inst8|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr19~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(1) & (\inst9|altsyncram_component|auto_generated|q_a\(2) $ (((!\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(0)))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(1) & (!\inst9|altsyncram_component|auto_generated|q_a\(2) & ((\inst9|altsyncram_component|auto_generated|q_a\(0)) # (\inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr19~0_combout\);

-- Location: LCCOMB_X17_Y7_N14
\inst3|seg[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|seg[5]~1_combout\ = (\inst|clockout~combout\ & (\inst8|WideOr16~0_combout\)) # (!\inst|clockout~combout\ & ((\inst8|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|WideOr16~0_combout\,
	datac => \inst|clockout~combout\,
	datad => \inst8|WideOr19~0_combout\,
	combout => \inst3|seg[5]~1_combout\);

-- Location: LCCOMB_X17_Y7_N28
\inst8|WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr20~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(1) & ((\inst9|altsyncram_component|auto_generated|q_a\(0) & (!\inst9|altsyncram_component|auto_generated|q_a\(2) & !\inst9|altsyncram_component|auto_generated|q_a\(3))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(0) & (\inst9|altsyncram_component|auto_generated|q_a\(2) $ (\inst9|altsyncram_component|auto_generated|q_a\(3)))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(1) & 
-- (\inst9|altsyncram_component|auto_generated|q_a\(0) & (\inst9|altsyncram_component|auto_generated|q_a\(2) & \inst9|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr20~0_combout\);

-- Location: LCCOMB_X17_Y7_N30
\inst3|seg[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|seg[4]~2_combout\ = (\inst|clockout~combout\ & (\inst8|WideOr16~0_combout\)) # (!\inst|clockout~combout\ & ((\inst8|WideOr20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|WideOr16~0_combout\,
	datac => \inst|clockout~combout\,
	datad => \inst8|WideOr20~0_combout\,
	combout => \inst3|seg[4]~2_combout\);

-- Location: LCCOMB_X17_Y7_N18
\inst3|seg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|seg[3]~5_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(3) & (\inst9|altsyncram_component|auto_generated|q_a\(1) $ ((\inst9|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(3) & 
-- (\inst9|altsyncram_component|auto_generated|q_a\(2) $ (((\inst9|altsyncram_component|auto_generated|q_a\(1)) # (\inst9|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|seg[3]~5_combout\);

-- Location: LCCOMB_X17_Y7_N4
\inst3|seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|seg[3]~6_combout\ = (\inst|clockout~combout\ & (((\inst3|seg[3]~5_combout\ & !\inst9|altsyncram_component|auto_generated|q_a\(3))))) # (!\inst|clockout~combout\ & ((\inst9|altsyncram_component|auto_generated|q_a\(3) & ((\inst3|seg[3]~5_combout\))) 
-- # (!\inst9|altsyncram_component|auto_generated|q_a\(3) & (\inst9|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst3|seg[3]~5_combout\,
	datac => \inst|clockout~combout\,
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|seg[3]~6_combout\);

-- Location: LCCOMB_X17_Y7_N20
\inst8|WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr22~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(0) & ((\inst9|altsyncram_component|auto_generated|q_a\(1)) # ((!\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(0) & ((\inst9|altsyncram_component|auto_generated|q_a\(3)) # (\inst9|altsyncram_component|auto_generated|q_a\(1) $ (\inst9|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr22~0_combout\);

-- Location: LCCOMB_X17_Y7_N22
\inst3|seg[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|seg[2]~3_combout\ = (\inst|clockout~combout\ & (((!\inst9|altsyncram_component|auto_generated|q_a\(3))) # (!\inst9|altsyncram_component|auto_generated|q_a\(2)))) # (!\inst|clockout~combout\ & (((!\inst8|WideOr22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst8|WideOr22~0_combout\,
	datac => \inst|clockout~combout\,
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|seg[2]~3_combout\);

-- Location: LCCOMB_X17_Y7_N24
\inst8|WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr23~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(2)) # ((\inst9|altsyncram_component|auto_generated|q_a\(1) & (\inst9|altsyncram_component|auto_generated|q_a\(0) & \inst9|altsyncram_component|auto_generated|q_a\(3))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(1) & (\inst9|altsyncram_component|auto_generated|q_a\(0) $ (\inst9|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst8|WideOr23~0_combout\);

-- Location: LCCOMB_X17_Y6_N20
\inst3|seg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|seg[1]~4_combout\ = (\inst|clockout~combout\ & (((!\inst9|altsyncram_component|auto_generated|q_a\(3)) # (!\inst9|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst|clockout~combout\ & (!\inst8|WideOr23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|WideOr23~0_combout\,
	datab => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst|clockout~combout\,
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|seg[1]~4_combout\);

-- Location: LCCOMB_X17_Y6_N14
\inst8|WideOr24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr24~0_combout\ = (\inst9|altsyncram_component|auto_generated|q_a\(0) & ((\inst9|altsyncram_component|auto_generated|q_a\(3) & ((!\inst9|altsyncram_component|auto_generated|q_a\(1)) # (!\inst9|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (!\inst9|altsyncram_component|auto_generated|q_a\(3) & ((\inst9|altsyncram_component|auto_generated|q_a\(1)))))) # (!\inst9|altsyncram_component|auto_generated|q_a\(0) & ((\inst9|altsyncram_component|auto_generated|q_a\(1)) # 
-- ((!\inst9|altsyncram_component|auto_generated|q_a\(3) & \inst9|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst9|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst9|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst8|WideOr24~0_combout\);

-- Location: LCCOMB_X1_Y6_N16
\inst8|WideOr24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|WideOr24~1_combout\ = (\inst|clockout~combout\) # (!\inst8|WideOr24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clockout~combout\,
	datad => \inst8|WideOr24~0_combout\,
	combout => \inst8|WideOr24~1_combout\);

ww_BUZZER <= \BUZZER~output_o\;

ww_dig(7) <= \dig[7]~output_o\;

ww_dig(6) <= \dig[6]~output_o\;

ww_dig(5) <= \dig[5]~output_o\;

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(0) <= \dig[0]~output_o\;

ww_seg7 <= \seg7~output_o\;

ww_seg6 <= \seg6~output_o\;

ww_seg5 <= \seg5~output_o\;

ww_seg4 <= \seg4~output_o\;

ww_seg3 <= \seg3~output_o\;

ww_seg2 <= \seg2~output_o\;

ww_seg1 <= \seg1~output_o\;

ww_seg0 <= \seg0~output_o\;
END structure;


