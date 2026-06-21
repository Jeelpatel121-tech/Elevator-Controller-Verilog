`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: jeel patel
// 
// Create Date: 11.03.2026 12:29:07
// Design Name: 
// Module Name: Elevator_controller
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


module Elevator_controller(
    input clk,
    input reset,
    input [1:0] request,
    output reg up,down
    );
    parameter F0 = 2'b00,
              F1 = 2'b01,
              F2 = 2'b10,
              F3 = 2'b11;
              
    reg [1:0] state,next_state;
    
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            state <= F0;
        else
            state <= next_state;
    end
    
    always@(*)
    begin
    up <= 0;
    down <= 0;
        case(state)
            F0:begin
                if(request == F1)
                begin
                    up <= 1;
                    down <= 0;
                    next_state = F1;
                end
                else if(request == F2)
                begin
                    up <= 1;
                    down <= 0;
                    next_state = F2;
                end
                else if(request == F3)
                begin
                    up <= 1;
                    down <= 0;
                    next_state = F3;
                end
                else
                begin
                    next_state = F0;
                end
            end
            
            F1:begin
                if(request == F0)
                begin
                    down <= 1;
                    up <= 0;
                    next_state = F0;
                end
                else if(request == F2)
                begin
                    up <= 1;
                    down <= 0;
                    next_state = F2;
                end
                else if(request == F3)
                begin
                    up <= 1;
                    down <= 0;
                    next_state = F3;
                end
                else
                begin
                    next_state = F1;
                end
            end
            
            F2:begin
                if(request == F0)
                begin
                    up <= 0;
                    down <= 1;
                    next_state = F0;
                end
                else if(request == F1)
                begin
                    up <= 0;
                    down <= 1;
                    next_state = F1;
                end
                else if(request == F3)
                begin
                    up <= 1;
                    down <= 0;
                    next_state = F3;
                end
                else
                begin
                    next_state = F2;
                end
            end
            
            F3:begin
                if(request == F0)
                begin
                    up <= 0;
                    down <= 1;
                    next_state = F0;
                end
                else if(request == F1)
                begin
                    up <= 0;
                    down <= 1;
                    next_state = F1;
                end
                else if(request == F2)
                begin
                    up <= 0;
                    down <= 1;
                    next_state = F2;
                end
                else
                begin
                    next_state = F3;
                end
            end
            
            default:next_state = F0;
        endcase
    end
endmodule
