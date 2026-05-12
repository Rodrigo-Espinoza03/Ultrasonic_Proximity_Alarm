-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun May  3 18:14:18 2026
-- Host        : Daddy_RodrigoLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Proximity_Alarm_bd_UART_MAXSONAR_0_0_sim_netlist.vhdl
-- Design      : Proximity_Alarm_bd_UART_MAXSONAR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate is
  port (
    rxclk_en : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \rx_acc_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate is
  signal \^rxclk_en\ : STD_LOGIC;
  signal Rxclk_en_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \rx_acc[8]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[8]_i_3_n_0\ : STD_LOGIC;
  signal rx_acc_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rx_acc[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rx_acc[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rx_acc[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rx_acc[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rx_acc[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rx_acc[8]_i_2\ : label is "soft_lutpair1";
begin
Rxclk_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_acc_reg(0),
      I1 => rx_acc_reg(2),
      I2 => rx_acc_reg(1),
      I3 => Rxclk_en_i_2_n_0,
      O => \^rxclk_en\
    );
Rxclk_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => rx_acc_reg(6),
      I1 => rx_acc_reg(5),
      I2 => rx_acc_reg(3),
      I3 => rx_acc_reg(4),
      I4 => rx_acc_reg(7),
      I5 => rx_acc_reg(8),
      O => Rxclk_en_i_2_n_0
    );
Rxclk_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^rxclk_en\,
      Q => rxclk_en,
      R => SR(0)
    );
\rx_acc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_acc_reg(0),
      O => p_0_in(0)
    );
\rx_acc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rx_acc_reg(0),
      I1 => rx_acc_reg(1),
      O => p_0_in(1)
    );
\rx_acc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rx_acc_reg(1),
      I1 => rx_acc_reg(0),
      I2 => rx_acc_reg(2),
      O => p_0_in(2)
    );
\rx_acc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rx_acc_reg(2),
      I1 => rx_acc_reg(0),
      I2 => rx_acc_reg(1),
      I3 => rx_acc_reg(3),
      O => p_0_in(3)
    );
\rx_acc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rx_acc_reg(3),
      I1 => rx_acc_reg(1),
      I2 => rx_acc_reg(0),
      I3 => rx_acc_reg(2),
      I4 => rx_acc_reg(4),
      O => p_0_in(4)
    );
\rx_acc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rx_acc_reg(4),
      I1 => rx_acc_reg(2),
      I2 => rx_acc_reg(0),
      I3 => rx_acc_reg(1),
      I4 => rx_acc_reg(3),
      I5 => rx_acc_reg(5),
      O => p_0_in(5)
    );
\rx_acc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rx_acc[8]_i_3_n_0\,
      I1 => rx_acc_reg(6),
      O => p_0_in(6)
    );
\rx_acc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => rx_acc_reg(6),
      I1 => \rx_acc[8]_i_3_n_0\,
      I2 => rx_acc_reg(7),
      O => p_0_in(7)
    );
\rx_acc[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0020FFFF"
    )
        port map (
      I0 => Rxclk_en_i_2_n_0,
      I1 => rx_acc_reg(1),
      I2 => rx_acc_reg(2),
      I3 => rx_acc_reg(0),
      I4 => s00_axi_aresetn,
      I5 => \rx_acc_reg[0]_0\,
      O => \rx_acc[8]_i_1_n_0\
    );
\rx_acc[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => rx_acc_reg(7),
      I1 => \rx_acc[8]_i_3_n_0\,
      I2 => rx_acc_reg(6),
      I3 => rx_acc_reg(8),
      O => p_0_in(8)
    );
\rx_acc[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => rx_acc_reg(4),
      I1 => rx_acc_reg(2),
      I2 => rx_acc_reg(0),
      I3 => rx_acc_reg(1),
      I4 => rx_acc_reg(3),
      I5 => rx_acc_reg(5),
      O => \rx_acc[8]_i_3_n_0\
    );
\rx_acc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => rx_acc_reg(0),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(1),
      Q => rx_acc_reg(1),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(2),
      Q => rx_acc_reg(2),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(3),
      Q => rx_acc_reg(3),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(4),
      Q => rx_acc_reg(4),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(5),
      Q => rx_acc_reg(5),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(6),
      Q => rx_acc_reg(6),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(7),
      Q => rx_acc_reg(7),
      R => \rx_acc[8]_i_1_n_0\
    );
\rx_acc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(8),
      Q => rx_acc_reg(8),
      R => \rx_acc[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_pmod_rx is
  port (
    sensor_rx : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sensor_out_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_pmod_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_pmod_rx is
begin
sensor_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sensor_out_reg_0,
      Q => sensor_rx,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packet_parser is
  port (
    rx_ready_d : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_ready_clr : out STD_LOGIC;
    byte_pos : out STD_LOGIC_VECTOR ( 2 downto 0 );
    packet_seen_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    distance : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rx_ready_clr0 : in STD_LOGIC;
    \FSM_sequential_byte_pos_reg[1]_0\ : in STD_LOGIC;
    packet_seen : in STD_LOGIC;
    packet_seen_reg_0 : in STD_LOGIC;
    packet_seen_reg_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \distance_reg[0]_0\ : in STD_LOGIC;
    packet_valid_reg_0 : in STD_LOGIC;
    packet_valid_reg_1 : in STD_LOGIC;
    \distance_reg[0]_1\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_byte_pos_reg[0]_0\ : in STD_LOGIC;
    \ones_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packet_parser;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packet_parser is
  signal \FSM_sequential_byte_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_byte_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^byte_pos\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^distance\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal distance31_in : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal distance42_in : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \distance[3]_i_2_n_0\ : STD_LOGIC;
  signal \distance[3]_i_3_n_0\ : STD_LOGIC;
  signal \distance[3]_i_4_n_0\ : STD_LOGIC;
  signal \distance[3]_i_5_n_0\ : STD_LOGIC;
  signal \distance[7]_i_10_n_0\ : STD_LOGIC;
  signal \distance[7]_i_11_n_0\ : STD_LOGIC;
  signal \distance[7]_i_12_n_0\ : STD_LOGIC;
  signal \distance[7]_i_14_n_0\ : STD_LOGIC;
  signal \distance[7]_i_15_n_0\ : STD_LOGIC;
  signal \distance[7]_i_16_n_0\ : STD_LOGIC;
  signal \distance[7]_i_18_n_0\ : STD_LOGIC;
  signal \distance[7]_i_19_n_0\ : STD_LOGIC;
  signal \distance[7]_i_20_n_0\ : STD_LOGIC;
  signal \distance[7]_i_21_n_0\ : STD_LOGIC;
  signal \distance[7]_i_22_n_0\ : STD_LOGIC;
  signal \distance[7]_i_2_n_0\ : STD_LOGIC;
  signal \distance[7]_i_6_n_0\ : STD_LOGIC;
  signal \distance[7]_i_7_n_0\ : STD_LOGIC;
  signal \distance[7]_i_8_n_0\ : STD_LOGIC;
  signal \distance[7]_i_9_n_0\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \distance_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_1\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_2\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_3\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_4\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_5\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_6\ : STD_LOGIC;
  signal \distance_reg[7]_i_13_n_7\ : STD_LOGIC;
  signal \distance_reg[7]_i_17_n_3\ : STD_LOGIC;
  signal \distance_reg[7]_i_17_n_6\ : STD_LOGIC;
  signal \distance_reg[7]_i_17_n_7\ : STD_LOGIC;
  signal \distance_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \distance_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \distance_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \distance_reg[7]_i_3_n_4\ : STD_LOGIC;
  signal \distance_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \distance_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \distance_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \hundreth[5]_i_1_n_0\ : STD_LOGIC;
  signal \hundreth_reg_n_0_[2]\ : STD_LOGIC;
  signal \hundreth_reg_n_0_[3]\ : STD_LOGIC;
  signal \hundreth_reg_n_0_[4]\ : STD_LOGIC;
  signal \hundreth_reg_n_0_[5]\ : STD_LOGIC;
  signal ones : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ones[7]_i_1_n_0\ : STD_LOGIC;
  signal packet_valid : STD_LOGIC;
  signal packet_valid_i_1_n_0 : STD_LOGIC;
  signal \^rx_ready_d\ : STD_LOGIC;
  signal \tenth[6]_i_1_n_0\ : STD_LOGIC;
  signal \tenth_reg_n_0_[5]\ : STD_LOGIC;
  signal \tenth_reg_n_0_[6]\ : STD_LOGIC;
  signal \NLW_distance_reg[7]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_distance_reg[7]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_distance_reg[7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_byte_pos_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:000,iSTATE3:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_byte_pos_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:000,iSTATE3:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_byte_pos_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:000,iSTATE3:100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair5";
  attribute HLUTNM : string;
  attribute HLUTNM of \distance[3]_i_3\ : label is "lutpair0";
  attribute HLUTNM of \distance[7]_i_8\ : label is "lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \distance_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \distance_reg[7]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \distance_reg[7]_i_17\ : label is 35;
  attribute ADDER_THRESHOLD of \distance_reg[7]_i_3\ : label is 35;
begin
  SR(0) <= \^sr\(0);
  byte_pos(2 downto 0) <= \^byte_pos\(2 downto 0);
  distance(7 downto 0) <= \^distance\(7 downto 0);
  rx_ready_d <= \^rx_ready_d\;
\FSM_sequential_byte_pos[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F0080"
    )
        port map (
      I0 => \FSM_sequential_byte_pos_reg[1]_0\,
      I1 => \^byte_pos\(0),
      I2 => rx_ready,
      I3 => \^rx_ready_d\,
      I4 => \^byte_pos\(1),
      O => \FSM_sequential_byte_pos[1]_i_1_n_0\
    );
\FSM_sequential_byte_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80FF00008000"
    )
        port map (
      I0 => \FSM_sequential_byte_pos_reg[1]_0\,
      I1 => \^byte_pos\(1),
      I2 => \^byte_pos\(0),
      I3 => rx_ready,
      I4 => \^rx_ready_d\,
      I5 => \^byte_pos\(2),
      O => \FSM_sequential_byte_pos[2]_i_1_n_0\
    );
\FSM_sequential_byte_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_byte_pos_reg[0]_0\,
      Q => \^byte_pos\(0),
      R => \^sr\(0)
    );
\FSM_sequential_byte_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_byte_pos[1]_i_1_n_0\,
      Q => \^byte_pos\(1),
      R => \^sr\(0)
    );
\FSM_sequential_byte_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_byte_pos[2]_i_1_n_0\,
      Q => \^byte_pos\(2),
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \^distance\(0),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => sel0(1),
      O => D(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \^distance\(1),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0083"
    )
        port map (
      I0 => \^distance\(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \^distance\(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \^distance\(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \^distance\(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \^distance\(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \^distance\(7),
      O => D(7)
    );
\distance[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => distance42_in(7),
      I1 => \distance_reg[7]_i_13_n_6\,
      I2 => distance31_in(5),
      O => \distance[3]_i_2_n_0\
    );
\distance[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \distance_reg[7]_i_13_n_6\,
      I1 => distance31_in(5),
      I2 => distance42_in(7),
      I3 => distance31_in(4),
      I4 => \distance_reg[7]_i_13_n_7\,
      O => \distance[3]_i_3_n_0\
    );
\distance[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \distance_reg[7]_i_13_n_7\,
      I1 => distance31_in(4),
      I2 => distance42_in(6),
      O => \distance[3]_i_4_n_0\
    );
\distance[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => distance31_in(3),
      I1 => ones(1),
      O => \distance[3]_i_5_n_0\
    );
\distance[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \distance_reg[0]_0\,
      I1 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\distance[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \distance[7]_i_14_n_0\,
      I1 => \hundreth_reg_n_0_[4]\,
      I2 => distance42_in(6),
      I3 => \distance_reg[7]_i_13_n_4\,
      I4 => distance31_in(7),
      I5 => \hundreth_reg_n_0_[3]\,
      O => \distance[7]_i_10_n_0\
    );
\distance[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \distance[7]_i_7_n_0\,
      I1 => \hundreth_reg_n_0_[2]\,
      I2 => distance31_in(6),
      I3 => \distance_reg[7]_i_13_n_5\,
      O => \distance[7]_i_11_n_0\
    );
\distance[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \distance[7]_i_8_n_0\,
      I1 => distance31_in(6),
      I2 => \distance_reg[7]_i_13_n_5\,
      I3 => \hundreth_reg_n_0_[2]\,
      O => \distance[7]_i_12_n_0\
    );
\distance[7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => distance42_in(7),
      I1 => \distance_reg[7]_i_17_n_7\,
      I2 => \tenth_reg_n_0_[5]\,
      O => \distance[7]_i_14_n_0\
    );
\distance[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \distance_reg[7]_i_13_n_4\,
      I1 => distance31_in(7),
      I2 => distance42_in(6),
      O => \distance[7]_i_15_n_0\
    );
\distance[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \tenth_reg_n_0_[6]\,
      I1 => \distance_reg[7]_i_17_n_6\,
      I2 => \hundreth_reg_n_0_[2]\,
      I3 => \hundreth_reg_n_0_[5]\,
      O => \distance[7]_i_16_n_0\
    );
\distance[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ones(5),
      I1 => distance31_in(5),
      O => \distance[7]_i_18_n_0\
    );
\distance[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ones(4),
      I1 => distance31_in(4),
      O => \distance[7]_i_19_n_0\
    );
\distance[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \^byte_pos\(1),
      I1 => \^byte_pos\(2),
      I2 => \^byte_pos\(0),
      I3 => \distance_reg[0]_1\,
      I4 => rx_ready_clr0,
      I5 => packet_valid_reg_1,
      O => \distance[7]_i_2_n_0\
    );
\distance[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ones(3),
      I1 => distance31_in(3),
      O => \distance[7]_i_20_n_0\
    );
\distance[7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => ones(7),
      I1 => distance31_in(7),
      I2 => distance42_in(7),
      I3 => ones(6),
      I4 => distance31_in(6),
      O => \distance[7]_i_21_n_0\
    );
\distance[7]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => distance31_in(6),
      I1 => ones(6),
      I2 => distance42_in(6),
      O => \distance[7]_i_22_n_0\
    );
\distance[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => distance42_in(6),
      I1 => distance31_in(7),
      I2 => \distance_reg[7]_i_13_n_4\,
      I3 => \hundreth_reg_n_0_[4]\,
      I4 => \distance[7]_i_14_n_0\,
      O => \distance[7]_i_6_n_0\
    );
\distance[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => distance31_in(7),
      I1 => \distance_reg[7]_i_13_n_4\,
      I2 => distance42_in(6),
      I3 => \hundreth_reg_n_0_[3]\,
      O => \distance[7]_i_7_n_0\
    );
\distance[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \distance_reg[7]_i_13_n_6\,
      I1 => distance31_in(5),
      I2 => distance42_in(7),
      O => \distance[7]_i_8_n_0\
    );
\distance[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => \distance[7]_i_15_n_0\,
      I1 => \hundreth_reg_n_0_[4]\,
      I2 => \distance[7]_i_16_n_0\,
      I3 => \distance_reg[7]_i_17_n_7\,
      I4 => \tenth_reg_n_0_[5]\,
      I5 => distance42_in(7),
      O => \distance[7]_i_9_n_0\
    );
\distance_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[3]_i_1_n_7\,
      Q => \^distance\(0),
      R => \^sr\(0)
    );
\distance_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[3]_i_1_n_6\,
      Q => \^distance\(1),
      R => \^sr\(0)
    );
\distance_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[3]_i_1_n_5\,
      Q => \^distance\(2),
      R => \^sr\(0)
    );
\distance_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[3]_i_1_n_4\,
      Q => \^distance\(3),
      R => \^sr\(0)
    );
\distance_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_reg[3]_i_1_n_0\,
      CO(2) => \distance_reg[3]_i_1_n_1\,
      CO(1) => \distance_reg[3]_i_1_n_2\,
      CO(0) => \distance_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \distance[3]_i_2_n_0\,
      DI(2) => distance42_in(6),
      DI(1) => distance31_in(3),
      DI(0) => '0',
      O(3) => \distance_reg[3]_i_1_n_4\,
      O(2) => \distance_reg[3]_i_1_n_5\,
      O(1) => \distance_reg[3]_i_1_n_6\,
      O(0) => \distance_reg[3]_i_1_n_7\,
      S(3) => \distance[3]_i_3_n_0\,
      S(2) => \distance[3]_i_4_n_0\,
      S(1) => \distance[3]_i_5_n_0\,
      S(0) => ones(0)
    );
\distance_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[7]_i_3_n_7\,
      Q => \^distance\(4),
      R => \^sr\(0)
    );
\distance_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[7]_i_3_n_6\,
      Q => \^distance\(5),
      R => \^sr\(0)
    );
\distance_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[7]_i_3_n_5\,
      Q => \^distance\(6),
      R => \^sr\(0)
    );
\distance_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \distance[7]_i_2_n_0\,
      D => \distance_reg[7]_i_3_n_4\,
      Q => \^distance\(7),
      R => \^sr\(0)
    );
\distance_reg[7]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_reg[7]_i_13_n_0\,
      CO(2) => \distance_reg[7]_i_13_n_1\,
      CO(1) => \distance_reg[7]_i_13_n_2\,
      CO(0) => \distance_reg[7]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => ones(5 downto 3),
      DI(0) => '0',
      O(3) => \distance_reg[7]_i_13_n_4\,
      O(2) => \distance_reg[7]_i_13_n_5\,
      O(1) => \distance_reg[7]_i_13_n_6\,
      O(0) => \distance_reg[7]_i_13_n_7\,
      S(3) => \distance[7]_i_18_n_0\,
      S(2) => \distance[7]_i_19_n_0\,
      S(1) => \distance[7]_i_20_n_0\,
      S(0) => ones(2)
    );
\distance_reg[7]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_reg[7]_i_13_n_0\,
      CO(3 downto 1) => \NLW_distance_reg[7]_i_17_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \distance_reg[7]_i_17_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => distance42_in(6),
      O(3 downto 2) => \NLW_distance_reg[7]_i_17_O_UNCONNECTED\(3 downto 2),
      O(1) => \distance_reg[7]_i_17_n_6\,
      O(0) => \distance_reg[7]_i_17_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \distance[7]_i_21_n_0\,
      S(0) => \distance[7]_i_22_n_0\
    );
\distance_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_reg[3]_i_1_n_0\,
      CO(3) => \NLW_distance_reg[7]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \distance_reg[7]_i_3_n_1\,
      CO(1) => \distance_reg[7]_i_3_n_2\,
      CO(0) => \distance_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \distance[7]_i_6_n_0\,
      DI(1) => \distance[7]_i_7_n_0\,
      DI(0) => \distance[7]_i_8_n_0\,
      O(3) => \distance_reg[7]_i_3_n_4\,
      O(2) => \distance_reg[7]_i_3_n_5\,
      O(1) => \distance_reg[7]_i_3_n_6\,
      O(0) => \distance_reg[7]_i_3_n_7\,
      S(3) => \distance[7]_i_9_n_0\,
      S(2) => \distance[7]_i_10_n_0\,
      S(1) => \distance[7]_i_11_n_0\,
      S(0) => \distance[7]_i_12_n_0\
    );
\hundreth[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => rx_ready,
      I1 => \^rx_ready_d\,
      I2 => \^byte_pos\(0),
      I3 => \^byte_pos\(1),
      I4 => \FSM_sequential_byte_pos_reg[1]_0\,
      O => \hundreth[5]_i_1_n_0\
    );
\hundreth_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hundreth[5]_i_1_n_0\,
      D => \ones_reg[7]_0\(0),
      Q => distance42_in(6),
      R => \^sr\(0)
    );
\hundreth_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hundreth[5]_i_1_n_0\,
      D => \ones_reg[7]_0\(1),
      Q => distance42_in(7),
      R => \^sr\(0)
    );
\hundreth_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hundreth[5]_i_1_n_0\,
      D => \ones_reg[7]_0\(2),
      Q => \hundreth_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\hundreth_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hundreth[5]_i_1_n_0\,
      D => \ones_reg[7]_0\(3),
      Q => \hundreth_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\hundreth_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hundreth[5]_i_1_n_0\,
      D => \ones_reg[7]_0\(4),
      Q => \hundreth_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\hundreth_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hundreth[5]_i_1_n_0\,
      D => \ones_reg[7]_0\(5),
      Q => \hundreth_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\ones[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \FSM_sequential_byte_pos_reg[1]_0\,
      I1 => \^byte_pos\(1),
      I2 => \^byte_pos\(0),
      I3 => rx_ready,
      I4 => \^rx_ready_d\,
      O => \ones[7]_i_1_n_0\
    );
\ones_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(0),
      Q => ones(0),
      R => \^sr\(0)
    );
\ones_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(1),
      Q => ones(1),
      R => \^sr\(0)
    );
\ones_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(2),
      Q => ones(2),
      R => \^sr\(0)
    );
\ones_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(3),
      Q => ones(3),
      R => \^sr\(0)
    );
\ones_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(4),
      Q => ones(4),
      R => \^sr\(0)
    );
\ones_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(5),
      Q => ones(5),
      R => \^sr\(0)
    );
\ones_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(6),
      Q => ones(6),
      R => \^sr\(0)
    );
\ones_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ones[7]_i_1_n_0\,
      D => \ones_reg[7]_0\(7),
      Q => ones(7),
      R => \^sr\(0)
    );
packet_seen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CEEE0000"
    )
        port map (
      I0 => packet_seen,
      I1 => packet_valid,
      I2 => packet_seen_reg_0,
      I3 => packet_seen_reg_1,
      I4 => s00_axi_aresetn,
      I5 => \distance_reg[0]_0\,
      O => packet_seen_reg
    );
packet_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \^byte_pos\(1),
      I1 => \^byte_pos\(2),
      I2 => \^byte_pos\(0),
      I3 => packet_valid_reg_0,
      I4 => \^sr\(0),
      I5 => packet_valid_reg_1,
      O => packet_valid_i_1_n_0
    );
packet_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => packet_valid_i_1_n_0,
      Q => packet_valid,
      R => '0'
    );
rx_ready_clr_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rx_ready_clr0,
      Q => rx_ready_clr,
      R => \^sr\(0)
    );
rx_ready_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rx_ready,
      Q => \^rx_ready_d\,
      R => \^sr\(0)
    );
\tenth[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \FSM_sequential_byte_pos_reg[1]_0\,
      I1 => \^byte_pos\(1),
      I2 => \^byte_pos\(0),
      I3 => rx_ready,
      I4 => \^rx_ready_d\,
      O => \tenth[6]_i_1_n_0\
    );
\tenth_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \tenth[6]_i_1_n_0\,
      D => \ones_reg[7]_0\(0),
      Q => distance31_in(3),
      R => \^sr\(0)
    );
\tenth_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \tenth[6]_i_1_n_0\,
      D => \ones_reg[7]_0\(1),
      Q => distance31_in(4),
      R => \^sr\(0)
    );
\tenth_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \tenth[6]_i_1_n_0\,
      D => \ones_reg[7]_0\(2),
      Q => distance31_in(5),
      R => \^sr\(0)
    );
\tenth_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \tenth[6]_i_1_n_0\,
      D => \ones_reg[7]_0\(3),
      Q => distance31_in(6),
      R => \^sr\(0)
    );
\tenth_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \tenth[6]_i_1_n_0\,
      D => \ones_reg[7]_0\(4),
      Q => distance31_in(7),
      R => \^sr\(0)
    );
\tenth_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \tenth[6]_i_1_n_0\,
      D => \ones_reg[7]_0\(5),
      Q => \tenth_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\tenth_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \tenth[6]_i_1_n_0\,
      D => \ones_reg[7]_0\(6),
      Q => \tenth_reg_n_0_[6]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver is
  port (
    rx_ready : out STD_LOGIC;
    \FSM_sequential_byte_pos_reg[1]\ : out STD_LOGIC;
    \data_reg[2]_0\ : out STD_LOGIC;
    \data_reg[7]_0\ : out STD_LOGIC;
    \data_reg[4]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready_clr0 : out STD_LOGIC;
    \data_reg[2]_1\ : out STD_LOGIC;
    \data_reg[6]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sensor_tx : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rxclk_en : in STD_LOGIC;
    byte_pos : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_ready_d : in STD_LOGIC;
    rx_ready_clr : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver is
  signal \FSM_sequential_byte_pos[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_byte_pos[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_byte_pos[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \bit_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_pos[3]_i_2_n_0\ : STD_LOGIC;
  signal \bit_pos[3]_i_3_n_0\ : STD_LOGIC;
  signal \bit_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_pos_reg_n_0_[3]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \^data_reg[2]_0\ : STD_LOGIC;
  signal \^data_reg[4]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^data_reg[6]_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ready_i_1_n_0 : STD_LOGIC;
  signal \^rx_ready\ : STD_LOGIC;
  signal sample_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sample_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \sample_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_count_reg_n_0_[3]\ : STD_LOGIC;
  signal scratch : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \scratch[0]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[1]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[2]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[3]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[3]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[4]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[4]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[5]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[5]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[6]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[6]_i_3_n_0\ : STD_LOGIC;
  signal \scratch[7]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[7]_i_2_n_0\ : STD_LOGIC;
  signal \scratch_reg_n_0_[0]\ : STD_LOGIC;
  signal \scratch_reg_n_0_[1]\ : STD_LOGIC;
  signal \scratch_reg_n_0_[2]\ : STD_LOGIC;
  signal \scratch_reg_n_0_[3]\ : STD_LOGIC;
  signal \scratch_reg_n_0_[4]\ : STD_LOGIC;
  signal \scratch_reg_n_0_[5]\ : STD_LOGIC;
  signal \scratch_reg_n_0_[6]\ : STD_LOGIC;
  signal \scratch_reg_n_0_[7]\ : STD_LOGIC;
  signal sync_rx1 : STD_LOGIC;
  signal sync_rx2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_byte_pos[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_3\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "RX_STATE_DATA:01,RX_STATE_STOP:10,RX_STATE_START:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "RX_STATE_DATA:01,RX_STATE_STOP:10,RX_STATE_START:00";
  attribute SOFT_HLUTNM of \bit_pos[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_pos[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \distance[7]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ones[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of packet_valid_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sample_count[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sample_count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \scratch[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \scratch[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \scratch[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tenth[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tenth[6]_i_2\ : label is "soft_lutpair11";
begin
  \data_reg[2]_0\ <= \^data_reg[2]_0\;
  \data_reg[4]_0\(7 downto 0) <= \^data_reg[4]_0\(7 downto 0);
  \data_reg[6]_0\ <= \^data_reg[6]_0\;
  rx_ready <= \^rx_ready\;
\FSM_sequential_byte_pos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FF0000F800"
    )
        port map (
      I0 => \^data_reg[2]_0\,
      I1 => byte_pos(1),
      I2 => \FSM_sequential_byte_pos[0]_i_2_n_0\,
      I3 => \^rx_ready\,
      I4 => rx_ready_d,
      I5 => byte_pos(0),
      O => \FSM_sequential_byte_pos_reg[1]\
    );
\FSM_sequential_byte_pos[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^data_reg[4]_0\(1),
      I1 => \^data_reg[4]_0\(0),
      I2 => byte_pos(2),
      I3 => byte_pos(1),
      I4 => byte_pos(0),
      I5 => \FSM_sequential_byte_pos[0]_i_3_n_0\,
      O => \FSM_sequential_byte_pos[0]_i_2_n_0\
    );
\FSM_sequential_byte_pos[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => data(4),
      I1 => data(5),
      I2 => \^data_reg[4]_0\(2),
      I3 => \^data_reg[4]_0\(3),
      I4 => data(7),
      I5 => data(6),
      O => \FSM_sequential_byte_pos[0]_i_3_n_0\
    );
\FSM_sequential_byte_pos[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015500000000"
    )
        port map (
      I0 => \FSM_sequential_byte_pos[2]_i_3_n_0\,
      I1 => \^data_reg[4]_0\(2),
      I2 => \^data_reg[4]_0\(1),
      I3 => \^data_reg[4]_0\(3),
      I4 => byte_pos(2),
      I5 => \^data_reg[6]_0\,
      O => \^data_reg[2]_0\
    );
\FSM_sequential_byte_pos[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data(4),
      I1 => data(5),
      O => \FSM_sequential_byte_pos[2]_i_3_n_0\
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00001010"
    )
        port map (
      I0 => sync_rx2,
      I1 => \sample_count_reg_n_0_[3]\,
      I2 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I4 => current_state(1),
      I5 => current_state(0),
      O => next_state(0)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \sample_count_reg_n_0_[2]\,
      I1 => \sample_count_reg_n_0_[1]\,
      I2 => \sample_count_reg_n_0_[0]\,
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \bit_pos_reg_n_0_[3]\,
      I2 => \bit_pos_reg_n_0_[2]\,
      I3 => \bit_pos_reg_n_0_[0]\,
      I4 => \bit_pos_reg_n_0_[1]\,
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202420202"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I3 => \bit_pos_reg_n_0_[3]\,
      I4 => \bit_pos_reg_n_0_[2]\,
      I5 => \FSM_sequential_current_state[1]_i_3_n_0\,
      O => next_state(1)
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \sample_count_reg_n_0_[1]\,
      I1 => \sample_count_reg_n_0_[0]\,
      I2 => \sample_count_reg_n_0_[3]\,
      I3 => \sample_count_reg_n_0_[2]\,
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_pos_reg_n_0_[0]\,
      I1 => \bit_pos_reg_n_0_[1]\,
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rxclk_en,
      D => next_state(0),
      Q => current_state(0),
      R => SR(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rxclk_en,
      D => next_state(1),
      Q => current_state(1),
      R => SR(0)
    );
\bit_pos[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0232"
    )
        port map (
      I0 => sync_rx2,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => \bit_pos_reg_n_0_[0]\,
      O => \bit_pos[0]_i_1_n_0\
    );
\bit_pos[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04545404"
    )
        port map (
      I0 => current_state(1),
      I1 => sync_rx2,
      I2 => current_state(0),
      I3 => \bit_pos_reg_n_0_[0]\,
      I4 => \bit_pos_reg_n_0_[1]\,
      O => \bit_pos[1]_i_1_n_0\
    );
\bit_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0232323232020202"
    )
        port map (
      I0 => sync_rx2,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => \bit_pos_reg_n_0_[0]\,
      I4 => \bit_pos_reg_n_0_[1]\,
      I5 => \bit_pos_reg_n_0_[2]\,
      O => \bit_pos[2]_i_1_n_0\
    );
\bit_pos[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAEAAA"
    )
        port map (
      I0 => \bit_pos[3]_i_3_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I2 => rxclk_en,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \bit_pos[3]_i_1_n_0\
    );
\bit_pos[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6FFA600"
    )
        port map (
      I0 => \bit_pos_reg_n_0_[3]\,
      I1 => \bit_pos_reg_n_0_[2]\,
      I2 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I3 => current_state(0),
      I4 => sync_rx2,
      I5 => current_state(1),
      O => \bit_pos[3]_i_2_n_0\
    );
\bit_pos[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_state(0),
      I1 => sync_rx2,
      I2 => \sample_count_reg_n_0_[3]\,
      I3 => current_state(1),
      I4 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I5 => rxclk_en,
      O => \bit_pos[3]_i_3_n_0\
    );
\bit_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_pos[3]_i_1_n_0\,
      D => \bit_pos[0]_i_1_n_0\,
      Q => \bit_pos_reg_n_0_[0]\,
      R => SR(0)
    );
\bit_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_pos[3]_i_1_n_0\,
      D => \bit_pos[1]_i_1_n_0\,
      Q => \bit_pos_reg_n_0_[1]\,
      R => SR(0)
    );
\bit_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_pos[3]_i_1_n_0\,
      D => \bit_pos[2]_i_1_n_0\,
      Q => \bit_pos_reg_n_0_[2]\,
      R => SR(0)
    );
\bit_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_pos[3]_i_1_n_0\,
      D => \bit_pos[3]_i_2_n_0\,
      Q => \bit_pos_reg_n_0_[3]\,
      R => SR(0)
    );
\data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => rxclk_en,
      I1 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => sync_rx2,
      O => \data[7]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[0]\,
      Q => \^data_reg[4]_0\(0),
      R => SR(0)
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[1]\,
      Q => \^data_reg[4]_0\(1),
      R => SR(0)
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[2]\,
      Q => \^data_reg[4]_0\(2),
      R => SR(0)
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[3]\,
      Q => \^data_reg[4]_0\(3),
      R => SR(0)
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[4]\,
      Q => data(4),
      R => SR(0)
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[5]\,
      Q => data(5),
      R => SR(0)
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[6]\,
      Q => data(6),
      R => SR(0)
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => \scratch_reg_n_0_[7]\,
      Q => data(7),
      R => SR(0)
    );
\distance[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data(6),
      I1 => data(7),
      O => \^data_reg[6]_0\
    );
\distance[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \^data_reg[4]_0\(2),
      I1 => \^data_reg[4]_0\(3),
      I2 => \^data_reg[4]_0\(0),
      I3 => \^data_reg[4]_0\(1),
      I4 => data(5),
      I5 => data(4),
      O => \data_reg[2]_1\
    );
\ones[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F807"
    )
        port map (
      I0 => data(4),
      I1 => data(5),
      I2 => data(6),
      I3 => data(7),
      O => \^data_reg[4]_0\(7)
    );
packet_valid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => data(7),
      I1 => data(6),
      I2 => rx_ready_d,
      I3 => \^rx_ready\,
      O => \data_reg[7]_0\
    );
ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFFFFAAAAAAAA"
    )
        port map (
      I0 => \data[7]_i_1_n_0\,
      I1 => rxclk_en,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => rx_ready_clr,
      I5 => \^rx_ready\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^rx_ready\,
      R => SR(0)
    );
rx_ready_clr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rx_ready\,
      I1 => rx_ready_d,
      O => rx_ready_clr0
    );
\sample_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005B"
    )
        port map (
      I0 => current_state(1),
      I1 => sync_rx2,
      I2 => current_state(0),
      I3 => \sample_count_reg_n_0_[0]\,
      O => sample_count(0)
    );
\sample_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005B5B00"
    )
        port map (
      I0 => current_state(1),
      I1 => sync_rx2,
      I2 => current_state(0),
      I3 => \sample_count_reg_n_0_[1]\,
      I4 => \sample_count_reg_n_0_[0]\,
      O => sample_count(1)
    );
\sample_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005B5B5B5B000000"
    )
        port map (
      I0 => current_state(1),
      I1 => sync_rx2,
      I2 => current_state(0),
      I3 => \sample_count_reg_n_0_[0]\,
      I4 => \sample_count_reg_n_0_[1]\,
      I5 => \sample_count_reg_n_0_[2]\,
      O => sample_count(2)
    );
\sample_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5B00005A5B5B0000"
    )
        port map (
      I0 => current_state(0),
      I1 => sync_rx2,
      I2 => current_state(1),
      I3 => \sample_count[3]_i_2_n_0\,
      I4 => \sample_count_reg_n_0_[3]\,
      I5 => \sample_count_reg_n_0_[2]\,
      O => sample_count(3)
    );
\sample_count[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \sample_count_reg_n_0_[0]\,
      I1 => \sample_count_reg_n_0_[1]\,
      O => \sample_count[3]_i_2_n_0\
    );
\sample_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rxclk_en,
      D => sample_count(0),
      Q => \sample_count_reg_n_0_[0]\,
      R => SR(0)
    );
\sample_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rxclk_en,
      D => sample_count(1),
      Q => \sample_count_reg_n_0_[1]\,
      R => SR(0)
    );
\sample_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rxclk_en,
      D => sample_count(2),
      Q => \sample_count_reg_n_0_[2]\,
      R => SR(0)
    );
\sample_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rxclk_en,
      D => sample_count(3),
      Q => \sample_count_reg_n_0_[3]\,
      R => SR(0)
    );
\scratch[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => scratch(0),
      I1 => \bit_pos[3]_i_3_n_0\,
      I2 => \bit_pos_reg_n_0_[2]\,
      I3 => rxclk_en,
      I4 => \scratch[4]_i_2_n_0\,
      I5 => \scratch_reg_n_0_[0]\,
      O => \scratch[0]_i_1_n_0\
    );
\scratch[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => scratch(0),
      I1 => \bit_pos[3]_i_3_n_0\,
      I2 => \bit_pos_reg_n_0_[2]\,
      I3 => rxclk_en,
      I4 => \scratch[5]_i_2_n_0\,
      I5 => \scratch_reg_n_0_[1]\,
      O => \scratch[1]_i_1_n_0\
    );
\scratch[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => scratch(0),
      I1 => \bit_pos[3]_i_3_n_0\,
      I2 => \bit_pos_reg_n_0_[2]\,
      I3 => rxclk_en,
      I4 => \scratch[6]_i_3_n_0\,
      I5 => \scratch_reg_n_0_[2]\,
      O => \scratch[2]_i_1_n_0\
    );
\scratch[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F222F2F20222020"
    )
        port map (
      I0 => sync_rx2,
      I1 => current_state(1),
      I2 => \bit_pos[3]_i_3_n_0\,
      I3 => \scratch[3]_i_2_n_0\,
      I4 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I5 => \scratch_reg_n_0_[3]\,
      O => \scratch[3]_i_1_n_0\
    );
\scratch[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => \bit_pos_reg_n_0_[1]\,
      I1 => \bit_pos_reg_n_0_[0]\,
      I2 => \bit_pos_reg_n_0_[2]\,
      I3 => rxclk_en,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \scratch[3]_i_2_n_0\
    );
\scratch[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBBBBBA8888888"
    )
        port map (
      I0 => scratch(0),
      I1 => \bit_pos[3]_i_3_n_0\,
      I2 => \scratch[4]_i_2_n_0\,
      I3 => rxclk_en,
      I4 => \bit_pos_reg_n_0_[2]\,
      I5 => \scratch_reg_n_0_[4]\,
      O => \scratch[4]_i_1_n_0\
    );
\scratch[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \bit_pos_reg_n_0_[0]\,
      I2 => \bit_pos_reg_n_0_[1]\,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \scratch[4]_i_2_n_0\
    );
\scratch[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBBBBBA8888888"
    )
        port map (
      I0 => scratch(0),
      I1 => \bit_pos[3]_i_3_n_0\,
      I2 => \scratch[5]_i_2_n_0\,
      I3 => rxclk_en,
      I4 => \bit_pos_reg_n_0_[2]\,
      I5 => \scratch_reg_n_0_[5]\,
      O => \scratch[5]_i_1_n_0\
    );
\scratch[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \bit_pos_reg_n_0_[1]\,
      I2 => \bit_pos_reg_n_0_[0]\,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \scratch[5]_i_2_n_0\
    );
\scratch[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBBBBBA8888888"
    )
        port map (
      I0 => scratch(0),
      I1 => \bit_pos[3]_i_3_n_0\,
      I2 => rxclk_en,
      I3 => \bit_pos_reg_n_0_[2]\,
      I4 => \scratch[6]_i_3_n_0\,
      I5 => \scratch_reg_n_0_[6]\,
      O => \scratch[6]_i_1_n_0\
    );
\scratch[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sync_rx2,
      I1 => current_state(1),
      O => scratch(0)
    );
\scratch[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \bit_pos_reg_n_0_[0]\,
      I2 => \bit_pos_reg_n_0_[1]\,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \scratch[6]_i_3_n_0\
    );
\scratch[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F222F2F20222020"
    )
        port map (
      I0 => sync_rx2,
      I1 => current_state(1),
      I2 => \bit_pos[3]_i_3_n_0\,
      I3 => \scratch[7]_i_2_n_0\,
      I4 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I5 => \scratch_reg_n_0_[7]\,
      O => \scratch[7]_i_1_n_0\
    );
\scratch[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \bit_pos_reg_n_0_[2]\,
      I1 => \bit_pos_reg_n_0_[0]\,
      I2 => \bit_pos_reg_n_0_[1]\,
      I3 => rxclk_en,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \scratch[7]_i_2_n_0\
    );
\scratch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[0]_i_1_n_0\,
      Q => \scratch_reg_n_0_[0]\,
      R => SR(0)
    );
\scratch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[1]_i_1_n_0\,
      Q => \scratch_reg_n_0_[1]\,
      R => SR(0)
    );
\scratch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[2]_i_1_n_0\,
      Q => \scratch_reg_n_0_[2]\,
      R => SR(0)
    );
\scratch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[3]_i_1_n_0\,
      Q => \scratch_reg_n_0_[3]\,
      R => SR(0)
    );
\scratch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[4]_i_1_n_0\,
      Q => \scratch_reg_n_0_[4]\,
      R => SR(0)
    );
\scratch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[5]_i_1_n_0\,
      Q => \scratch_reg_n_0_[5]\,
      R => SR(0)
    );
\scratch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[6]_i_1_n_0\,
      Q => \scratch_reg_n_0_[6]\,
      R => SR(0)
    );
\scratch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scratch[7]_i_1_n_0\,
      Q => \scratch_reg_n_0_[7]\,
      R => SR(0)
    );
sync_rx1_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sensor_tx,
      Q => sync_rx1,
      S => SR(0)
    );
sync_rx2_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_rx1,
      Q => sync_rx2,
      S => SR(0)
    );
\tenth[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data(4),
      O => \^data_reg[4]_0\(4)
    );
\tenth[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data(4),
      I1 => data(5),
      O => \^data_reg[4]_0\(5)
    );
\tenth[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => data(4),
      I1 => data(5),
      I2 => data(6),
      O => \^data_reg[4]_0\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart is
  port (
    sensor_rx : out STD_LOGIC;
    packet_seen_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    distance : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    sensor_tx : in STD_LOGIC;
    sensor_out_reg : in STD_LOGIC;
    packet_seen : in STD_LOGIC;
    packet_seen_reg_0 : in STD_LOGIC;
    packet_seen_reg_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \distance_reg[0]\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart is
  signal byte_pos : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hundreth0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal packet_parser_inst_n_1 : STD_LOGIC;
  signal receiver_inst_n_1 : STD_LOGIC;
  signal receiver_inst_n_13 : STD_LOGIC;
  signal receiver_inst_n_14 : STD_LOGIC;
  signal receiver_inst_n_2 : STD_LOGIC;
  signal receiver_inst_n_3 : STD_LOGIC;
  signal rx_ready : STD_LOGIC;
  signal rx_ready_clr : STD_LOGIC;
  signal rx_ready_clr0 : STD_LOGIC;
  signal rx_ready_d : STD_LOGIC;
  signal rxclk_en : STD_LOGIC;
begin
baudrate_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate
     port map (
      SR(0) => packet_parser_inst_n_1,
      \rx_acc_reg[0]_0\ => \distance_reg[0]\,
      rxclk_en => rxclk_en,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
ctrl_pmod_rx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_pmod_rx
     port map (
      SR(0) => packet_parser_inst_n_1,
      s00_axi_aclk => s00_axi_aclk,
      sensor_out_reg_0 => sensor_out_reg,
      sensor_rx => sensor_rx
    );
packet_parser_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packet_parser
     port map (
      D(7 downto 0) => D(7 downto 0),
      \FSM_sequential_byte_pos_reg[0]_0\ => receiver_inst_n_1,
      \FSM_sequential_byte_pos_reg[1]_0\ => receiver_inst_n_2,
      SR(0) => packet_parser_inst_n_1,
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      byte_pos(2 downto 0) => byte_pos(2 downto 0),
      distance(7 downto 0) => distance(7 downto 0),
      \distance_reg[0]_0\ => \distance_reg[0]\,
      \distance_reg[0]_1\ => receiver_inst_n_14,
      \ones_reg[7]_0\(7 downto 4) => hundreth0(7 downto 4),
      \ones_reg[7]_0\(3 downto 0) => data(3 downto 0),
      packet_seen => packet_seen,
      packet_seen_reg => packet_seen_reg,
      packet_seen_reg_0 => packet_seen_reg_0,
      packet_seen_reg_1 => packet_seen_reg_1,
      packet_valid_reg_0 => receiver_inst_n_3,
      packet_valid_reg_1 => receiver_inst_n_13,
      rx_ready => rx_ready,
      rx_ready_clr => rx_ready_clr,
      rx_ready_clr0 => rx_ready_clr0,
      rx_ready_d => rx_ready_d,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
receiver_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver
     port map (
      \FSM_sequential_byte_pos_reg[1]\ => receiver_inst_n_1,
      SR(0) => packet_parser_inst_n_1,
      byte_pos(2 downto 0) => byte_pos(2 downto 0),
      \data_reg[2]_0\ => receiver_inst_n_2,
      \data_reg[2]_1\ => receiver_inst_n_13,
      \data_reg[4]_0\(7 downto 4) => hundreth0(7 downto 4),
      \data_reg[4]_0\(3 downto 0) => data(3 downto 0),
      \data_reg[6]_0\ => receiver_inst_n_14,
      \data_reg[7]_0\ => receiver_inst_n_3,
      rx_ready => rx_ready,
      rx_ready_clr => rx_ready_clr,
      rx_ready_clr0 => rx_ready_clr0,
      rx_ready_d => rx_ready_d,
      rxclk_en => rxclk_en,
      s00_axi_aclk => s00_axi_aclk,
      sensor_tx => sensor_tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0_S00_AXI is
  port (
    distance : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sensor_rx : out STD_LOGIC;
    \slv_reg2_reg[0]_0\ : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    sensor_tx : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal packet_seen : STD_LOGIC;
  signal packet_seen_i_2_n_0 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_4_n_0\ : STD_LOGIC;
  signal \^slv_reg2_reg[0]_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal sw_rst_i_1_n_0 : STD_LOGIC;
  signal sw_rst_i_2_n_0 : STD_LOGIC;
  signal sw_rst_reg_n_0 : STD_LOGIC;
  signal uart_inst_n_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of packet_seen_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of sw_rst_i_2 : label is "soft_lutpair17";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  \slv_reg2_reg[0]_0\ <= \^slv_reg2_reg[0]_0\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \slv_reg2[0]_i_1_n_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => \slv_reg2[0]_i_1_n_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in_0(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in_0(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in_0(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => \slv_reg2[0]_i_1_n_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => \slv_reg2[0]_i_1_n_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_awvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0338030800380008"
    )
        port map (
      I0 => sw_rst_reg_n_0,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \^slv_reg2_reg[0]_0\,
      I5 => packet_seen,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => reg_data_out(30)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(8),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \slv_reg2[0]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \slv_reg2[0]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \slv_reg2[0]_i_1_n_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => \slv_reg2[0]_i_1_n_0\
    );
packet_seen_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wdata(0),
      I4 => s00_axi_wstrb(0),
      O => packet_seen_i_2_n_0
    );
packet_seen_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => uart_inst_n_1,
      Q => packet_seen,
      R => '0'
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg2[0]_i_3_n_0\,
      I2 => \slv_reg2[0]_i_4_n_0\,
      I3 => \^slv_reg2_reg[0]_0\,
      O => \slv_reg2[0]_i_2_n_0\
    );
\slv_reg2[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg2[0]_i_3_n_0\
    );
\slv_reg2[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg2[0]_i_4_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg2[0]_i_2_n_0\,
      Q => \^slv_reg2_reg[0]_0\,
      R => \slv_reg2[0]_i_1_n_0\
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
sw_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => sw_rst_i_2_n_0,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_aresetn,
      I5 => \slv_reg2[0]_i_4_n_0\,
      O => sw_rst_i_1_n_0
    );
sw_rst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_wdata(0),
      O => sw_rst_i_2_n_0
    );
sw_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sw_rst_i_1_n_0,
      Q => sw_rst_reg_n_0,
      R => '0'
    );
uart_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart
     port map (
      D(7 downto 0) => reg_data_out(7 downto 0),
      \axi_rdata_reg[0]\ => \axi_rdata[0]_i_2_n_0\,
      distance(7 downto 0) => distance(7 downto 0),
      \distance_reg[0]\ => sw_rst_reg_n_0,
      packet_seen => packet_seen,
      packet_seen_reg => uart_inst_n_1,
      packet_seen_reg_0 => packet_seen_i_2_n_0,
      packet_seen_reg_1 => \slv_reg2[0]_i_4_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sel0(2 downto 0) => sel0(2 downto 0),
      sensor_out_reg => \^slv_reg2_reg[0]_0\,
      sensor_rx => sensor_rx,
      sensor_tx => sensor_tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0 is
  port (
    distance : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sensor_rx : out STD_LOGIC;
    \slv_reg2_reg[0]\ : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    sensor_tx : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0 is
begin
UART_MAXSONAR_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      distance(7 downto 0) => distance(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(8 downto 0) => s00_axi_rdata(8 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(0) => s00_axi_wdata(0),
      s00_axi_wstrb(0) => s00_axi_wstrb(0),
      s00_axi_wvalid => s00_axi_wvalid,
      sensor_rx => sensor_rx,
      sensor_tx => sensor_tx,
      \slv_reg2_reg[0]_0\ => \slv_reg2_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sensor_tx : in STD_LOGIC;
    distance : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sensor_rx : out STD_LOGIC;
    read_en : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Proximity_Alarm_bd_UART_MAXSONAR_0_0,UART_MAXSONAR_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "UART_MAXSONAR_v1_0,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Proximity_Alarm_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Proximity_Alarm_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \<const0>\;
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10) <= \<const0>\;
  s00_axi_rdata(9) <= \<const0>\;
  s00_axi_rdata(8) <= \<const0>\;
  s00_axi_rdata(7 downto 0) <= \^s00_axi_rdata\(7 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      distance(7 downto 0) => distance(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(8) => \^s00_axi_rdata\(28),
      s00_axi_rdata(7 downto 0) => \^s00_axi_rdata\(7 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(0) => s00_axi_wdata(0),
      s00_axi_wstrb(0) => s00_axi_wstrb(0),
      s00_axi_wvalid => s00_axi_wvalid,
      sensor_rx => sensor_rx,
      sensor_tx => sensor_tx,
      \slv_reg2_reg[0]\ => read_en
    );
end STRUCTURE;
