module RX_FSM #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (	
	input  wire 					   clk,        // clock
	input  wire 					   rst,        // for reset
	input  wire 					   rx_in,
	input  wire 					   par_en,
	input  wire 					   par_err,
	input  wire 					   strt_glitch,
	input  wire 					   stp_err,
	input  wire [sampling_bits-1 : 0]  prescale,
	input  wire [sampling_bits-1 : 0]  edge_cnt,
	input  wire [bit_cnt_w-1 : 0]      bit_cnt,
	output reg						   par_chk_en,
	output reg						   strt_chk_en,
	output reg						   stp_chk_en,
	output reg						   deser_en,
	output reg						   enable,
	output reg						   dat_samp_en,
	output reg						   data_valid
);


/*typedef enum bit [2:0] {
		IDLE,
    	START,
        DATA,
        PARITY,
        STOP
}state

state   current_state, next_state;
*/


// State machine states
parameter [2:0] IDLE   = 3'b000,
				START  = 3'b001,
        		DATA   = 3'b010,
        		PARITY = 3'b011,
        		STOP   = 3'b100;

reg [2:0]   current_state,
            next_state;

            
reg data_valid_c;
wire [sampling_bits-2:0] mid;  


assign mid = prescale >> 1;   // divide by 2



// current_state transition 		
always @(posedge clk or negedge rst)  // Active low reset
begin
 	if(!rst)
    begin
    	current_state <= IDLE;
    	data_valid    <= 1'b0;
    end else
    begin
        current_state <= next_state;
        data_valid    <= data_valid_c;
    end
end


 // next_state logic
always @(*) 
begin

	case (current_state)

		IDLE: 
		begin
			if (!rx_in) 
			begin
				next_state = START;
			end else 
			begin
				next_state = IDLE;
		    end	
		end


		START:                             // start bit
		begin
			if ( bit_cnt == 4'd0 && edge_cnt == (prescale - 1)) 
			begin
				if (strt_glitch) 
				begin
					next_state = IDLE;
				end else 
				begin
					next_state = DATA;
				end
			end else
			begin
				next_state = START;
			end
		end


		DATA: 
		begin
			if ( bit_cnt == frame_data && edge_cnt == (prescale - 1))                  // wait for data trancition end
			begin
				if (par_en) 
				begin
					next_state = PARITY;
				end else
				begin
					next_state = STOP;
				end
			end else 
			begin
				next_state = DATA;
			end
		end

		PARITY:                            // parity bit
		begin
			if ( bit_cnt == 4'd9 && edge_cnt == (prescale - 1)) 
			begin
				if (par_err) 
				begin
					next_state = IDLE;
				end else 
				begin
					next_state = STOP;
				end
			end else
			begin
				next_state = PARITY;
			end
		end

		STOP:                              // stop bit
		begin
			if (edge_cnt == (prescale - 1)) 
			begin
				if (!rx_in) 
				begin
					next_state = START;
				end else
				begin
					next_state = IDLE;
				end
			end else 
			begin
				next_state = STOP;
			end
		end


		default:      
		begin
		 	next_state = IDLE;
		end 
			 
	endcase
end




// output logic
always @(*) 
begin

	par_chk_en   = 1'b0;
    stp_chk_en   = 1'b0;
    strt_chk_en  = 1'b0;
    deser_en     = 1'b0;
    enable       = 1'b0;
    dat_samp_en  = 1'b0;
    data_valid_c = 1'b0;

	case (current_state)

		IDLE: 
		begin
			if (!rx_in) 
			begin
				enable  = 1'b1;
			end
		end
		

		START: 
		begin
			enable       = 1'b1;
			dat_samp_en  = 1'b1;
			if ( edge_cnt >= (mid + 2)) 
			begin
				strt_chk_en  = 1'b1;
			end 

			if ( edge_cnt == (prescale - 1)) 
			begin
				strt_chk_en  = 1'b0;
				if (strt_glitch) 
				begin
					enable       = 1'b0;
					dat_samp_en  = 1'b0;
				end
			end
		end


		DATA: 
		begin
			enable       = 1'b1;
			dat_samp_en  = 1'b1;
			if (edge_cnt >= (mid + 2)) 
			begin
				deser_en = 1'b1;
			end
		end


		PARITY: 
		begin
			enable       = 1'b1;
			dat_samp_en  = 1'b1;
			if (edge_cnt >= (mid + 2)) 
			begin
				par_chk_en = 1'b1;
			end 

			if ( edge_cnt == (prescale - 1)) 
			begin
				par_chk_en	 = 1'b0;
				if (par_err) 
				begin
					enable       = 1'b0;
					dat_samp_en  = 1'b0;
				end
			end
				
		end

		STOP:
		begin
			enable       = 1'b1;
			dat_samp_en  = 1'b1;
			if ( edge_cnt >= (mid + 2)) 
			begin
				stp_chk_en = 1'b1;
			end
			if (edge_cnt == (prescale - 1)) 
			begin
				enable       = 1'b0;
				dat_samp_en  = 1'b0;
				stp_chk_en   = 1'b0;
				if (!stp_err) 
				begin
					data_valid_c = 1'b1; 
				end
			end

		end

		default:
		begin
			data_valid_c = 1'b0;
			par_chk_en   = 1'b0;
			stp_chk_en   = 1'b0;
			strt_chk_en  = 1'b0;
			enable       = 1'b0;
			dat_samp_en  = 1'b0;
			deser_en     = 1'b0;
		end 
			 
	endcase
end


endmodule