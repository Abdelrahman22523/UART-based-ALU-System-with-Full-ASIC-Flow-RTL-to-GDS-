module SYS_CTRL #(
    parameter alu_data   = 8,
    parameter fun_width  = 4,
    parameter frame_data = 8,
    parameter addr_bits  = 4
) (

	input  wire				     clk,
	input  wire				     rst,
	input  wire [alu_data-1:0]   alu_out,
	input  wire 				 out_vld,
	input  wire [frame_data-1:0] rddata,
	input  wire                  rddata_vld,
	input  wire [frame_data-1:0] rx_p_data,
	input  wire 				 rx_d_vld,
	input  wire                  fifo_full,
	output reg  [fun_width-1:0]  alu_fun,
	output reg					 alu_en,
	output reg					 clk_en,
	output reg  [addr_bits-1:0]  address,
	output reg  [frame_data-1:0] wr_data,
	output reg					 wr_en,
	output reg					 rd_en,
	output reg	[frame_data-1:0] tx_p_data,
	output reg					 tx_d_vld,
	output reg					 clk_div_en,
);


typedef enum bit [2:0] {
		IDLE,
    	FRAME0,
        FRAME1,
        FRAME2,
        FRAME3,
        OPREATION
}state

state   current_state, next_state;

reg [frame_data-1:0] cmd;



/*
// State machine states
parameter [2:0] IDLE      = 3'd000,
				FRAME0    = 3'd001,
        		FRAME1    = 3'd010,
        		FRAME2    = 3'd011,
        		FRAME3    = 3'd100,
        		OPERATION = 3'b101

reg [2:0]   current_state,
            next_state;
*/


// current_state transition 		
always @(posedge clk or negedge rst)  // Active low reset
begin
 	if(!rst)
    begin
    	current_state <= IDLE;
    end else
    begin
        current_state <= next_state;
    end
end



// next_state logic
always @(*) 
begin

	case (current_state)

		IDLE:
		begin
			if (rx_d_vld) 
			begin
				next_state = FRAME0;
			end else
			begin
				next_state = current_state;
			end
		end

		FRAME0:
		begin
			if (rx_d_vld) 
			begin
				next_state = FRAME1;
			end else
			begin
				next_state = current_state;
			end
		end

		FRAME1:
		begin
			case (cmd)

				8'hAA:
				begin
					if (rx_d_vld) 
					begin
						next_state = FRAME2;
					end else
					begin
						next_state = current_state;
					end;
				end

				8'hBB:
				begin
					next_state = OPREATION;
				end

				8'hCC: 
				begin
					if (rx_d_vld) 
					begin
						next_state = FRAME2;
					end else
					begin
						next_state = current_state;
					end;
				end

				8'hDD: 
				begin
					next_state = OPREATION;
				end

				default: 
				begin
					next_state = IDLE;
				end
			endcase
		end

		FRAME2: 
		begin
			case (cmd)

				8'hAA: 
				begin
					next_state = OPREATION;
				end

				8'hCC: 
				begin
					if (rx_d_vld) 
					begin
						next_state = FRAME3;
					end else
					begin
						next_state = current_state;
					end;
				end
			
				default : 
				begin
					next_state = IDLE;
				end
			endcase
		end

		FRAME3: 
		begin
			next_state = OPREATION;
		end

		OPREATION: 
		begin
			if (rx_d_vld) 
			begin
				next_state = FRAME0;
			end else
			begin
				next_state = IDLE;
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

	alu_fun    = 'b0;
	alu_en     = 1'b0;
	address    = 'b0;
	wr_data    = 'b0;
	wr_en      = 1'b0;
	rd_en      = 1'b0;
	tx_p_data  = 'b0;
	tx_d_vld   = 1'b0;
	clk_div_en = 1'b1;

	if (cmd == 8'hCC || cmd == 8'hDD) 
	begin
		clk_en = 1'b1; 
	end else
	begin
		clk_en = 1'b0;
	end

	case (current_state)

		IDLE: 
		begin
			cmd = 1'b0;
		end
		

		FRAME0: 
		begin
			if (rx_d_vld) 
			begin
				cmd = rx_p_data;
			end else
			begin
				cmd = 'b0;
			end;
		end


		FRAME1: 
		begin
			case (cmd)

				8'hAA:
				begin
					address = rx_p_data;
				end

				8'hBB:
				begin
					address = rx_p_data;
					rd_en   = 1'b1;
				end

				8'hCC: 
				begin
					address = 'b0;
					wr_data = rx_p_data;
					wr_en   = 1'b1;
				end

				8'hDD: 
				begin
					alu_fun = rx_p_data;  
					alu_en  = 1'b1;
				end

			endcase
		end


		FRAME2: 
		begin

			if (cmd == 8'hAA) 
			begin
				wr_data = rx_p_data; 
				wr_en   = 1'b1;
			end else
			if (cmd == 8'hCC) 
			begin
				address = 'b1;
				wr_data = rx_p_data;
				wr_en   = 1'b1;
			end

		end

		FRAME3:
		begin
			alu_fun = rx_p_data ; 
			alu_en  = 1'b1;
		end

		OPREATION: 
		begin
			case (cmd)

				8'hBB:
				begin
					if (rddata_vld && !fifo_full) 
					begin
						tx_p_data = rddata;
						tx_d_vld  = 1'b1;
					end
				end

				8'hCC: 
				begin
					if (out_vld && !fifo_full) 
					begin
						tx_p_data = alu_out;
						tx_d_vld  = 1'b1;
					end
				end

				8'hDD: 
				begin
					if (out_vld && !fifo_full) 
					begin
						tx_p_data = alu_out;
						tx_d_vld  = 1'b1;
					end
				end

			endcase
			cmd = 1'b0;
		end


			 
	endcase
end

endmodule