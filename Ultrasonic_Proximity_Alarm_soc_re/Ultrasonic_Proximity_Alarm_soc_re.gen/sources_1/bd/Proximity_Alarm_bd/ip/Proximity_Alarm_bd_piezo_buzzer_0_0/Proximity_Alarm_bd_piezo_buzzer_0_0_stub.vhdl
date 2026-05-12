-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun May  3 18:14:19 2026
-- Host        : Daddy_RodrigoLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Ultrasonic_Proximity_Alarm_soc_re.gen/sources_1/bd/Proximity_Alarm_bd/ip/Proximity_Alarm_bd_piezo_buzzer_0_0/Proximity_Alarm_bd_piezo_buzzer_0_0_stub.vhdl
-- Design      : Proximity_Alarm_bd_piezo_buzzer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Proximity_Alarm_bd_piezo_buzzer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    read_en : in STD_LOGIC;
    distance : in STD_LOGIC_VECTOR ( 7 downto 0 );
    buzzer_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end Proximity_Alarm_bd_piezo_buzzer_0_0;

architecture stub of Proximity_Alarm_bd_piezo_buzzer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,sys_rst_n,read_en,distance[7:0],buzzer_out[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "piezo_buzzer,Vivado 2023.1";
begin
end;
