`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2026 07:07:50 PM
// Design Name: 
// Module Name: tb_ctrl_pmod_rx
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

module tb_ctrl_pmod_rx();

reg read_en;     
reg sys_rst_n;        
reg clk;      
wire sensor_out; 

ctrl_pmod_rx ctrl_pmod_rx_inst
(
.read_en(read_en),
.sys_rst_n(sys_rst_n),
.clk(clk),
.sensor_out(sensor_out)
);

localparam CLK_PERIOD=20; //50MHz clock
initial
clk=1'b0;
always #(CLK_PERIOD/2)
clk=~clk;

initial begin
read_en=1'b0;
sys_rst_n=1'b0;#20;
sys_rst_n=1'b1;
forever begin
#100 read_en = ~read_en;
end
end
endmodule
