`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2026 03:21:21 PM
// Design Name: 
// Module Name: receiver
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

module receiver (
input wire sys_rst_n,
input wire Rx,             // Serial input receiving data
input wire ready_clr,      // Signal to clear the ready state
input wire clk,            // System clock
input wire clken,          // Clock enable for controlling reception timing
output reg [7:0] data,     // Output data register
output reg ready           // Signal to indicate data is ready to be read
);

// Define states for the reception process
parameter RX_STATE_START = 2'b00;  // Start bit
parameter RX_STATE_DATA  = 2'b01;  // Receiving data bits
parameter RX_STATE_STOP  = 2'b10;  // Checking stop bit

reg [1:0] current_state;
reg [1:0] next_state;

reg [3:0] sample_count=0;
reg [3:0] bit_pos;
reg [7:0] scratch;
reg sync_rx1;
reg sync_rx2;

always @(posedge clk) begin
    if (!sys_rst_n) begin
        sync_rx1<= 1'b1;
        sync_rx2<= 1'b1;
    end else begin
        sync_rx1<= Rx;
        sync_rx2<= sync_rx1;
    end
end

always @(posedge clk) begin
    if(!sys_rst_n) begin
        data<=8'b0;
        ready<=1'b0;
        sample_count<=4'b0;
        bit_pos<=4'b0;
        scratch<=8'b0;
        current_state<=RX_STATE_START;
    end else begin
    if (ready_clr)
       ready <= 1'b0;

    if (clken) begin
       current_state <= next_state;
    

    case (current_state)

        RX_STATE_START: begin
             if (sync_rx2 == 1'b0) begin
                if (sample_count == 4'd7) begin
                    sample_count <= 4'd0;
                    bit_pos<= 4'd0;
                    scratch<= 8'b0;
                end else begin
                    sample_count<= sample_count + 1'b1;
                end
            end else begin
                sample_count<= 4'd0;
            end
        end

        RX_STATE_DATA: begin
            if (sample_count == 4'd15) begin
                scratch[bit_pos[2:0]]<= sync_rx2;
                sample_count<= 4'd0;
                bit_pos<= bit_pos + 1'b1;
            end else begin
                sample_count<= sample_count + 1'b1;
            end
        end

        RX_STATE_STOP: begin
            if (sample_count == 4'd15) begin
                sample_count<= 4'd0;
                bit_pos<= 4'd0;
                if (sync_rx2 == 1'b1) begin
                    data<= scratch;
                    ready <= 1'b1;
                end
            end else begin
                sample_count<= sample_count + 1'b1;
            end
        end
        
        default: begin
            sample_count<=4'd0;
            bit_pos<=4'd0;
            scratch<=8'd0;
        end
        
        endcase
    end
    end
end

always @(*) begin
    next_state=current_state;
    case (current_state) 
    
    RX_STATE_START: begin
        if((sample_count==4'd7) && (sync_rx2==1'b0)) begin
            next_state=RX_STATE_DATA;
        end else begin
            next_state=RX_STATE_START;
        end
    end
     
    RX_STATE_DATA: begin
        if(bit_pos==4'd7 && sample_count==4'd15) begin
            next_state=RX_STATE_STOP;
        end else begin
            next_state=RX_STATE_DATA;
        end
    end
    
    RX_STATE_STOP: begin
        if(sample_count==4'd15) begin
            next_state=RX_STATE_START;
        end else begin
            next_state=RX_STATE_STOP;
        end
    end     
   
    default: begin
            next_state = RX_STATE_START;
        end
    endcase
end

endmodule
