// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun May  3 18:14:19 2026
// Host        : Daddy_RodrigoLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/ECE520_SOC/ECE520_SandBox/Ultrasonic_Proximity_Alarm_soc_re/Ultrasonic_Proximity_Alarm_soc_re.gen/sources_1/bd/Proximity_Alarm_bd/ip/Proximity_Alarm_bd_piezo_buzzer_0_0/Proximity_Alarm_bd_piezo_buzzer_0_0_stub.v
// Design      : Proximity_Alarm_bd_piezo_buzzer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "piezo_buzzer,Vivado 2023.1" *)
module Proximity_Alarm_bd_piezo_buzzer_0_0(clk, sys_rst_n, read_en, distance, buzzer_out)
/* synthesis syn_black_box black_box_pad_pin="sys_rst_n,read_en,distance[7:0],buzzer_out[1:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input sys_rst_n;
  input read_en;
  input [7:0]distance;
  output [1:0]buzzer_out;
endmodule
