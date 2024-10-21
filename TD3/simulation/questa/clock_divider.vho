-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/21/2024 16:40:24"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock_divider IS
    PORT (
	LEDR : OUT std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	MAX10_CLK1_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0)
	);
END clock_divider;

-- Design Ports Information
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF clock_divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \inst|clkcnt~22_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|clkcnt~21_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|clkcnt~20_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|clkcnt~19_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|clkcnt~18_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|clkcnt~17_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|clkcnt~16_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|clkcnt~30_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|clkcnt~29_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|clkcnt~28_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|clkcnt~27_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|clkcnt~26_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|clkcnt~25_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|clkcnt~24_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|clkcnt~23_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|clkout~0_combout\ : std_logic;
SIGNAL \inst|clkout~feeder_combout\ : std_logic;
SIGNAL \inst|clkout~q\ : std_logic;
SIGNAL \inst|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|clkcnt~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|clkcnt~3_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|clkcnt~1_combout\ : std_logic;
SIGNAL \inst2|clkcnt~0_combout\ : std_logic;
SIGNAL \inst2|clkout~0_combout\ : std_logic;
SIGNAL \inst2|clkout~1_combout\ : std_logic;
SIGNAL \inst2|clkout~2_combout\ : std_logic;
SIGNAL \inst2|clkout~q\ : std_logic;
SIGNAL \inst1|CLK_OUT~0_combout\ : std_logic;
SIGNAL \inst1|CLK_OUT~1_combout\ : std_logic;
SIGNAL \inst|clkcnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|clkcnt\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkout~q\);

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|clkout~q\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|CLK_OUT~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clkout~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X64_Y18_N0
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|clkcnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|clkcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X64_Y18_N1
\inst|clkcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(0));

-- Location: LCCOMB_X64_Y18_N2
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|clkcnt\(1) & (\inst|Add0~1\ & VCC)) # (!\inst|clkcnt\(1) & (!\inst|Add0~1\))
-- \inst|Add0~3\ = CARRY((!\inst|clkcnt\(1) & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X64_Y18_N3
\inst|clkcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(1));

-- Location: LCCOMB_X64_Y18_N4
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|clkcnt\(2) & ((GND) # (!\inst|Add0~3\))) # (!\inst|clkcnt\(2) & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~5\ = CARRY((\inst|clkcnt\(2)) # (!\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X64_Y18_N5
\inst|clkcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(2));

-- Location: LCCOMB_X64_Y18_N6
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|clkcnt\(3) & (\inst|Add0~5\ & VCC)) # (!\inst|clkcnt\(3) & (!\inst|Add0~5\))
-- \inst|Add0~7\ = CARRY((!\inst|clkcnt\(3) & !\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X64_Y18_N7
\inst|clkcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(3));

-- Location: LCCOMB_X64_Y18_N8
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|clkcnt\(4) & ((GND) # (!\inst|Add0~7\))) # (!\inst|clkcnt\(4) & (\inst|Add0~7\ $ (GND)))
-- \inst|Add0~9\ = CARRY((\inst|clkcnt\(4)) # (!\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X64_Y18_N9
\inst|clkcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(4));

-- Location: LCCOMB_X64_Y18_N10
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|clkcnt\(5) & (\inst|Add0~9\ & VCC)) # (!\inst|clkcnt\(5) & (!\inst|Add0~9\))
-- \inst|Add0~11\ = CARRY((!\inst|clkcnt\(5) & !\inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X64_Y18_N11
\inst|clkcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(5));

-- Location: LCCOMB_X64_Y18_N12
\inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|clkcnt\(6) & ((GND) # (!\inst|Add0~11\))) # (!\inst|clkcnt\(6) & (\inst|Add0~11\ $ (GND)))
-- \inst|Add0~13\ = CARRY((\inst|clkcnt\(6)) # (!\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X63_Y18_N20
\inst|clkcnt~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~22_combout\ = (\inst|Add0~12_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkcnt~22_combout\);

-- Location: FF_X63_Y18_N21
\inst|clkcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~22_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(6));

-- Location: LCCOMB_X64_Y18_N14
\inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|clkcnt\(7) & (\inst|Add0~13\ & VCC)) # (!\inst|clkcnt\(7) & (!\inst|Add0~13\))
-- \inst|Add0~15\ = CARRY((!\inst|clkcnt\(7) & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X63_Y18_N16
\inst|clkcnt~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~21_combout\ = (\inst|Add0~14_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkcnt~21_combout\);

-- Location: FF_X64_Y18_N15
\inst|clkcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \inst|clkcnt~21_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(7));

-- Location: LCCOMB_X64_Y18_N16
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|clkcnt\(8) & ((GND) # (!\inst|Add0~15\))) # (!\inst|clkcnt\(8) & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~17\ = CARRY((\inst|clkcnt\(8)) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X63_Y18_N8
\inst|clkcnt~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~20_combout\ = (\inst|Add0~16_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|clkcnt~20_combout\);

-- Location: FF_X63_Y18_N9
\inst|clkcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~20_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(8));

-- Location: LCCOMB_X64_Y18_N18
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|clkcnt\(9) & (\inst|Add0~17\ & VCC)) # (!\inst|clkcnt\(9) & (!\inst|Add0~17\))
-- \inst|Add0~19\ = CARRY((!\inst|clkcnt\(9) & !\inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X63_Y18_N6
\inst|clkcnt~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~19_combout\ = (\inst|Add0~18_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|clkcnt~19_combout\);

-- Location: FF_X63_Y18_N7
\inst|clkcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~19_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(9));

-- Location: LCCOMB_X64_Y18_N20
\inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|clkcnt\(10) & ((GND) # (!\inst|Add0~19\))) # (!\inst|clkcnt\(10) & (\inst|Add0~19\ $ (GND)))
-- \inst|Add0~21\ = CARRY((\inst|clkcnt\(10)) # (!\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X63_Y18_N28
\inst|clkcnt~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~18_combout\ = (\inst|Add0~20_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkcnt~18_combout\);

-- Location: FF_X63_Y18_N29
\inst|clkcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~18_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(10));

-- Location: LCCOMB_X64_Y18_N22
\inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|clkcnt\(11) & (\inst|Add0~21\ & VCC)) # (!\inst|clkcnt\(11) & (!\inst|Add0~21\))
-- \inst|Add0~23\ = CARRY((!\inst|clkcnt\(11) & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X64_Y18_N23
\inst|clkcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(11));

-- Location: LCCOMB_X63_Y18_N22
\inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|clkcnt\(9) & (!\inst|clkcnt\(8) & (!\inst|clkcnt\(10) & !\inst|clkcnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(9),
	datab => \inst|clkcnt\(8),
	datac => \inst|clkcnt\(10),
	datad => \inst|clkcnt\(11),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X63_Y18_N24
\inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|clkcnt\(3) & (!\inst|clkcnt\(0) & (!\inst|clkcnt\(2) & !\inst|clkcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(3),
	datab => \inst|clkcnt\(0),
	datac => \inst|clkcnt\(2),
	datad => \inst|clkcnt\(1),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X63_Y18_N26
\inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|clkcnt\(6) & (!\inst|clkcnt\(5) & (!\inst|clkcnt\(4) & !\inst|clkcnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(6),
	datab => \inst|clkcnt\(5),
	datac => \inst|clkcnt\(4),
	datad => \inst|clkcnt\(7),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X64_Y18_N24
\inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|clkcnt\(12) & ((GND) # (!\inst|Add0~23\))) # (!\inst|clkcnt\(12) & (\inst|Add0~23\ $ (GND)))
-- \inst|Add0~25\ = CARRY((\inst|clkcnt\(12)) # (!\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X64_Y18_N25
\inst|clkcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(12));

-- Location: LCCOMB_X64_Y18_N26
\inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|clkcnt\(13) & (\inst|Add0~25\ & VCC)) # (!\inst|clkcnt\(13) & (!\inst|Add0~25\))
-- \inst|Add0~27\ = CARRY((!\inst|clkcnt\(13) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X64_Y18_N27
\inst|clkcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(13));

-- Location: LCCOMB_X64_Y18_N28
\inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|clkcnt\(14) & ((GND) # (!\inst|Add0~27\))) # (!\inst|clkcnt\(14) & (\inst|Add0~27\ $ (GND)))
-- \inst|Add0~29\ = CARRY((\inst|clkcnt\(14)) # (!\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: FF_X64_Y18_N29
\inst|clkcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~28_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(14));

-- Location: LCCOMB_X64_Y18_N30
\inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|clkcnt\(15) & (\inst|Add0~29\ & VCC)) # (!\inst|clkcnt\(15) & (!\inst|Add0~29\))
-- \inst|Add0~31\ = CARRY((!\inst|clkcnt\(15) & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X63_Y18_N12
\inst|clkcnt~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~17_combout\ = (\inst|Add0~30_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datac => \inst|Add0~30_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkcnt~17_combout\);

-- Location: FF_X63_Y18_N13
\inst|clkcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~17_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(15));

-- Location: LCCOMB_X63_Y18_N18
\inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|clkcnt\(15) & (!\inst|clkcnt\(14) & (!\inst|clkcnt\(13) & !\inst|clkcnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(15),
	datab => \inst|clkcnt\(14),
	datac => \inst|clkcnt\(13),
	datad => \inst|clkcnt\(12),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X63_Y18_N30
\inst|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~6_combout\ & (\inst|Equal0~8_combout\ & (\inst|Equal0~7_combout\ & \inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Equal0~8_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X64_Y17_N0
\inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|clkcnt\(16) & ((GND) # (!\inst|Add0~31\))) # (!\inst|clkcnt\(16) & (\inst|Add0~31\ $ (GND)))
-- \inst|Add0~33\ = CARRY((\inst|clkcnt\(16)) # (!\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: FF_X64_Y17_N1
\inst|clkcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~32_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(16));

-- Location: LCCOMB_X64_Y17_N2
\inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|clkcnt\(17) & (\inst|Add0~33\ & VCC)) # (!\inst|clkcnt\(17) & (!\inst|Add0~33\))
-- \inst|Add0~35\ = CARRY((!\inst|clkcnt\(17) & !\inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X63_Y17_N26
\inst|clkcnt~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~16_combout\ = (\inst|Add0~34_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|clkcnt~16_combout\);

-- Location: FF_X63_Y17_N27
\inst|clkcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(17));

-- Location: LCCOMB_X64_Y17_N4
\inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|clkcnt\(18) & ((GND) # (!\inst|Add0~35\))) # (!\inst|clkcnt\(18) & (\inst|Add0~35\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\inst|clkcnt\(18)) # (!\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: FF_X64_Y17_N5
\inst|clkcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~36_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(18));

-- Location: LCCOMB_X64_Y17_N6
\inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|clkcnt\(19) & (\inst|Add0~37\ & VCC)) # (!\inst|clkcnt\(19) & (!\inst|Add0~37\))
-- \inst|Add0~39\ = CARRY((!\inst|clkcnt\(19) & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: FF_X64_Y17_N7
\inst|clkcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(19));

-- Location: LCCOMB_X64_Y17_N8
\inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|clkcnt\(20) & ((GND) # (!\inst|Add0~39\))) # (!\inst|clkcnt\(20) & (\inst|Add0~39\ $ (GND)))
-- \inst|Add0~41\ = CARRY((\inst|clkcnt\(20)) # (!\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: FF_X64_Y17_N9
\inst|clkcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~40_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(20));

-- Location: LCCOMB_X64_Y17_N10
\inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|clkcnt\(21) & (\inst|Add0~41\ & VCC)) # (!\inst|clkcnt\(21) & (!\inst|Add0~41\))
-- \inst|Add0~43\ = CARRY((!\inst|clkcnt\(21) & !\inst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: FF_X64_Y17_N11
\inst|clkcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~42_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(21));

-- Location: LCCOMB_X64_Y17_N12
\inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|clkcnt\(22) & ((GND) # (!\inst|Add0~43\))) # (!\inst|clkcnt\(22) & (\inst|Add0~43\ $ (GND)))
-- \inst|Add0~45\ = CARRY((\inst|clkcnt\(22)) # (!\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: FF_X64_Y17_N13
\inst|clkcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~44_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(22));

-- Location: LCCOMB_X64_Y17_N14
\inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|clkcnt\(23) & (\inst|Add0~45\ & VCC)) # (!\inst|clkcnt\(23) & (!\inst|Add0~45\))
-- \inst|Add0~47\ = CARRY((!\inst|clkcnt\(23) & !\inst|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X63_Y17_N10
\inst|clkcnt~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~30_combout\ = (\inst|Add0~46_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datac => \inst|Add0~46_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkcnt~30_combout\);

-- Location: FF_X63_Y17_N11
\inst|clkcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~30_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(23));

-- Location: LCCOMB_X64_Y17_N16
\inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|clkcnt\(24) & ((GND) # (!\inst|Add0~47\))) # (!\inst|clkcnt\(24) & (\inst|Add0~47\ $ (GND)))
-- \inst|Add0~49\ = CARRY((\inst|clkcnt\(24)) # (!\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: FF_X64_Y17_N17
\inst|clkcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|Add0~48_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(24));

-- Location: LCCOMB_X64_Y17_N18
\inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|clkcnt\(25) & (\inst|Add0~49\ & VCC)) # (!\inst|clkcnt\(25) & (!\inst|Add0~49\))
-- \inst|Add0~51\ = CARRY((!\inst|clkcnt\(25) & !\inst|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(25),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: LCCOMB_X63_Y17_N6
\inst|clkcnt~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~29_combout\ = (\inst|Add0~50_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~50_combout\,
	combout => \inst|clkcnt~29_combout\);

-- Location: FF_X63_Y17_N7
\inst|clkcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~29_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(25));

-- Location: LCCOMB_X64_Y17_N20
\inst|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|clkcnt\(26) & ((GND) # (!\inst|Add0~51\))) # (!\inst|clkcnt\(26) & (\inst|Add0~51\ $ (GND)))
-- \inst|Add0~53\ = CARRY((\inst|clkcnt\(26)) # (!\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(26),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: LCCOMB_X63_Y17_N16
\inst|clkcnt~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~28_combout\ = (\inst|Add0~52_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datac => \inst|Add0~52_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkcnt~28_combout\);

-- Location: FF_X63_Y17_N17
\inst|clkcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~28_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(26));

-- Location: LCCOMB_X64_Y17_N22
\inst|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|clkcnt\(27) & (\inst|Add0~53\ & VCC)) # (!\inst|clkcnt\(27) & (!\inst|Add0~53\))
-- \inst|Add0~55\ = CARRY((!\inst|clkcnt\(27) & !\inst|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(27),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X63_Y17_N22
\inst|clkcnt~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~27_combout\ = (\inst|Add0~54_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~54_combout\,
	combout => \inst|clkcnt~27_combout\);

-- Location: FF_X63_Y17_N23
\inst|clkcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~27_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(27));

-- Location: LCCOMB_X64_Y17_N24
\inst|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|clkcnt\(28) & ((GND) # (!\inst|Add0~55\))) # (!\inst|clkcnt\(28) & (\inst|Add0~55\ $ (GND)))
-- \inst|Add0~57\ = CARRY((\inst|clkcnt\(28)) # (!\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(28),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: LCCOMB_X63_Y17_N14
\inst|clkcnt~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~26_combout\ = (\inst|Add0~56_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~56_combout\,
	combout => \inst|clkcnt~26_combout\);

-- Location: FF_X63_Y17_N15
\inst|clkcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~26_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(28));

-- Location: LCCOMB_X64_Y17_N26
\inst|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|clkcnt\(29) & (\inst|Add0~57\ & VCC)) # (!\inst|clkcnt\(29) & (!\inst|Add0~57\))
-- \inst|Add0~59\ = CARRY((!\inst|clkcnt\(29) & !\inst|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(29),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: LCCOMB_X63_Y17_N24
\inst|clkcnt~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~25_combout\ = (\inst|Add0~58_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~58_combout\,
	combout => \inst|clkcnt~25_combout\);

-- Location: FF_X63_Y17_N25
\inst|clkcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~25_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(29));

-- Location: LCCOMB_X64_Y17_N28
\inst|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|clkcnt\(30) & ((GND) # (!\inst|Add0~59\))) # (!\inst|clkcnt\(30) & (\inst|Add0~59\ $ (GND)))
-- \inst|Add0~61\ = CARRY((\inst|clkcnt\(30)) # (!\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkcnt\(30),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X63_Y17_N18
\inst|clkcnt~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~24_combout\ = (\inst|Add0~60_combout\ & ((!\inst|Equal0~9_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~60_combout\,
	combout => \inst|clkcnt~24_combout\);

-- Location: FF_X63_Y17_N19
\inst|clkcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~24_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(30));

-- Location: LCCOMB_X64_Y17_N30
\inst|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = \inst|Add0~61\ $ (!\inst|clkcnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkcnt\(31),
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\);

-- Location: LCCOMB_X63_Y17_N12
\inst|clkcnt~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkcnt~23_combout\ = (\inst|Add0~62_combout\ & ((!\inst|Equal0~4_combout\) # (!\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datac => \inst|Add0~62_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkcnt~23_combout\);

-- Location: FF_X63_Y17_N13
\inst|clkcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkcnt~23_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkcnt\(31));

-- Location: LCCOMB_X63_Y17_N28
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|clkcnt\(31) & (!\inst|clkcnt\(29) & (!\inst|clkcnt\(28) & !\inst|clkcnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(31),
	datab => \inst|clkcnt\(29),
	datac => \inst|clkcnt\(28),
	datad => \inst|clkcnt\(30),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y17_N4
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|clkcnt\(25) & (!\inst|clkcnt\(26) & (!\inst|clkcnt\(27) & !\inst|clkcnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(25),
	datab => \inst|clkcnt\(26),
	datac => \inst|clkcnt\(27),
	datad => \inst|clkcnt\(24),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y17_N8
\inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|clkcnt\(19) & (!\inst|clkcnt\(16) & (!\inst|clkcnt\(17) & !\inst|clkcnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(19),
	datab => \inst|clkcnt\(16),
	datac => \inst|clkcnt\(17),
	datad => \inst|clkcnt\(18),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y17_N20
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|clkcnt\(23) & (!\inst|clkcnt\(21) & (!\inst|clkcnt\(22) & !\inst|clkcnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkcnt\(23),
	datab => \inst|clkcnt\(21),
	datac => \inst|clkcnt\(22),
	datad => \inst|clkcnt\(20),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y17_N30
\inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~3_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y16_N14
\inst|clkout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkout~0_combout\ = \inst|clkout~q\ $ (((\inst|Equal0~4_combout\ & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkout~q\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|clkout~0_combout\);

-- Location: LCCOMB_X63_Y16_N28
\inst|clkout~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clkout~feeder_combout\ = \inst|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkout~0_combout\,
	combout => \inst|clkout~feeder_combout\);

-- Location: FF_X63_Y16_N29
\inst|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst|clkout~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkout~q\);

-- Location: CLKCTRL_G16
\inst|clkout~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clkout~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X63_Y16_N8
\inst2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\SW[2]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Add0~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X63_Y16_N18
\inst2|clkcnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clkcnt~2_combout\ = (\inst2|Equal0~0_combout\ & (\SW[1]~input_o\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|clkcnt\(0) $ (!\inst2|clkcnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|clkcnt\(0),
	datac => \inst2|clkcnt\(1),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|clkcnt~2_combout\);

-- Location: FF_X63_Y16_N19
\inst2|clkcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|clkcnt~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkcnt\(1));

-- Location: LCCOMB_X63_Y16_N20
\inst2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|clkcnt\(0) & (!\inst2|clkcnt\(2) & (!\inst2|clkcnt\(3) & !\inst2|clkcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkcnt\(0),
	datab => \inst2|clkcnt\(2),
	datac => \inst2|clkcnt\(3),
	datad => \inst2|clkcnt\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y16_N30
\inst2|clkcnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clkcnt~3_combout\ = (\inst2|Equal0~0_combout\ & (\SW[0]~input_o\)) # (!\inst2|Equal0~0_combout\ & ((!\inst2|clkcnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \inst2|clkcnt\(0),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|clkcnt~3_combout\);

-- Location: FF_X63_Y16_N31
\inst2|clkcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|clkcnt~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkcnt\(0));

-- Location: LCCOMB_X63_Y16_N24
\inst2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = (!\inst2|clkcnt\(0) & !\inst2|clkcnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clkcnt\(0),
	datad => \inst2|clkcnt\(1),
	combout => \inst2|Add1~0_combout\);

-- Location: LCCOMB_X63_Y16_N10
\inst2|clkcnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clkcnt~1_combout\ = (\inst2|Equal0~0_combout\ & (\SW[2]~input_o\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|Add1~0_combout\ $ (\inst2|clkcnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Add1~0_combout\,
	datac => \inst2|clkcnt\(2),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|clkcnt~1_combout\);

-- Location: FF_X63_Y16_N11
\inst2|clkcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|clkcnt~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkcnt\(2));

-- Location: LCCOMB_X63_Y16_N22
\inst2|clkcnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clkcnt~0_combout\ = (\inst2|clkcnt\(2) & (((\inst2|clkcnt\(3))))) # (!\inst2|clkcnt\(2) & ((\inst2|clkcnt\(3) & ((!\inst2|Add1~0_combout\))) # (!\inst2|clkcnt\(3) & (\SW[3]~input_o\ & \inst2|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkcnt\(2),
	datab => \SW[3]~input_o\,
	datac => \inst2|clkcnt\(3),
	datad => \inst2|Add1~0_combout\,
	combout => \inst2|clkcnt~0_combout\);

-- Location: FF_X63_Y16_N23
\inst2|clkcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|clkcnt~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkcnt\(3));

-- Location: LCCOMB_X63_Y16_N26
\inst2|clkout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clkout~0_combout\ = (\inst2|Add0~0_combout\ & ((\SW[3]~input_o\ & ((\inst2|clkcnt\(2)) # (!\inst2|clkcnt\(3)))) # (!\SW[3]~input_o\ & ((\inst2|clkcnt\(3)) # (!\inst2|clkcnt\(2)))))) # (!\inst2|Add0~0_combout\ & ((\inst2|clkcnt\(3)) # 
-- (\SW[3]~input_o\ $ (\inst2|clkcnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \inst2|clkcnt\(3),
	datad => \inst2|clkcnt\(2),
	combout => \inst2|clkout~0_combout\);

-- Location: LCCOMB_X63_Y16_N6
\inst2|clkout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clkout~1_combout\ = (\SW[1]~input_o\ & ((\inst2|clkcnt\(0)) # (\SW[2]~input_o\ $ (!\inst2|clkcnt\(1))))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ $ (\inst2|clkcnt\(1))) # (!\inst2|clkcnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst2|clkcnt\(0),
	datad => \inst2|clkcnt\(1),
	combout => \inst2|clkout~1_combout\);

-- Location: LCCOMB_X63_Y16_N4
\inst2|clkout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clkout~2_combout\ = (\inst2|Equal0~0_combout\) # ((\inst2|clkout~q\ & ((\inst2|clkout~0_combout\) # (\inst2|clkout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkout~0_combout\,
	datab => \inst2|clkout~1_combout\,
	datac => \inst2|clkout~q\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|clkout~2_combout\);

-- Location: FF_X63_Y16_N5
\inst2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|clkout~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkout~q\);

-- Location: LCCOMB_X63_Y16_N16
\inst1|CLK_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|CLK_OUT~0_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst1|CLK_OUT~0_combout\);

-- Location: LCCOMB_X63_Y16_N12
\inst1|CLK_OUT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|CLK_OUT~1_combout\ = (\inst1|CLK_OUT~0_combout\ & (\inst|clkout~q\)) # (!\inst1|CLK_OUT~0_combout\ & ((\inst2|clkout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|CLK_OUT~0_combout\,
	datac => \inst|clkout~q\,
	datad => \inst2|clkout~q\,
	combout => \inst1|CLK_OUT~1_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


