`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2026 07:59:41 AM
// Design Name: 
// Module Name: packet_parser
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


module packet_parser
(
input wire clk, //50MHz clock
input wire sys_rst_n, // active low reset
input wire [7:0] rx_data, // data from receiver
input wire rx_ready, //indicates if byte is ready to be read (from receiver)
output reg rx_ready_clr, // clear ready-state once byte is read (to receiver)
output reg [7:0] distance, // distance value 0-255
output reg packet_valid //indicates if packet is valid (5 bytes of data)
);
reg [2:0] byte_pos;
reg [7:0] hundreth;
reg [7:0] tenth;
reg [7:0] ones;
reg rx_ready_d;

always @(posedge clk) begin
    if(!sys_rst_n) begin
        rx_ready_clr<=1'b0;
        distance<=8'b0;
        packet_valid<=1'b0;
        byte_pos<=3'b0;
        hundreth<=8'b0;
        tenth<=8'b0;
        ones<=8'b0;
        rx_ready_d<=1'b0;
    end else begin
        rx_ready_d<=rx_ready;
        packet_valid<=1'b0; //needed for 1 pulse
        rx_ready_clr<=1'b0;
            if(rx_ready && !rx_ready_d) begin //if data ready to be read
                rx_ready_clr<=1'b1;
                case(byte_pos)
                3'd0: begin
                    if(rx_data==8'h52) begin //see ascii 'R'
                        byte_pos<=3'd1; //change byte position
                    end else begin
                        byte_pos<=3'd0; //invalid first byte
                        packet_valid<=1'b0;
                    end
                end
                3'd1: begin
                    if(rx_data>=8'h30 && rx_data<=8'h39) begin
                        hundreth<=rx_data-8'h30; //convert to digit
                        byte_pos<=3'd2; //change byte position
                    end else begin
                        byte_pos<=3'd0; //invalid byte
                        packet_valid<=1'b0;
                    end
                end
                3'd2: begin
                    if(rx_data>=8'h30 && rx_data<=8'h39) begin
                        tenth<=rx_data-8'h30; //convert to digit
                        byte_pos<=3'd3; //change byte position
                    end else begin
                        byte_pos<=3'd0; //invalid byte
                        packet_valid<=1'b0;
                    end
                end
                3'd3: begin
                    if(rx_data>=8'h30 && rx_data<=8'h39) begin
                        ones<=rx_data-8'h30; //convert tod digit
                        byte_pos<=3'd4; //change byte position
                    end else begin
                        byte_pos<=3'd0; //invalid byte
                        packet_valid<=1'b0;
                    end
                end
                3'd4: begin
                    if(rx_data==8'h0D) begin
                        distance<=((hundreth<<6)+(hundreth<<5)+(hundreth<<2))+
                        ((tenth<<3)+(tenth<<1))+ones;
                        packet_valid<=1'b1;
                    end else begin
                    packet_valid<=1'b0;
                    end
                    byte_pos<=3'd0;
                end
                
                default: begin
                    byte_pos<=3'd0;
                end
                endcase
            end
    end
end  
     
endmodule