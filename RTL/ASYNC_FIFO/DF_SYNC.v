module DF_SYNC #(
    parameter WIDTH = 3,
    parameter STAGES = 2
)(
	input  wire 		  clk,
	input  wire  		  rst,
	input  wire [WIDTH:0] data_in,
	output wire [WIDTH:0] data_out
);

reg [WIDTH:0] sync_reg[STAGES-1:0];

 integer i;

	always @(posedge clk or negedge rst) 
	begin
		if(!rst) 
		begin
			for (i=0; i<STAGES; i=i+1)
			begin
				sync_reg[i] <= 'b0;
			end
		end else 
		begin
			sync_reg[0] <= data_in;
            for (i=1; i<STAGES; i=i+1)
            begin
            	sync_reg[i] <= sync_reg[i-1];
            end
        end
	end

	assign data_out = sync_reg[STAGES-1];

endmodule