`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2026 07:21:48 PM
// Design Name: 
// Module Name: tb_baudrate
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

module tb_baudrate();

reg clk;
reg sys_rst_n;
wire Rxclk_en;

baudrate baudrate_inst
(
.sys_rst_n(sys_rst_n),
.clk(clk),
.Rxclk_en(Rxclk_en)
);

localparam CLK_PERIOD=20; //50MHz clock
initial
clk=1'b0;
always #(CLK_PERIOD/2)
clk=~clk;

initial begin
sys_rst_n=1'b0;#20;
sys_rst_n=1'b1;#20;
end
endmodule
