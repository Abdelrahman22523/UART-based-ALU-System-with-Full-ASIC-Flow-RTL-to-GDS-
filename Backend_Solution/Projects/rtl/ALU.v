module ALU_16_bit #(
    parameter data_width = 8,
    parameter fun_width  = 4
) (	

      // Port list with decleration
	input  wire [data_width-1:0] A,
	input  wire [data_width-1:0] B,
	input  wire                  EN,
	input  wire [fun_width-1:0]  ALU_FUN, 
    input  wire                  clk,
    input  wire       	         rst, 
	output reg  [data_width*2-1:0] ALU_OUT,
	output reg                   ALU_OUT_VLD
);


reg [data_width*2:0] ALU_OUT_Comb;
reg                ALU_OUT_VLD_Comb;


// Sequential part (synchronous with clock)
always @(posedge clk or negedge rst) // every positive edge
begin
	if(!rst)
	begin 
		ALU_OUT       <= 'b0 ;
		ALU_OUT_VLD   <= 1'b0 ;	
	end else 
	begin  
		ALU_OUT       <= ALU_OUT_Comb ;
		ALU_OUT_VLD   <= ALU_OUT_VLD_Comb ;
	end
end

// Combinational logic part
always @(*) 
begin

	ALU_OUT_VLD_Comb = 1'b0 ;
   	ALU_OUT_Comb     = 'b0 ;

	if(EN)
	begin   
		ALU_OUT_VLD_Comb = 1'b1 ;
		case (ALU_FUN) 
		4'b0000: begin
		          ALU_OUT_Comb = A+B;
		         end

		4'b0001: begin
		          ALU_OUT_Comb = A-B;
		         end

		4'b0010: begin
		          ALU_OUT_Comb = A*B;
		         end

		4'b0011: begin
		          ALU_OUT_Comb = A/B;
		         end

		4'b0100: begin
		          ALU_OUT_Comb = A & B;
		         end

		4'b0101: begin
		          ALU_OUT_Comb = A | B;
		         end

		4'b0110: begin
		          ALU_OUT_Comb = ~ (A & B);
		         end

		4'b0111: begin
		          ALU_OUT_Comb = ~ (A | B);
		         end 

		4'b1000: begin
		          ALU_OUT_Comb =  (A ^ B);
		         end

		4'b1001: begin
		          ALU_OUT_Comb = ~ (A ^ B);
		         end  

		4'b1010: begin
		         if (A==B)
		            ALU_OUT_Comb = 'b1;
		         else
		            ALU_OUT_Comb = 'b0;
		         end

		4'b1011: begin
		          if (A>B)
		            ALU_OUT_Comb = 'b10;
		          else
		            ALU_OUT_Comb = 'b0;
		         end 

		4'b1100: begin
		          if (A<B)
		            ALU_OUT_Comb = 'b11;
		          else
		            ALU_OUT_Comb = 'b0;
		         end   

		4'b1101: begin
		          ALU_OUT_Comb = A>>1;
		         end

		4'b1110: begin 
		          ALU_OUT_Comb = A<<1;
		         end

		default: begin
	           ALU_OUT_Comb = 'b0;
	         end
		endcase

	end else
	begin
		ALU_OUT_VLD_Comb = 1'b0 ;
	end 
end

endmodule