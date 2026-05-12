`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2026 11:51:56 AM
// Design Name: 
// Module Name: piezo_buzzer
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

// the equation to determine divider is fout=fin/2(divider+1)


module piezo_buzzer#
(
localparam LARGEST_VALUE=8332, //largest value from the frequency used
localparam integer WIDTH=$clog2(LARGEST_VALUE)
)
(
input clk,
input sys_rst_n,
input read_en,
input [7:0] distance,
output reg [1:0] buzzer_out
);

reg [WIDTH-1:0] counter='d0;
reg [WIDTH-1:0] divider='d0;

always @(posedge clk) begin
    if(!sys_rst_n||!read_en) begin
        counter<='d0;
        buzzer_out<=1'd0;
    end else begin
        if (counter==divider) begin
            counter<='d0;
            buzzer_out<=~buzzer_out;
        end else begin
            counter <= counter + 1'b1;
        end
    end
end

always @(*) begin
    if(distance<=32) begin
        divider='d8332; //3kHz 
    end else if((distance>8'd32)&&(distance<=8'd64)) begin
        divider=14'd7142; //3.5kHz
    end else if((distance>8'd64)&&(distance<=8'd96)) begin
        divider=14'd6249; //4kHz
    end else if((distance>8'd96)&&(distance<=8'd128)) begin
        divider=14'd5555; //4.5kHz
    end else if((distance>8'd128)&&(distance<=8'd160)) begin
        divider=14'd4999; //5kHz
    end else if((distance>8'd160)&&(distance<=8'd192)) begin
        divider=14'd4544; //5.5khz
    end else if((distance>8'd192)&&(distance<=8'd224)) begin
        divider=14'd4166; //6kHz
    end else if(distance>8'd224) begin
        divider=14'd3845;//6.5kHz
    end else begin
    
    end
end

endmodule