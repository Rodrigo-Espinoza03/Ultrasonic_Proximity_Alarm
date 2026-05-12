`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2026 08:15:21 PM
// Design Name: 
// Module Name: tb_packet_parser
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

module tb_packet_parser();

reg clk;
reg sys_rst_n;
reg [7:0] rx_data;
reg rx_ready;
wire rx_ready_clr;
wire [7:0] distance;
wire packet_valid;

wire [2:0] byte_pos;
wire [7:0] hundreth;
wire [7:0] tenth;
wire [7:0] ones;
wire rx_ready_d;

assign byte_pos=packet_parser_inst.byte_pos;
assign hundreth=packet_parser_inst.hundreth;
assign tenth=packet_parser_inst.tenth;
assign ones=packet_parser_inst.ones;
assign rx_ready_d=packet_parser_inst.rx_ready_d;

packet_parser packet_parser_inst
(
.clk(clk),
.sys_rst_n(sys_rst_n),
.rx_data(rx_data),
.rx_ready(rx_ready),
.rx_ready_clr(rx_ready_clr),
.distance(distance),
.packet_valid(packet_valid)
);

localparam CLK_PERIOD=20; //50MHz clock
initial
clk=1'b0;
always #(CLK_PERIOD/2)
clk=~clk;

initial begin
    forever begin
        #20 rx_ready=1'b0;
        #20 rx_ready=1'b1;
    end
end
initial begin
rx_data=8'h00;
sys_rst_n=1'b0;#20;
sys_rst_n=1'b1;#20;
    forever begin
       #40 rx_data=8'h49;
       #40 rx_data=8'h52;
       #40 rx_data=8'h31;
       #40 rx_data=8'h32;
       #40 rx_data=8'h33;
       #40 rx_data=8'h0D;
       #40 rx_data=8'h49;
       #40 rx_data=8'h52;
       #40 rx_data=8'h30;
       #40 rx_data=8'h32;
       #40 rx_data=8'h31;
       #40 rx_data=8'h0D;    
       end
end
endmodule
