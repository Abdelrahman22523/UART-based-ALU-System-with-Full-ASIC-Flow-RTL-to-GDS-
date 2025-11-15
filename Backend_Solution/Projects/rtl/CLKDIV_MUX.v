module CLKDIV_MUX #(parameter WIDTH = 8)(
	input  wire [5:0]       in,
	output reg  [WIDTH-1:0] out
);


always @(*)
begin
		case(in) 
		6'b100000: 
		begin
				out = 'd1 ;
		end
		6'b010000: 
		begin
				out = 'd2 ;
		end	
		6'b001000: 
		begin
				out = 'd4 ;
		end	
		6'b000100:
		begin
				out = 'd8 ;
		end
		default: 
		begin
				out = 'd1 ;
		end					
		endcase
end	
  
  
  
  
endmodule