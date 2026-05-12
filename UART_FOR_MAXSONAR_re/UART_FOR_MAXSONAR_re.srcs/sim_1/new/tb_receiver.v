`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2026 07:43:27 PM
// Design Name: 
// Module Name: tb_receiver
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

module tb_receiver();

reg        sys_rst_n;
reg        Rx;
reg        ready_clr;
reg        clk;
reg        clken;

wire [7:0] data;
wire       ready;

// debug access to internal DUT signals
wire [1:0] current_state;
wire [1:0] next_state;
wire [3:0] sample_count;
wire [3:0] bit_pos;
wire [7:0] scratch;
wire       sync_rx1;
wire       sync_rx2;

receiver receiver_inst (
    .sys_rst_n(sys_rst_n),
    .Rx(Rx),
    .ready_clr(ready_clr),
    .clk(clk),
    .clken(clken),
    .data(data),
    .ready(ready)
);

assign current_state = receiver_inst.current_state;
assign next_state    = receiver_inst.next_state;
assign sample_count  = receiver_inst.sample_count;
assign bit_pos       = receiver_inst.bit_pos;
assign scratch       = receiver_inst.scratch;
assign sync_rx1      = receiver_inst.sync_rx1;
assign sync_rx2      = receiver_inst.sync_rx2;

localparam CLK_PERIOD = 20; // 50 MHz
localparam OS_TICKS   = 16; // 16x oversampling

initial clk = 1'b0;
always #(CLK_PERIOD/2) clk = ~clk;

// Send one UART byte, 8N1, LSB first.
// Because clken=1 in this TB, one clk cycle = one oversample tick.
task send_uart_byte;
    input [7:0] tx_byte;
    integer i;
    begin
        // idle
        Rx = 1'b1;
        @(posedge clk);

        // start bit
        Rx = 1'b0;
        repeat (OS_TICKS) @(posedge clk);

        // 8 data bits, LSB first
        for (i = 0; i < 8; i = i + 1) begin
            Rx = tx_byte[i];
            repeat (OS_TICKS) @(posedge clk);
        end

        // stop bit
        Rx = 1'b1;
        repeat (OS_TICKS) @(posedge clk);
    end
endtask

initial begin
    // initial values
    sys_rst_n = 1'b0;
    Rx        = 1'b1;  // UART idle high
    ready_clr = 1'b0;
    clken     = 1'b1;  // simplified TB: always enable oversample step

    // hold reset for a few clocks
    repeat (4) @(posedge clk);
    sys_rst_n = 1'b1;

    // wait a little after reset
    repeat (4) @(posedge clk);

    // send 'R' = 8'h52
    send_uart_byte(8'h52);

    // wait until receiver says byte is ready
    wait (ready == 1'b1);
    @(posedge clk);
    ready_clr = 1'b1;
    @(posedge clk);
    ready_clr = 1'b0;

    // send '1'
    send_uart_byte(8'h31);
    wait (ready == 1'b1);
    @(posedge clk);
    ready_clr = 1'b1;
    @(posedge clk);
    ready_clr = 1'b0;

    // send '2'
    send_uart_byte(8'h32);
    wait (ready == 1'b1);
    @(posedge clk);
    ready_clr = 1'b1;
    @(posedge clk);
    ready_clr = 1'b0;

    // send '3'
    send_uart_byte(8'h33);
    wait (ready == 1'b1);
    @(posedge clk);
    ready_clr = 1'b1;
    @(posedge clk);
    ready_clr = 1'b0;

    // send carriage return
    send_uart_byte(8'h0D);
    wait (ready == 1'b1);
    @(posedge clk);
    ready_clr = 1'b1;
    @(posedge clk);
    ready_clr = 1'b0;

    // let waveform run a bit
    repeat (20) @(posedge clk);

    
end

endmodule