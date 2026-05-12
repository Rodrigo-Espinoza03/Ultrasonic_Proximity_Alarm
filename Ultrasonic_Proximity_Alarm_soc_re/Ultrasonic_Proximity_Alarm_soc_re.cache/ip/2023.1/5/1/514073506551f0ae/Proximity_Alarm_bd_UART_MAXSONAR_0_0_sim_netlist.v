// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun May  3 16:27:14 2026
// Host        : Daddy_RodrigoLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Proximity_Alarm_bd_UART_MAXSONAR_0_0_sim_netlist.v
// Design      : Proximity_Alarm_bd_UART_MAXSONAR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Proximity_Alarm_bd_UART_MAXSONAR_0_0,UART_MAXSONAR_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "UART_MAXSONAR_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sensor_tx,
    distance,
    sensor_rx,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input sensor_tx;
  output [7:0]distance;
  output sensor_rx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Proximity_Alarm_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Proximity_Alarm_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire [7:0]distance;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [28:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sensor_rx;
  wire sensor_tx;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13] = \<const0> ;
  assign s00_axi_rdata[12] = \<const0> ;
  assign s00_axi_rdata[11] = \<const0> ;
  assign s00_axi_rdata[10] = \<const0> ;
  assign s00_axi_rdata[9] = \<const0> ;
  assign s00_axi_rdata[8] = \<const0> ;
  assign s00_axi_rdata[7:0] = \^s00_axi_rdata [7:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .distance(distance),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata({\^s00_axi_rdata [28],\^s00_axi_rdata [7:0]}),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[0]),
        .s00_axi_wstrb(s00_axi_wstrb[0]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sensor_rx(sensor_rx),
        .sensor_tx(sensor_tx));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0
   (distance,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    sensor_rx,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    sensor_tx,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [7:0]distance;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [8:0]s00_axi_rdata;
  output sensor_rx;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input sensor_tx;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [0:0]s00_axi_wdata;
  input [0:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]distance;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [8:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire [0:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sensor_rx;
  wire sensor_tx;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0_S00_AXI UART_MAXSONAR_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .distance(distance),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sensor_rx(sensor_rx),
        .sensor_tx(sensor_tx));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_MAXSONAR_v1_0_S00_AXI
   (distance,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    sensor_rx,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    sensor_tx,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [7:0]distance;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [8:0]s00_axi_rdata;
  output sensor_rx;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input sensor_tx;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [0:0]s00_axi_wdata;
  input [0:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [7:0]distance;
  wire [2:0]p_0_in_0;
  wire packet_seen;
  wire packet_seen_i_2_n_0;
  wire [30:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [8:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire [0:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire sensor_rx;
  wire sensor_tx;
  wire [0:0]slv_reg2;
  wire \slv_reg2[0]_i_1_n_0 ;
  wire \slv_reg2[0]_i_2_n_0 ;
  wire slv_reg_rden__0;
  wire sw_rst_i_1_n_0;
  wire sw_rst_i_2_n_0;
  wire sw_rst_i_3_n_0;
  wire sw_rst_reg_n_0;
  wire uart_inst_n_1;

  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in_0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in_0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in_0[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_awvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0338030800380008)) 
    \axi_rdata[0]_i_2 
       (.I0(sw_rst_reg_n_0),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(slv_reg2),
        .I5(packet_seen),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(reg_data_out[30]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    packet_seen_i_2
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wdata),
        .I4(s00_axi_wstrb),
        .O(packet_seen_i_2_n_0));
  FDRE packet_seen_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(uart_inst_n_1),
        .Q(packet_seen),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg2[0]_i_1 
       (.I0(s00_axi_wdata),
        .I1(\slv_reg2[0]_i_2_n_0 ),
        .I2(sw_rst_i_3_n_0),
        .I3(slv_reg2),
        .O(\slv_reg2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg2[0]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(s00_axi_wstrb),
        .O(\slv_reg2[0]_i_2_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[0]_i_1_n_0 ),
        .Q(slv_reg2),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    sw_rst_i_1
       (.I0(sw_rst_i_2_n_0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_aresetn),
        .I5(sw_rst_i_3_n_0),
        .O(sw_rst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sw_rst_i_2
       (.I0(s00_axi_wstrb),
        .I1(s00_axi_wdata),
        .O(sw_rst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    sw_rst_i_3
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(sw_rst_i_3_n_0));
  FDRE sw_rst_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_i_1_n_0),
        .Q(sw_rst_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart uart_inst
       (.D(reg_data_out[7:0]),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_2_n_0 ),
        .distance(distance),
        .\distance_reg[0] (sw_rst_reg_n_0),
        .packet_seen(packet_seen),
        .packet_seen_reg(uart_inst_n_1),
        .packet_seen_reg_0(packet_seen_i_2_n_0),
        .packet_seen_reg_1(sw_rst_i_3_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sel0(sel0),
        .sensor_rx(sensor_rx),
        .sensor_tx(sensor_tx),
        .slv_reg2(slv_reg2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate
   (rxclk_en,
    SR,
    s00_axi_aclk,
    s00_axi_aresetn,
    \rx_acc_reg[0]_0 );
  output rxclk_en;
  input [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input \rx_acc_reg[0]_0 ;

  wire Rxclk_en;
  wire Rxclk_en_i_2_n_0;
  wire [0:0]SR;
  wire [8:0]p_0_in;
  wire \rx_acc[8]_i_1_n_0 ;
  wire \rx_acc[8]_i_3_n_0 ;
  wire [8:0]rx_acc_reg;
  wire \rx_acc_reg[0]_0 ;
  wire rxclk_en;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  LUT4 #(
    .INIT(16'h0400)) 
    Rxclk_en_i_1
       (.I0(rx_acc_reg[0]),
        .I1(rx_acc_reg[2]),
        .I2(rx_acc_reg[1]),
        .I3(Rxclk_en_i_2_n_0),
        .O(Rxclk_en));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    Rxclk_en_i_2
       (.I0(rx_acc_reg[6]),
        .I1(rx_acc_reg[5]),
        .I2(rx_acc_reg[3]),
        .I3(rx_acc_reg[4]),
        .I4(rx_acc_reg[7]),
        .I5(rx_acc_reg[8]),
        .O(Rxclk_en_i_2_n_0));
  FDRE Rxclk_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Rxclk_en),
        .Q(rxclk_en),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_acc[0]_i_1 
       (.I0(rx_acc_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_acc[1]_i_1 
       (.I0(rx_acc_reg[0]),
        .I1(rx_acc_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rx_acc[2]_i_1 
       (.I0(rx_acc_reg[1]),
        .I1(rx_acc_reg[0]),
        .I2(rx_acc_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rx_acc[3]_i_1 
       (.I0(rx_acc_reg[2]),
        .I1(rx_acc_reg[0]),
        .I2(rx_acc_reg[1]),
        .I3(rx_acc_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rx_acc[4]_i_1 
       (.I0(rx_acc_reg[3]),
        .I1(rx_acc_reg[1]),
        .I2(rx_acc_reg[0]),
        .I3(rx_acc_reg[2]),
        .I4(rx_acc_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rx_acc[5]_i_1 
       (.I0(rx_acc_reg[4]),
        .I1(rx_acc_reg[2]),
        .I2(rx_acc_reg[0]),
        .I3(rx_acc_reg[1]),
        .I4(rx_acc_reg[3]),
        .I5(rx_acc_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_acc[6]_i_1 
       (.I0(\rx_acc[8]_i_3_n_0 ),
        .I1(rx_acc_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \rx_acc[7]_i_1 
       (.I0(rx_acc_reg[6]),
        .I1(\rx_acc[8]_i_3_n_0 ),
        .I2(rx_acc_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0020FFFF)) 
    \rx_acc[8]_i_1 
       (.I0(Rxclk_en_i_2_n_0),
        .I1(rx_acc_reg[1]),
        .I2(rx_acc_reg[2]),
        .I3(rx_acc_reg[0]),
        .I4(s00_axi_aresetn),
        .I5(\rx_acc_reg[0]_0 ),
        .O(\rx_acc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \rx_acc[8]_i_2 
       (.I0(rx_acc_reg[7]),
        .I1(\rx_acc[8]_i_3_n_0 ),
        .I2(rx_acc_reg[6]),
        .I3(rx_acc_reg[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rx_acc[8]_i_3 
       (.I0(rx_acc_reg[4]),
        .I1(rx_acc_reg[2]),
        .I2(rx_acc_reg[0]),
        .I3(rx_acc_reg[1]),
        .I4(rx_acc_reg[3]),
        .I5(rx_acc_reg[5]),
        .O(\rx_acc[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(rx_acc_reg[0]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(rx_acc_reg[1]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(rx_acc_reg[2]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(rx_acc_reg[3]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(rx_acc_reg[4]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(rx_acc_reg[5]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(rx_acc_reg[6]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(rx_acc_reg[7]),
        .R(\rx_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_acc_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(rx_acc_reg[8]),
        .R(\rx_acc[8]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_pmod_rx
   (sensor_rx,
    SR,
    slv_reg2,
    s00_axi_aclk);
  output sensor_rx;
  input [0:0]SR;
  input [0:0]slv_reg2;
  input s00_axi_aclk;

  wire [0:0]SR;
  wire s00_axi_aclk;
  wire sensor_rx;
  wire [0:0]slv_reg2;

  FDRE sensor_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg2),
        .Q(sensor_rx),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packet_parser
   (rx_ready_d,
    SR,
    rx_ready_clr,
    byte_pos,
    packet_seen_reg,
    D,
    distance,
    rx_ready,
    s00_axi_aclk,
    rx_ready_clr0,
    \FSM_sequential_byte_pos_reg[1]_0 ,
    packet_seen,
    packet_seen_reg_0,
    packet_seen_reg_1,
    s00_axi_aresetn,
    \distance_reg[0]_0 ,
    packet_valid_reg_0,
    packet_valid_reg_1,
    \distance_reg[0]_1 ,
    sel0,
    \axi_rdata_reg[0] ,
    \FSM_sequential_byte_pos_reg[0]_0 ,
    \ones_reg[7]_0 );
  output rx_ready_d;
  output [0:0]SR;
  output rx_ready_clr;
  output [2:0]byte_pos;
  output packet_seen_reg;
  output [7:0]D;
  output [7:0]distance;
  input rx_ready;
  input s00_axi_aclk;
  input rx_ready_clr0;
  input \FSM_sequential_byte_pos_reg[1]_0 ;
  input packet_seen;
  input packet_seen_reg_0;
  input packet_seen_reg_1;
  input s00_axi_aresetn;
  input \distance_reg[0]_0 ;
  input packet_valid_reg_0;
  input packet_valid_reg_1;
  input \distance_reg[0]_1 ;
  input [2:0]sel0;
  input \axi_rdata_reg[0] ;
  input \FSM_sequential_byte_pos_reg[0]_0 ;
  input [7:0]\ones_reg[7]_0 ;

  wire [7:0]D;
  wire \FSM_sequential_byte_pos[1]_i_1_n_0 ;
  wire \FSM_sequential_byte_pos[2]_i_1_n_0 ;
  wire \FSM_sequential_byte_pos_reg[0]_0 ;
  wire \FSM_sequential_byte_pos_reg[1]_0 ;
  wire [0:0]SR;
  wire \axi_rdata_reg[0] ;
  wire [2:0]byte_pos;
  wire [7:0]distance;
  wire [7:3]distance31_in;
  wire [7:6]distance42_in;
  wire \distance[3]_i_2_n_0 ;
  wire \distance[3]_i_3_n_0 ;
  wire \distance[3]_i_4_n_0 ;
  wire \distance[3]_i_5_n_0 ;
  wire \distance[7]_i_10_n_0 ;
  wire \distance[7]_i_11_n_0 ;
  wire \distance[7]_i_12_n_0 ;
  wire \distance[7]_i_14_n_0 ;
  wire \distance[7]_i_15_n_0 ;
  wire \distance[7]_i_16_n_0 ;
  wire \distance[7]_i_18_n_0 ;
  wire \distance[7]_i_19_n_0 ;
  wire \distance[7]_i_20_n_0 ;
  wire \distance[7]_i_21_n_0 ;
  wire \distance[7]_i_22_n_0 ;
  wire \distance[7]_i_2_n_0 ;
  wire \distance[7]_i_6_n_0 ;
  wire \distance[7]_i_7_n_0 ;
  wire \distance[7]_i_8_n_0 ;
  wire \distance[7]_i_9_n_0 ;
  wire \distance_reg[0]_0 ;
  wire \distance_reg[0]_1 ;
  wire \distance_reg[3]_i_1_n_0 ;
  wire \distance_reg[3]_i_1_n_1 ;
  wire \distance_reg[3]_i_1_n_2 ;
  wire \distance_reg[3]_i_1_n_3 ;
  wire \distance_reg[3]_i_1_n_4 ;
  wire \distance_reg[3]_i_1_n_5 ;
  wire \distance_reg[3]_i_1_n_6 ;
  wire \distance_reg[3]_i_1_n_7 ;
  wire \distance_reg[7]_i_13_n_0 ;
  wire \distance_reg[7]_i_13_n_1 ;
  wire \distance_reg[7]_i_13_n_2 ;
  wire \distance_reg[7]_i_13_n_3 ;
  wire \distance_reg[7]_i_13_n_4 ;
  wire \distance_reg[7]_i_13_n_5 ;
  wire \distance_reg[7]_i_13_n_6 ;
  wire \distance_reg[7]_i_13_n_7 ;
  wire \distance_reg[7]_i_17_n_3 ;
  wire \distance_reg[7]_i_17_n_6 ;
  wire \distance_reg[7]_i_17_n_7 ;
  wire \distance_reg[7]_i_3_n_1 ;
  wire \distance_reg[7]_i_3_n_2 ;
  wire \distance_reg[7]_i_3_n_3 ;
  wire \distance_reg[7]_i_3_n_4 ;
  wire \distance_reg[7]_i_3_n_5 ;
  wire \distance_reg[7]_i_3_n_6 ;
  wire \distance_reg[7]_i_3_n_7 ;
  wire \hundreth[5]_i_1_n_0 ;
  wire \hundreth_reg_n_0_[2] ;
  wire \hundreth_reg_n_0_[3] ;
  wire \hundreth_reg_n_0_[4] ;
  wire \hundreth_reg_n_0_[5] ;
  wire [7:0]ones;
  wire \ones[7]_i_1_n_0 ;
  wire [7:0]\ones_reg[7]_0 ;
  wire packet_seen;
  wire packet_seen_reg;
  wire packet_seen_reg_0;
  wire packet_seen_reg_1;
  wire packet_valid;
  wire packet_valid_i_1_n_0;
  wire packet_valid_reg_0;
  wire packet_valid_reg_1;
  wire rx_ready;
  wire rx_ready_clr;
  wire rx_ready_clr0;
  wire rx_ready_d;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [2:0]sel0;
  wire \tenth[6]_i_1_n_0 ;
  wire \tenth_reg_n_0_[5] ;
  wire \tenth_reg_n_0_[6] ;
  wire [3:1]\NLW_distance_reg[7]_i_17_CO_UNCONNECTED ;
  wire [3:2]\NLW_distance_reg[7]_i_17_O_UNCONNECTED ;
  wire [3:3]\NLW_distance_reg[7]_i_3_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFF2F0080)) 
    \FSM_sequential_byte_pos[1]_i_1 
       (.I0(\FSM_sequential_byte_pos_reg[1]_0 ),
        .I1(byte_pos[0]),
        .I2(rx_ready),
        .I3(rx_ready_d),
        .I4(byte_pos[1]),
        .O(\FSM_sequential_byte_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FF00008000)) 
    \FSM_sequential_byte_pos[2]_i_1 
       (.I0(\FSM_sequential_byte_pos_reg[1]_0 ),
        .I1(byte_pos[1]),
        .I2(byte_pos[0]),
        .I3(rx_ready),
        .I4(rx_ready_d),
        .I5(byte_pos[2]),
        .O(\FSM_sequential_byte_pos[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDRE \FSM_sequential_byte_pos_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_byte_pos_reg[0]_0 ),
        .Q(byte_pos[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDRE \FSM_sequential_byte_pos_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_byte_pos[1]_i_1_n_0 ),
        .Q(byte_pos[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDRE \FSM_sequential_byte_pos_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_byte_pos[2]_i_1_n_0 ),
        .Q(byte_pos[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(distance[0]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(distance[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0083)) 
    \axi_rdata[2]_i_1 
       (.I0(distance[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[3]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(distance[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[4]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(distance[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[5]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(distance[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[6]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(distance[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[7]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(distance[7]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \distance[3]_i_2 
       (.I0(distance42_in[7]),
        .I1(\distance_reg[7]_i_13_n_6 ),
        .I2(distance31_in[5]),
        .O(\distance[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \distance[3]_i_3 
       (.I0(\distance_reg[7]_i_13_n_6 ),
        .I1(distance31_in[5]),
        .I2(distance42_in[7]),
        .I3(distance31_in[4]),
        .I4(\distance_reg[7]_i_13_n_7 ),
        .O(\distance[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \distance[3]_i_4 
       (.I0(\distance_reg[7]_i_13_n_7 ),
        .I1(distance31_in[4]),
        .I2(distance42_in[6]),
        .O(\distance[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[3]_i_5 
       (.I0(distance31_in[3]),
        .I1(ones[1]),
        .O(\distance[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \distance[7]_i_1 
       (.I0(\distance_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \distance[7]_i_10 
       (.I0(\distance[7]_i_14_n_0 ),
        .I1(\hundreth_reg_n_0_[4] ),
        .I2(distance42_in[6]),
        .I3(\distance_reg[7]_i_13_n_4 ),
        .I4(distance31_in[7]),
        .I5(\hundreth_reg_n_0_[3] ),
        .O(\distance[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \distance[7]_i_11 
       (.I0(\distance[7]_i_7_n_0 ),
        .I1(\hundreth_reg_n_0_[2] ),
        .I2(distance31_in[6]),
        .I3(\distance_reg[7]_i_13_n_5 ),
        .O(\distance[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \distance[7]_i_12 
       (.I0(\distance[7]_i_8_n_0 ),
        .I1(distance31_in[6]),
        .I2(\distance_reg[7]_i_13_n_5 ),
        .I3(\hundreth_reg_n_0_[2] ),
        .O(\distance[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \distance[7]_i_14 
       (.I0(distance42_in[7]),
        .I1(\distance_reg[7]_i_17_n_7 ),
        .I2(\tenth_reg_n_0_[5] ),
        .O(\distance[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \distance[7]_i_15 
       (.I0(\distance_reg[7]_i_13_n_4 ),
        .I1(distance31_in[7]),
        .I2(distance42_in[6]),
        .O(\distance[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \distance[7]_i_16 
       (.I0(\tenth_reg_n_0_[6] ),
        .I1(\distance_reg[7]_i_17_n_6 ),
        .I2(\hundreth_reg_n_0_[2] ),
        .I3(\hundreth_reg_n_0_[5] ),
        .O(\distance[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[7]_i_18 
       (.I0(ones[5]),
        .I1(distance31_in[5]),
        .O(\distance[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[7]_i_19 
       (.I0(ones[4]),
        .I1(distance31_in[4]),
        .O(\distance[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \distance[7]_i_2 
       (.I0(byte_pos[1]),
        .I1(byte_pos[2]),
        .I2(byte_pos[0]),
        .I3(\distance_reg[0]_1 ),
        .I4(rx_ready_clr0),
        .I5(packet_valid_reg_1),
        .O(\distance[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[7]_i_20 
       (.I0(ones[3]),
        .I1(distance31_in[3]),
        .O(\distance[7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \distance[7]_i_21 
       (.I0(ones[7]),
        .I1(distance31_in[7]),
        .I2(distance42_in[7]),
        .I3(ones[6]),
        .I4(distance31_in[6]),
        .O(\distance[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \distance[7]_i_22 
       (.I0(distance31_in[6]),
        .I1(ones[6]),
        .I2(distance42_in[6]),
        .O(\distance[7]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \distance[7]_i_6 
       (.I0(distance42_in[6]),
        .I1(distance31_in[7]),
        .I2(\distance_reg[7]_i_13_n_4 ),
        .I3(\hundreth_reg_n_0_[4] ),
        .I4(\distance[7]_i_14_n_0 ),
        .O(\distance[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \distance[7]_i_7 
       (.I0(distance31_in[7]),
        .I1(\distance_reg[7]_i_13_n_4 ),
        .I2(distance42_in[6]),
        .I3(\hundreth_reg_n_0_[3] ),
        .O(\distance[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \distance[7]_i_8 
       (.I0(\distance_reg[7]_i_13_n_6 ),
        .I1(distance31_in[5]),
        .I2(distance42_in[7]),
        .O(\distance[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \distance[7]_i_9 
       (.I0(\distance[7]_i_15_n_0 ),
        .I1(\hundreth_reg_n_0_[4] ),
        .I2(\distance[7]_i_16_n_0 ),
        .I3(\distance_reg[7]_i_17_n_7 ),
        .I4(\tenth_reg_n_0_[5] ),
        .I5(distance42_in[7]),
        .O(\distance[7]_i_9_n_0 ));
  FDRE \distance_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[3]_i_1_n_7 ),
        .Q(distance[0]),
        .R(SR));
  FDRE \distance_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[3]_i_1_n_6 ),
        .Q(distance[1]),
        .R(SR));
  FDRE \distance_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[3]_i_1_n_5 ),
        .Q(distance[2]),
        .R(SR));
  FDRE \distance_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[3]_i_1_n_4 ),
        .Q(distance[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \distance_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\distance_reg[3]_i_1_n_0 ,\distance_reg[3]_i_1_n_1 ,\distance_reg[3]_i_1_n_2 ,\distance_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance[3]_i_2_n_0 ,distance42_in[6],distance31_in[3],1'b0}),
        .O({\distance_reg[3]_i_1_n_4 ,\distance_reg[3]_i_1_n_5 ,\distance_reg[3]_i_1_n_6 ,\distance_reg[3]_i_1_n_7 }),
        .S({\distance[3]_i_3_n_0 ,\distance[3]_i_4_n_0 ,\distance[3]_i_5_n_0 ,ones[0]}));
  FDRE \distance_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[7]_i_3_n_7 ),
        .Q(distance[4]),
        .R(SR));
  FDRE \distance_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[7]_i_3_n_6 ),
        .Q(distance[5]),
        .R(SR));
  FDRE \distance_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[7]_i_3_n_5 ),
        .Q(distance[6]),
        .R(SR));
  FDRE \distance_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\distance[7]_i_2_n_0 ),
        .D(\distance_reg[7]_i_3_n_4 ),
        .Q(distance[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \distance_reg[7]_i_13 
       (.CI(1'b0),
        .CO({\distance_reg[7]_i_13_n_0 ,\distance_reg[7]_i_13_n_1 ,\distance_reg[7]_i_13_n_2 ,\distance_reg[7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({ones[5:3],1'b0}),
        .O({\distance_reg[7]_i_13_n_4 ,\distance_reg[7]_i_13_n_5 ,\distance_reg[7]_i_13_n_6 ,\distance_reg[7]_i_13_n_7 }),
        .S({\distance[7]_i_18_n_0 ,\distance[7]_i_19_n_0 ,\distance[7]_i_20_n_0 ,ones[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \distance_reg[7]_i_17 
       (.CI(\distance_reg[7]_i_13_n_0 ),
        .CO({\NLW_distance_reg[7]_i_17_CO_UNCONNECTED [3:1],\distance_reg[7]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,distance42_in[6]}),
        .O({\NLW_distance_reg[7]_i_17_O_UNCONNECTED [3:2],\distance_reg[7]_i_17_n_6 ,\distance_reg[7]_i_17_n_7 }),
        .S({1'b0,1'b0,\distance[7]_i_21_n_0 ,\distance[7]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \distance_reg[7]_i_3 
       (.CI(\distance_reg[3]_i_1_n_0 ),
        .CO({\NLW_distance_reg[7]_i_3_CO_UNCONNECTED [3],\distance_reg[7]_i_3_n_1 ,\distance_reg[7]_i_3_n_2 ,\distance_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\distance[7]_i_6_n_0 ,\distance[7]_i_7_n_0 ,\distance[7]_i_8_n_0 }),
        .O({\distance_reg[7]_i_3_n_4 ,\distance_reg[7]_i_3_n_5 ,\distance_reg[7]_i_3_n_6 ,\distance_reg[7]_i_3_n_7 }),
        .S({\distance[7]_i_9_n_0 ,\distance[7]_i_10_n_0 ,\distance[7]_i_11_n_0 ,\distance[7]_i_12_n_0 }));
  LUT5 #(
    .INIT(32'h00200000)) 
    \hundreth[5]_i_1 
       (.I0(rx_ready),
        .I1(rx_ready_d),
        .I2(byte_pos[0]),
        .I3(byte_pos[1]),
        .I4(\FSM_sequential_byte_pos_reg[1]_0 ),
        .O(\hundreth[5]_i_1_n_0 ));
  FDRE \hundreth_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\hundreth[5]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [0]),
        .Q(distance42_in[6]),
        .R(SR));
  FDRE \hundreth_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\hundreth[5]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [1]),
        .Q(distance42_in[7]),
        .R(SR));
  FDRE \hundreth_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\hundreth[5]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [2]),
        .Q(\hundreth_reg_n_0_[2] ),
        .R(SR));
  FDRE \hundreth_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\hundreth[5]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [3]),
        .Q(\hundreth_reg_n_0_[3] ),
        .R(SR));
  FDRE \hundreth_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\hundreth[5]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [4]),
        .Q(\hundreth_reg_n_0_[4] ),
        .R(SR));
  FDRE \hundreth_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\hundreth[5]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [5]),
        .Q(\hundreth_reg_n_0_[5] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ones[7]_i_1 
       (.I0(\FSM_sequential_byte_pos_reg[1]_0 ),
        .I1(byte_pos[1]),
        .I2(byte_pos[0]),
        .I3(rx_ready),
        .I4(rx_ready_d),
        .O(\ones[7]_i_1_n_0 ));
  FDRE \ones_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [0]),
        .Q(ones[0]),
        .R(SR));
  FDRE \ones_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [1]),
        .Q(ones[1]),
        .R(SR));
  FDRE \ones_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [2]),
        .Q(ones[2]),
        .R(SR));
  FDRE \ones_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [3]),
        .Q(ones[3]),
        .R(SR));
  FDRE \ones_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [4]),
        .Q(ones[4]),
        .R(SR));
  FDRE \ones_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [5]),
        .Q(ones[5]),
        .R(SR));
  FDRE \ones_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [6]),
        .Q(ones[6]),
        .R(SR));
  FDRE \ones_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ones[7]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [7]),
        .Q(ones[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000CEEE0000)) 
    packet_seen_i_1
       (.I0(packet_seen),
        .I1(packet_valid),
        .I2(packet_seen_reg_0),
        .I3(packet_seen_reg_1),
        .I4(s00_axi_aresetn),
        .I5(\distance_reg[0]_0 ),
        .O(packet_seen_reg));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    packet_valid_i_1
       (.I0(byte_pos[1]),
        .I1(byte_pos[2]),
        .I2(byte_pos[0]),
        .I3(packet_valid_reg_0),
        .I4(SR),
        .I5(packet_valid_reg_1),
        .O(packet_valid_i_1_n_0));
  FDRE packet_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(packet_valid_i_1_n_0),
        .Q(packet_valid),
        .R(1'b0));
  FDRE rx_ready_clr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_ready_clr0),
        .Q(rx_ready_clr),
        .R(SR));
  FDRE rx_ready_d_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_ready),
        .Q(rx_ready_d),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000800)) 
    \tenth[6]_i_1 
       (.I0(\FSM_sequential_byte_pos_reg[1]_0 ),
        .I1(byte_pos[1]),
        .I2(byte_pos[0]),
        .I3(rx_ready),
        .I4(rx_ready_d),
        .O(\tenth[6]_i_1_n_0 ));
  FDRE \tenth_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tenth[6]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [0]),
        .Q(distance31_in[3]),
        .R(SR));
  FDRE \tenth_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tenth[6]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [1]),
        .Q(distance31_in[4]),
        .R(SR));
  FDRE \tenth_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tenth[6]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [2]),
        .Q(distance31_in[5]),
        .R(SR));
  FDRE \tenth_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\tenth[6]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [3]),
        .Q(distance31_in[6]),
        .R(SR));
  FDRE \tenth_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\tenth[6]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [4]),
        .Q(distance31_in[7]),
        .R(SR));
  FDRE \tenth_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\tenth[6]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [5]),
        .Q(\tenth_reg_n_0_[5] ),
        .R(SR));
  FDRE \tenth_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\tenth[6]_i_1_n_0 ),
        .D(\ones_reg[7]_0 [6]),
        .Q(\tenth_reg_n_0_[6] ),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver
   (rx_ready,
    \FSM_sequential_byte_pos_reg[1] ,
    \data_reg[2]_0 ,
    \data_reg[7]_0 ,
    \data_reg[4]_0 ,
    rx_ready_clr0,
    \data_reg[2]_1 ,
    \data_reg[6]_0 ,
    SR,
    sensor_tx,
    s00_axi_aclk,
    rxclk_en,
    byte_pos,
    rx_ready_d,
    rx_ready_clr);
  output rx_ready;
  output \FSM_sequential_byte_pos_reg[1] ;
  output \data_reg[2]_0 ;
  output \data_reg[7]_0 ;
  output [7:0]\data_reg[4]_0 ;
  output rx_ready_clr0;
  output \data_reg[2]_1 ;
  output \data_reg[6]_0 ;
  input [0:0]SR;
  input sensor_tx;
  input s00_axi_aclk;
  input rxclk_en;
  input [2:0]byte_pos;
  input rx_ready_d;
  input rx_ready_clr;

  wire \FSM_sequential_byte_pos[0]_i_2_n_0 ;
  wire \FSM_sequential_byte_pos[0]_i_3_n_0 ;
  wire \FSM_sequential_byte_pos[2]_i_3_n_0 ;
  wire \FSM_sequential_byte_pos_reg[1] ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire [0:0]SR;
  wire \bit_pos[0]_i_1_n_0 ;
  wire \bit_pos[1]_i_1_n_0 ;
  wire \bit_pos[2]_i_1_n_0 ;
  wire \bit_pos[3]_i_1_n_0 ;
  wire \bit_pos[3]_i_2_n_0 ;
  wire \bit_pos[3]_i_3_n_0 ;
  wire \bit_pos_reg_n_0_[0] ;
  wire \bit_pos_reg_n_0_[1] ;
  wire \bit_pos_reg_n_0_[2] ;
  wire \bit_pos_reg_n_0_[3] ;
  wire [2:0]byte_pos;
  wire [1:0]current_state;
  wire [7:4]data;
  wire \data[7]_i_1_n_0 ;
  wire \data_reg[2]_0 ;
  wire \data_reg[2]_1 ;
  wire [7:0]\data_reg[4]_0 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[7]_0 ;
  wire [1:0]next_state;
  wire ready_i_1_n_0;
  wire rx_ready;
  wire rx_ready_clr;
  wire rx_ready_clr0;
  wire rx_ready_d;
  wire rxclk_en;
  wire s00_axi_aclk;
  wire [3:0]sample_count;
  wire \sample_count[3]_i_2_n_0 ;
  wire \sample_count_reg_n_0_[0] ;
  wire \sample_count_reg_n_0_[1] ;
  wire \sample_count_reg_n_0_[2] ;
  wire \sample_count_reg_n_0_[3] ;
  wire [0:0]scratch;
  wire \scratch[0]_i_1_n_0 ;
  wire \scratch[1]_i_1_n_0 ;
  wire \scratch[2]_i_1_n_0 ;
  wire \scratch[3]_i_1_n_0 ;
  wire \scratch[3]_i_2_n_0 ;
  wire \scratch[4]_i_1_n_0 ;
  wire \scratch[4]_i_2_n_0 ;
  wire \scratch[5]_i_1_n_0 ;
  wire \scratch[5]_i_2_n_0 ;
  wire \scratch[6]_i_1_n_0 ;
  wire \scratch[6]_i_3_n_0 ;
  wire \scratch[7]_i_1_n_0 ;
  wire \scratch[7]_i_2_n_0 ;
  wire \scratch_reg_n_0_[0] ;
  wire \scratch_reg_n_0_[1] ;
  wire \scratch_reg_n_0_[2] ;
  wire \scratch_reg_n_0_[3] ;
  wire \scratch_reg_n_0_[4] ;
  wire \scratch_reg_n_0_[5] ;
  wire \scratch_reg_n_0_[6] ;
  wire \scratch_reg_n_0_[7] ;
  wire sensor_tx;
  wire sync_rx1;
  wire sync_rx2;

  LUT6 #(
    .INIT(64'hFFFFF0FF0000F800)) 
    \FSM_sequential_byte_pos[0]_i_1 
       (.I0(\data_reg[2]_0 ),
        .I1(byte_pos[1]),
        .I2(\FSM_sequential_byte_pos[0]_i_2_n_0 ),
        .I3(rx_ready),
        .I4(rx_ready_d),
        .I5(byte_pos[0]),
        .O(\FSM_sequential_byte_pos_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_byte_pos[0]_i_2 
       (.I0(\data_reg[4]_0 [1]),
        .I1(\data_reg[4]_0 [0]),
        .I2(byte_pos[2]),
        .I3(byte_pos[1]),
        .I4(byte_pos[0]),
        .I5(\FSM_sequential_byte_pos[0]_i_3_n_0 ),
        .O(\FSM_sequential_byte_pos[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_byte_pos[0]_i_3 
       (.I0(data[4]),
        .I1(data[5]),
        .I2(\data_reg[4]_0 [2]),
        .I3(\data_reg[4]_0 [3]),
        .I4(data[7]),
        .I5(data[6]),
        .O(\FSM_sequential_byte_pos[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000015500000000)) 
    \FSM_sequential_byte_pos[2]_i_2 
       (.I0(\FSM_sequential_byte_pos[2]_i_3_n_0 ),
        .I1(\data_reg[4]_0 [2]),
        .I2(\data_reg[4]_0 [1]),
        .I3(\data_reg[4]_0 [3]),
        .I4(byte_pos[2]),
        .I5(\data_reg[6]_0 ),
        .O(\data_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_byte_pos[2]_i_3 
       (.I0(data[4]),
        .I1(data[5]),
        .O(\FSM_sequential_byte_pos[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00001010)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(sync_rx2),
        .I1(\sample_count_reg_n_0_[3] ),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\sample_count_reg_n_0_[2] ),
        .I1(\sample_count_reg_n_0_[1] ),
        .I2(\sample_count_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\bit_pos_reg_n_0_[3] ),
        .I2(\bit_pos_reg_n_0_[2] ),
        .I3(\bit_pos_reg_n_0_[0] ),
        .I4(\bit_pos_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202420202)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I3(\bit_pos_reg_n_0_[3] ),
        .I4(\bit_pos_reg_n_0_[2] ),
        .I5(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\sample_count_reg_n_0_[1] ),
        .I1(\sample_count_reg_n_0_[0] ),
        .I2(\sample_count_reg_n_0_[3] ),
        .I3(\sample_count_reg_n_0_[2] ),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(\bit_pos_reg_n_0_[0] ),
        .I1(\bit_pos_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "RX_STATE_DATA:01,RX_STATE_STOP:10,RX_STATE_START:00" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rxclk_en),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "RX_STATE_DATA:01,RX_STATE_STOP:10,RX_STATE_START:00" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rxclk_en),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0232)) 
    \bit_pos[0]_i_1 
       (.I0(sync_rx2),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(\bit_pos_reg_n_0_[0] ),
        .O(\bit_pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04545404)) 
    \bit_pos[1]_i_1 
       (.I0(current_state[1]),
        .I1(sync_rx2),
        .I2(current_state[0]),
        .I3(\bit_pos_reg_n_0_[0] ),
        .I4(\bit_pos_reg_n_0_[1] ),
        .O(\bit_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0232323232020202)) 
    \bit_pos[2]_i_1 
       (.I0(sync_rx2),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(\bit_pos_reg_n_0_[0] ),
        .I4(\bit_pos_reg_n_0_[1] ),
        .I5(\bit_pos_reg_n_0_[2] ),
        .O(\bit_pos[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAEAAA)) 
    \bit_pos[3]_i_1 
       (.I0(\bit_pos[3]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I2(rxclk_en),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\bit_pos[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6FFA600)) 
    \bit_pos[3]_i_2 
       (.I0(\bit_pos_reg_n_0_[3] ),
        .I1(\bit_pos_reg_n_0_[2] ),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(current_state[0]),
        .I4(sync_rx2),
        .I5(current_state[1]),
        .O(\bit_pos[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \bit_pos[3]_i_3 
       (.I0(current_state[0]),
        .I1(sync_rx2),
        .I2(\sample_count_reg_n_0_[3] ),
        .I3(current_state[1]),
        .I4(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I5(rxclk_en),
        .O(\bit_pos[3]_i_3_n_0 ));
  FDRE \bit_pos_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_pos[3]_i_1_n_0 ),
        .D(\bit_pos[0]_i_1_n_0 ),
        .Q(\bit_pos_reg_n_0_[0] ),
        .R(SR));
  FDRE \bit_pos_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_pos[3]_i_1_n_0 ),
        .D(\bit_pos[1]_i_1_n_0 ),
        .Q(\bit_pos_reg_n_0_[1] ),
        .R(SR));
  FDRE \bit_pos_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_pos[3]_i_1_n_0 ),
        .D(\bit_pos[2]_i_1_n_0 ),
        .Q(\bit_pos_reg_n_0_[2] ),
        .R(SR));
  FDRE \bit_pos_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_pos[3]_i_1_n_0 ),
        .D(\bit_pos[3]_i_2_n_0 ),
        .Q(\bit_pos_reg_n_0_[3] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00800000)) 
    \data[7]_i_1 
       (.I0(rxclk_en),
        .I1(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(sync_rx2),
        .O(\data[7]_i_1_n_0 ));
  FDRE \data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[0] ),
        .Q(\data_reg[4]_0 [0]),
        .R(SR));
  FDRE \data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[1] ),
        .Q(\data_reg[4]_0 [1]),
        .R(SR));
  FDRE \data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[2] ),
        .Q(\data_reg[4]_0 [2]),
        .R(SR));
  FDRE \data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[3] ),
        .Q(\data_reg[4]_0 [3]),
        .R(SR));
  FDRE \data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[4] ),
        .Q(data[4]),
        .R(SR));
  FDRE \data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[5] ),
        .Q(data[5]),
        .R(SR));
  FDRE \data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[6] ),
        .Q(data[6]),
        .R(SR));
  FDRE \data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\scratch_reg_n_0_[7] ),
        .Q(data[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \distance[7]_i_4 
       (.I0(data[6]),
        .I1(data[7]),
        .O(\data_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \distance[7]_i_5 
       (.I0(\data_reg[4]_0 [2]),
        .I1(\data_reg[4]_0 [3]),
        .I2(\data_reg[4]_0 [0]),
        .I3(\data_reg[4]_0 [1]),
        .I4(data[5]),
        .I5(data[4]),
        .O(\data_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF807)) 
    \ones[7]_i_2 
       (.I0(data[4]),
        .I1(data[5]),
        .I2(data[6]),
        .I3(data[7]),
        .O(\data_reg[4]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    packet_valid_i_2
       (.I0(data[7]),
        .I1(data[6]),
        .I2(rx_ready_d),
        .I3(rx_ready),
        .O(\data_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hEAAAFFFFAAAAAAAA)) 
    ready_i_1
       (.I0(\data[7]_i_1_n_0 ),
        .I1(rxclk_en),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(rx_ready_clr),
        .I5(rx_ready),
        .O(ready_i_1_n_0));
  FDRE ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(rx_ready),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    rx_ready_clr_i_1
       (.I0(rx_ready),
        .I1(rx_ready_d),
        .O(rx_ready_clr0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h005B)) 
    \sample_count[0]_i_1 
       (.I0(current_state[1]),
        .I1(sync_rx2),
        .I2(current_state[0]),
        .I3(\sample_count_reg_n_0_[0] ),
        .O(sample_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h005B5B00)) 
    \sample_count[1]_i_1 
       (.I0(current_state[1]),
        .I1(sync_rx2),
        .I2(current_state[0]),
        .I3(\sample_count_reg_n_0_[1] ),
        .I4(\sample_count_reg_n_0_[0] ),
        .O(sample_count[1]));
  LUT6 #(
    .INIT(64'h005B5B5B5B000000)) 
    \sample_count[2]_i_1 
       (.I0(current_state[1]),
        .I1(sync_rx2),
        .I2(current_state[0]),
        .I3(\sample_count_reg_n_0_[0] ),
        .I4(\sample_count_reg_n_0_[1] ),
        .I5(\sample_count_reg_n_0_[2] ),
        .O(sample_count[2]));
  LUT6 #(
    .INIT(64'h5B00005A5B5B0000)) 
    \sample_count[3]_i_1 
       (.I0(current_state[0]),
        .I1(sync_rx2),
        .I2(current_state[1]),
        .I3(\sample_count[3]_i_2_n_0 ),
        .I4(\sample_count_reg_n_0_[3] ),
        .I5(\sample_count_reg_n_0_[2] ),
        .O(sample_count[3]));
  LUT2 #(
    .INIT(4'h7)) 
    \sample_count[3]_i_2 
       (.I0(\sample_count_reg_n_0_[0] ),
        .I1(\sample_count_reg_n_0_[1] ),
        .O(\sample_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rxclk_en),
        .D(sample_count[0]),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rxclk_en),
        .D(sample_count[1]),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rxclk_en),
        .D(sample_count[2]),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rxclk_en),
        .D(sample_count[3]),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \scratch[0]_i_1 
       (.I0(scratch),
        .I1(\bit_pos[3]_i_3_n_0 ),
        .I2(\bit_pos_reg_n_0_[2] ),
        .I3(rxclk_en),
        .I4(\scratch[4]_i_2_n_0 ),
        .I5(\scratch_reg_n_0_[0] ),
        .O(\scratch[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \scratch[1]_i_1 
       (.I0(scratch),
        .I1(\bit_pos[3]_i_3_n_0 ),
        .I2(\bit_pos_reg_n_0_[2] ),
        .I3(rxclk_en),
        .I4(\scratch[5]_i_2_n_0 ),
        .I5(\scratch_reg_n_0_[1] ),
        .O(\scratch[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \scratch[2]_i_1 
       (.I0(scratch),
        .I1(\bit_pos[3]_i_3_n_0 ),
        .I2(\bit_pos_reg_n_0_[2] ),
        .I3(rxclk_en),
        .I4(\scratch[6]_i_3_n_0 ),
        .I5(\scratch_reg_n_0_[2] ),
        .O(\scratch[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F222F2F20222020)) 
    \scratch[3]_i_1 
       (.I0(sync_rx2),
        .I1(current_state[1]),
        .I2(\bit_pos[3]_i_3_n_0 ),
        .I3(\scratch[3]_i_2_n_0 ),
        .I4(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I5(\scratch_reg_n_0_[3] ),
        .O(\scratch[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \scratch[3]_i_2 
       (.I0(\bit_pos_reg_n_0_[1] ),
        .I1(\bit_pos_reg_n_0_[0] ),
        .I2(\bit_pos_reg_n_0_[2] ),
        .I3(rxclk_en),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\scratch[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    \scratch[4]_i_1 
       (.I0(scratch),
        .I1(\bit_pos[3]_i_3_n_0 ),
        .I2(\scratch[4]_i_2_n_0 ),
        .I3(rxclk_en),
        .I4(\bit_pos_reg_n_0_[2] ),
        .I5(\scratch_reg_n_0_[4] ),
        .O(\scratch[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \scratch[4]_i_2 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\bit_pos_reg_n_0_[0] ),
        .I2(\bit_pos_reg_n_0_[1] ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\scratch[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    \scratch[5]_i_1 
       (.I0(scratch),
        .I1(\bit_pos[3]_i_3_n_0 ),
        .I2(\scratch[5]_i_2_n_0 ),
        .I3(rxclk_en),
        .I4(\bit_pos_reg_n_0_[2] ),
        .I5(\scratch_reg_n_0_[5] ),
        .O(\scratch[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \scratch[5]_i_2 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\bit_pos_reg_n_0_[1] ),
        .I2(\bit_pos_reg_n_0_[0] ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\scratch[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    \scratch[6]_i_1 
       (.I0(scratch),
        .I1(\bit_pos[3]_i_3_n_0 ),
        .I2(rxclk_en),
        .I3(\bit_pos_reg_n_0_[2] ),
        .I4(\scratch[6]_i_3_n_0 ),
        .I5(\scratch_reg_n_0_[6] ),
        .O(\scratch[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \scratch[6]_i_2 
       (.I0(sync_rx2),
        .I1(current_state[1]),
        .O(scratch));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \scratch[6]_i_3 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\bit_pos_reg_n_0_[0] ),
        .I2(\bit_pos_reg_n_0_[1] ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\scratch[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F222F2F20222020)) 
    \scratch[7]_i_1 
       (.I0(sync_rx2),
        .I1(current_state[1]),
        .I2(\bit_pos[3]_i_3_n_0 ),
        .I3(\scratch[7]_i_2_n_0 ),
        .I4(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I5(\scratch_reg_n_0_[7] ),
        .O(\scratch[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \scratch[7]_i_2 
       (.I0(\bit_pos_reg_n_0_[2] ),
        .I1(\bit_pos_reg_n_0_[0] ),
        .I2(\bit_pos_reg_n_0_[1] ),
        .I3(rxclk_en),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\scratch[7]_i_2_n_0 ));
  FDRE \scratch_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[0]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[0] ),
        .R(SR));
  FDRE \scratch_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[1]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[1] ),
        .R(SR));
  FDRE \scratch_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[2]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[2] ),
        .R(SR));
  FDRE \scratch_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[3]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[3] ),
        .R(SR));
  FDRE \scratch_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[4]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[4] ),
        .R(SR));
  FDRE \scratch_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[5]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[5] ),
        .R(SR));
  FDRE \scratch_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[6]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[6] ),
        .R(SR));
  FDRE \scratch_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\scratch[7]_i_1_n_0 ),
        .Q(\scratch_reg_n_0_[7] ),
        .R(SR));
  FDSE sync_rx1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sensor_tx),
        .Q(sync_rx1),
        .S(SR));
  FDSE sync_rx2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_rx1),
        .Q(sync_rx2),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \tenth[4]_i_1 
       (.I0(data[4]),
        .O(\data_reg[4]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tenth[5]_i_1 
       (.I0(data[4]),
        .I1(data[5]),
        .O(\data_reg[4]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \tenth[6]_i_2 
       (.I0(data[4]),
        .I1(data[5]),
        .I2(data[6]),
        .O(\data_reg[4]_0 [6]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart
   (sensor_rx,
    packet_seen_reg,
    D,
    distance,
    s00_axi_aclk,
    sensor_tx,
    slv_reg2,
    packet_seen,
    packet_seen_reg_0,
    packet_seen_reg_1,
    s00_axi_aresetn,
    \distance_reg[0] ,
    sel0,
    \axi_rdata_reg[0] );
  output sensor_rx;
  output packet_seen_reg;
  output [7:0]D;
  output [7:0]distance;
  input s00_axi_aclk;
  input sensor_tx;
  input [0:0]slv_reg2;
  input packet_seen;
  input packet_seen_reg_0;
  input packet_seen_reg_1;
  input s00_axi_aresetn;
  input \distance_reg[0] ;
  input [2:0]sel0;
  input \axi_rdata_reg[0] ;

  wire [7:0]D;
  wire \axi_rdata_reg[0] ;
  wire [2:0]byte_pos;
  wire [3:0]data;
  wire [7:0]distance;
  wire \distance_reg[0] ;
  wire [7:4]hundreth0;
  wire packet_parser_inst_n_1;
  wire packet_seen;
  wire packet_seen_reg;
  wire packet_seen_reg_0;
  wire packet_seen_reg_1;
  wire receiver_inst_n_1;
  wire receiver_inst_n_13;
  wire receiver_inst_n_14;
  wire receiver_inst_n_2;
  wire receiver_inst_n_3;
  wire rx_ready;
  wire rx_ready_clr;
  wire rx_ready_clr0;
  wire rx_ready_d;
  wire rxclk_en;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [2:0]sel0;
  wire sensor_rx;
  wire sensor_tx;
  wire [0:0]slv_reg2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate baudrate_inst
       (.SR(packet_parser_inst_n_1),
        .\rx_acc_reg[0]_0 (\distance_reg[0] ),
        .rxclk_en(rxclk_en),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_pmod_rx ctrl_pmod_rx_inst
       (.SR(packet_parser_inst_n_1),
        .s00_axi_aclk(s00_axi_aclk),
        .sensor_rx(sensor_rx),
        .slv_reg2(slv_reg2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packet_parser packet_parser_inst
       (.D(D),
        .\FSM_sequential_byte_pos_reg[0]_0 (receiver_inst_n_1),
        .\FSM_sequential_byte_pos_reg[1]_0 (receiver_inst_n_2),
        .SR(packet_parser_inst_n_1),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .byte_pos(byte_pos),
        .distance(distance),
        .\distance_reg[0]_0 (\distance_reg[0] ),
        .\distance_reg[0]_1 (receiver_inst_n_14),
        .\ones_reg[7]_0 ({hundreth0,data}),
        .packet_seen(packet_seen),
        .packet_seen_reg(packet_seen_reg),
        .packet_seen_reg_0(packet_seen_reg_0),
        .packet_seen_reg_1(packet_seen_reg_1),
        .packet_valid_reg_0(receiver_inst_n_3),
        .packet_valid_reg_1(receiver_inst_n_13),
        .rx_ready(rx_ready),
        .rx_ready_clr(rx_ready_clr),
        .rx_ready_clr0(rx_ready_clr0),
        .rx_ready_d(rx_ready_d),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sel0(sel0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver receiver_inst
       (.\FSM_sequential_byte_pos_reg[1] (receiver_inst_n_1),
        .SR(packet_parser_inst_n_1),
        .byte_pos(byte_pos),
        .\data_reg[2]_0 (receiver_inst_n_2),
        .\data_reg[2]_1 (receiver_inst_n_13),
        .\data_reg[4]_0 ({hundreth0,data}),
        .\data_reg[6]_0 (receiver_inst_n_14),
        .\data_reg[7]_0 (receiver_inst_n_3),
        .rx_ready(rx_ready),
        .rx_ready_clr(rx_ready_clr),
        .rx_ready_clr0(rx_ready_clr0),
        .rx_ready_d(rx_ready_d),
        .rxclk_en(rxclk_en),
        .s00_axi_aclk(s00_axi_aclk),
        .sensor_tx(sensor_tx));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
