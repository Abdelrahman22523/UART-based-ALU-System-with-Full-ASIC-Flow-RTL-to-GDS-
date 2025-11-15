module TX_FSM (
	input  wire       clk,        // clock
	input  wire       rst,        // for reset
	input  wire       data_valid,
	input  wire       par_en,
	input  wire       ser_done,
	output reg  [1:0] mux_sel,
	output reg        ser_en,
	output reg        busy
);


/*typedef enum bit [2:0] {
		IDLE,
    	START,
        DATA,
        PARITY,
        STOP
}state;

state   current_state, next_state;*/


reg busy_c ;


// State machine states
parameter [2:0] IDLE   = 3'b000,
				START  = 3'b001,
        		DATA   = 3'b010,
        		PARITY = 3'b011,
        		STOP   = 3'b100;

reg [2:0]   current_state,
            next_state;


// current_state transition 		
always @(posedge clk or negedge rst)  // Active low reset
begin
 	if(!rst)
    begin
    	current_state <= IDLE ;
    end else
    begin
        current_state <= next_state ;
    end
end


 // next_state logic
always @(*)
begin
	case (current_state)
		IDLE: 
		begin
			if (data_valid) begin
				next_state = START;
			end else 
			begin
				next_state = IDLE;
		    end	
		end


		START:                             // start bit
		begin
			next_state = DATA;
		end


		DATA: 
		begin
			if (ser_done)                  // wait for data trancition end
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
			next_state = STOP;
		end

		STOP:                              // stop bit
		begin
    		next_state = IDLE;
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

	case (current_state)

		IDLE: 
		begin
			mux_sel  = 2'b01;
			ser_en   = 1'b0;
			busy_c   = 1'b0;
		end

		START: 
		begin
			mux_sel  = 2'b00;
			ser_en   = 1'b0;
			busy_c   = 1'b1;
		end


		DATA: 
		begin
			ser_en   = 1'b1;
			mux_sel  = 2'b10;
			busy_c   = 1'b1;
			if(ser_done)
			begin
				ser_en = 1'b0 ;
			end else
			begin
				ser_en   = 1'b1;
			end	
		end


		PARITY: 
		begin
			mux_sel  = 2'b11;
			ser_en   = 1'b0;
			busy_c   = 1'b1;
		end

		STOP:
		begin
			mux_sel  = 2'b01;
			ser_en   = 1'b0;
    		busy_c   = 1'b1;
		end

		default:
		begin
			mux_sel  = 2'b01;
			ser_en   = 1'b0;
			busy_c   = 1'b0;
		end 
			 
	endcase
end

always @ (posedge clk or negedge rst)
begin
	if(!rst)
	begin
		busy <= 1'b0 ;
	end else
	begin
		busy <= busy_c ;
	end
end


endmodule