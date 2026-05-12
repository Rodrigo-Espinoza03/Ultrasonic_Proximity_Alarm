`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2026 07:06:42 PM
// Design Name: 
// Module Name: ctrl_pmod_rx
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

module ctrl_pmod_rx
(
input wire read_en, //for enabling or disabling pmod    
input wire sys_rst_n,         
input wire clk,         // 50 MHz clock signal
output reg sensor_out   
);

always @(posedge clk) begin
    if(!sys_rst_n) begin
        sensor_out<=1'b0;
    end else begin
        if(read_en) begin
            sensor_out<=1'b1;
        end else begin
            sensor_out<=1'b0;
       end
    end 
end           
endmodule