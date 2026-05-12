`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2026 03:25:02 PM
// Design Name: 
// Module Name: uart
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// Module: uart
// Description: This module integrates the components of a UART interface including
// a baud rate generator, a transmitter, receiver, and packet parser.

//registers- sys_rst_n (sftwre reset),read_en

module uart (
    input  wire       clk,          // 50 MHz system clock
    input  wire       sys_rst_n,    // active-low reset
    input  wire       read_en,      // switch/control for sensor free-run
    input  wire       sensor_tx,    // from PMOD MAXSONAR TX pin
    output wire       sensor_rx,    // to PMOD MAXSONAR RX pin
    output wire [7:0] distance,     // parsed distance
    output wire       packet_valid  // pulses high when full packet is valid
);

wire        rxclk_en;
wire [7:0]  rx_data;
wire        rx_ready;
wire        rx_ready_clr;

ctrl_pmod_rx ctrl_pmod_rx_inst (
    .read_en(read_en),
    .sys_rst_n(sys_rst_n),
    .clk(clk),
    .sensor_out(sensor_rx)
);

baudrate baudrate_inst (
    .clk(clk),
    .sys_rst_n(sys_rst_n),
    .Rxclk_en(rxclk_en)
);

receiver receiver_inst (
    .sys_rst_n(sys_rst_n),
    .Rx(sensor_tx),
    .ready_clr(rx_ready_clr),
    .clk(clk),
    .clken(rxclk_en),
    .data(rx_data),
    .ready(rx_ready)
);

packet_parser packet_parser_inst (
    .clk(clk),
    .sys_rst_n(sys_rst_n),
    .rx_data(rx_data),
    .rx_ready(rx_ready),
    .rx_ready_clr(rx_ready_clr),
    .distance(distance),
    .packet_valid(packet_valid)
);

endmodule