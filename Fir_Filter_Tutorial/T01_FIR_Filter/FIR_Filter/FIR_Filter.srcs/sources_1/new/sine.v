// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2023 18:07:20
// Design Name: 
// Module Name: sine
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


module sine(
    input clk,
    output reg [15:0] sinus
    );
parameter SIZE = 1024;
reg [15:0] rom_memory [SIZE-1:0];
integer i;

initial begin
    $readmemh("sine.mem", rom_memory); // File with the signal
    i = 0;
end

// At every positive edge of the clock, output a sine wave sample.
always@(posedge clk)
begin
    sinus = rom_memory[i];
    i = i+1;
    if (i == SIZE)
        i = 0;
end
endmodule
