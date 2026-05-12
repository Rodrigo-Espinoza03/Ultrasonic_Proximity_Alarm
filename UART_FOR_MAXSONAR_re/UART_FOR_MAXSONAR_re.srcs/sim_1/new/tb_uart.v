`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2026 03:26:19 PM
// Design Name: 
// Module Name: tb_uart
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

module tb_uart();

reg clk;
reg sys_rst_n;
reg read_en;
reg sensor_tx;
wire sensor_rx;
wire [7:0] distance;
wire packet_valid;

// DUT
uart uart_inst (
    .clk(clk),
    .sys_rst_n(sys_rst_n),
    .read_en(read_en),
    .sensor_tx(sensor_tx),
    .sensor_rx(sensor_rx),
    .distance(distance),
    .packet_valid(packet_valid)
);

// Optional internal debug signals
wire       rxclk_en;
wire [7:0] rx_data;
wire       rx_ready;
wire       rx_ready_clr;

assign rxclk_en=uart_inst.rxclk_en;
assign rx_data=uart_inst.rx_data;
assign rx_ready=uart_inst.rx_ready;
assign rx_ready_clr=uart_inst.rx_ready_clr;

localparam CLK_PERIOD= 20;   // 50 MHz
localparam CYCLES_PER_SAMPLE=325;  // from baudrate divider: 50e6/(9600*16)
localparam BIT_CLKS=CYCLES_PER_SAMPLE * 16; // 5200 clocks/bit

// clock generation
initial clk = 1'b0;
always #(CLK_PERIOD/2) clk = ~clk;

// Send one UART byte, 8N1, LSB first
task send_uart_byte;
    input [7:0] tx_byte;
    integer i;
    begin
        // start bit
        sensor_tx = 1'b0;
        repeat (BIT_CLKS) @(posedge clk);

        // data bits
        for (i = 0; i < 8; i = i + 1) begin
            sensor_tx = tx_byte[i];
            repeat (BIT_CLKS) @(posedge clk);
        end

        // stop bit
        sensor_tx = 1'b1;
        repeat (BIT_CLKS) @(posedge clk);
    end
endtask

initial begin
    // initial values
    sys_rst_n = 1'b0;
    read_en   = 1'b0;
    sensor_tx = 1'b1;   // UART idle high

    // hold reset for a few clocks
    repeat (10) @(posedge clk);
    sys_rst_n = 1'b1;

    // turn sensor control on
    repeat (10) @(posedge clk);
    read_en = 1'b1;

    // wait a little
    repeat (20) @(posedge clk);

    // Send MAXSONAR packet: R123<CR>
    send_uart_byte(8'h52); // 'R'
    send_uart_byte(8'h31); // '1'
    send_uart_byte(8'h32); // '2'
    send_uart_byte(8'h33); // '3'
    send_uart_byte(8'h0D); // carriage return

    // Wait for parser to flag valid packet
    wait (packet_valid == 1'b1);

    // Check result
    if (distance == 8'd123)
        $display("PASS: distance = %0d at time %0t", distance, $time);
    else
        $display("FAIL: expected 123, got %0d at time %0t", distance, $time);

    // Check control output too
    if (sensor_rx == 1'b1)
        $display("PASS: sensor_rx follows read_en");
    else
        $display("FAIL: sensor_rx did not go high");

    repeat (20) @(posedge clk);
    $stop;
end

endmodule