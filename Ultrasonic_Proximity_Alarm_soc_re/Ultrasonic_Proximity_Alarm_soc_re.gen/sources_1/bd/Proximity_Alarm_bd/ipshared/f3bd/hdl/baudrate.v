`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2026 07:58:24 AM
// Design Name: 
// Module Name: baudrate
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


module baudrate
(
input wire clk,     
input wire sys_rst_n,  
output reg Rxclk_en // sample enable pulse for receiver
);

localparam integer CYCLES_PER_SAMPLE = 50_000_000 / (9600<<4);
localparam integer RX_ACC_WIDTH = $clog2(CYCLES_PER_SAMPLE);     

reg [RX_ACC_WIDTH - 1:0] rx_acc = 0;

always @(posedge clk) begin
    if(!sys_rst_n) begin
        rx_acc<='d0;
        Rxclk_en<=1'b0;
    end else begin
        if (rx_acc == CYCLES_PER_SAMPLE - 1) begin 
            rx_acc <= 0;
            Rxclk_en<=1'b1;               
        end else begin
            Rxclk_en<=1'b0;
            rx_acc <= rx_acc + 1'b1;     
        end
    end
end
endmodule
