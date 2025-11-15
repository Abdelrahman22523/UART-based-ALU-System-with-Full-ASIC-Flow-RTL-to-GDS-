module mux (
	input  wire       clk,        // clock
	input  wire       rst,        // for reset
	input  wire [1:0] mux_sel,    // 4 to 1 MUX
	input  wire       ser_data,   // data input
	input  wire       par_bit,    // parity bit
	output reg        tx_out      // output of the system
);


reg mux_out ;

always @(*) 
begin
	case (mux_sel)  // always make outputs regestered

		2'b00:
			mux_out = 1'b0;      // start bit

		2'b01:
			mux_out = 1'b1;      // stop bit

		2'b10:
			mux_out = ser_data;  // data in
		
		2'b11: 
			mux_out = par_bit;   // parity bit 

		default: 
			mux_out = 1'b1;
	endcase
	
end


//register mux output
always @ (posedge clk or negedge rst)
begin
	if(!rst)
    begin
    	tx_out <= 'b0 ;
    end else
    begin
    	tx_out <= mux_out ;
    end 
end 

endmodule 