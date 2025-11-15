module SYS_CTRL #(
    parameter alu_data   = 8,
    parameter fun_width  = 4,
    parameter frame_data = 8,
    parameter addr_bits  = 4
) (

	input  wire				     clk,
	input  wire				     rst,
	input  wire [alu_data*2-1:0] alu_out,
	input  wire 				 out_vld,
	input  wire [frame_data-1:0] rddata,
	input  wire                  rddata_vld,
	input  wire                  wr_done,
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
	output reg					 clk_div_en
);


/*typedef enum bit [2:0] {
		IDLE,
    	STATE0,
        STATE1,
        STATE2,
        STATE3,
        STATE4
} state;

state   current_state, next_state;*/

reg [1:0]            cmd_reg;
reg [addr_bits-1:0]  addr_reg;
reg [fun_width-1:0]  alu_fun_reg;



// State machine states
parameter [2:0] IDLE      = 3'b000,
				STATE0    = 3'b001,
        		STATE1    = 3'b010,
        		STATE2    = 3'b011,
        		STATE3    = 3'b100,
                STATE4    = 3'b101;

reg [2:0]   current_state,
            next_state;



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
				next_state = STATE0;
			end else
			begin
				next_state = current_state;
			end
		end

		STATE0:
		begin
			if (rx_d_vld) 
			begin
				if (cmd_reg == 2'b11 || cmd_reg == 2'b01) 
				begin
					next_state = STATE3;
				end else
				begin
					next_state = STATE1;
				end
			end else
			begin
				next_state = current_state;
			end
		end

		STATE1:
		begin
			if (rx_d_vld) 
			begin
				if (cmd_reg == 2'b10) 
				begin
					next_state = STATE3;
				end else
				if (cmd_reg == 2'b00) 
				begin
					next_state = STATE2;
				end else
				begin
					next_state = IDLE;
				end
			end else
			begin
				next_state = current_state;
			end
		end

		STATE2: 
		begin

			if (rx_d_vld) 
			begin
				next_state = STATE3;
			end else
			begin
				next_state = current_state;
			end
		end

		STATE3: 
		begin
            if (cmd_reg == 2'b10 || cmd_reg == 2'b11) 
            begin
                if (tx_d_vld || wr_done) 
                begin
                    if (rx_d_vld) 
                    begin
                        next_state = STATE0;
                    end else
                    begin
                        next_state = IDLE;
                    end
                end else
                begin
                    next_state = current_state;
                end  
            end else
            begin
                if (tx_d_vld) 
                begin
                    next_state = STATE4;
                end else
                begin
                    next_state = current_state;
                end
            end
			
		end

        STATE4: 
        begin
            if (tx_d_vld) 
            begin
                if (rx_d_vld) 
                begin
                    next_state = STATE0;
                end else
                begin
                    next_state = IDLE;
                end
            end else
            begin
                next_state = current_state;
            end
        end

		default:      
		begin
			next_state = IDLE;
		end 
			 
	endcase
end




always @(posedge clk or negedge rst) 
begin
    if (!rst) 
    begin
        cmd_reg       <= 2'b0;
        addr_reg      <= 'b0;
        alu_fun_reg   <= 'b0;
    end else 
    begin
        
        case (current_state)
            IDLE: 
            begin
                if (rx_d_vld) 
                begin
                    cmd_reg <= rx_p_data[1:0];
                end else
                begin
                	cmd_reg <= 'b0;
                end
            end
            
            STATE0: begin
                if (rx_d_vld) 
                begin
                    case (cmd_reg)
                        2'b10: 
                        begin
                        	addr_reg <= rx_p_data[addr_bits-1:0];
                        end 
                        2'b11: 
                        begin
                        	addr_reg <= rx_p_data[addr_bits-1:0];
                        end 
                        2'b01:
                        begin
                         	alu_fun_reg <= rx_p_data[fun_width-1:0];
                        end 
                    endcase
                end
            end
            
            STATE1: 
            begin

            end
            
            STATE2: 
            begin
                if (rx_d_vld) 
                begin
                    alu_fun_reg <= rx_p_data[fun_width-1:0];
                end
            end
            
            STATE3: 
            begin
                if (cmd_reg == 2'b10 || cmd_reg == 2'b11) 
                begin
                    if ((tx_d_vld || wr_done) && rx_d_vld) 
                    begin
                        cmd_reg <= rx_p_data[1:0];
                    end else
                    begin
                        cmd_reg <= 'b0;
                    end
                end   
            end

            STATE4: 
            begin
                if (cmd_reg == 2'b00 || cmd_reg == 2'b01) 
                begin
                    if ((tx_d_vld || wr_done) && rx_d_vld) 
                    begin
                        cmd_reg <= rx_p_data[1:0];
                    end else
                    begin
                        cmd_reg <= 'b0;
                    end
                end
                
            end
        endcase
    end
end


always @(*) 
begin
    alu_fun     = 'b0;
    alu_en      = 1'b0;
    clk_en      = 1'b0;
    address     = 'b0;
    wr_data     = 'b0;
    wr_en       = 1'b0;
    rd_en       = 1'b0;
    tx_p_data   = 'b0;
    tx_d_vld    = 1'b0;
    clk_div_en  = 1'b1; 
    
    // Clock enable logic based on command
    if (cmd_reg == 2'b00 || cmd_reg == 2'b01) 
    begin
        clk_en = 1'b1;
    end
    
    case (current_state)
        IDLE: 
        begin

        end
        
        STATE0: 
        begin
            if (rx_d_vld) 
            begin
                case (cmd_reg)
                    2'b10: 
                    begin
                        address = rx_p_data[addr_bits-1:0];
                    end
                    
                    2'b11: 
                    begin
                        address = rx_p_data[addr_bits-1:0];
                        rd_en   = 1'b1;
                    end
                    
                    2'b00: 
                    begin
                        address = 4'b0000;
                        wr_data = rx_p_data;
                        wr_en   = 1'b1;
                    end
                    
                    2'b01: 
                    begin
                        alu_fun = rx_p_data[fun_width-1:0];
                        alu_en  = 1'b1;
                    end
                endcase
            end
        end
        
        STATE1: 
        begin
            if (rx_d_vld) 
            begin
                case (cmd_reg)
                2'b10: 
                begin
                    address = addr_reg;
                    wr_data = rx_p_data;
                    wr_en   = 1'b1;
                end
                
                2'b00: 
                begin
                    address = 4'b0001;  
                    wr_data = rx_p_data;
                    wr_en   = 1'b1;
                end
                endcase
            end
        end
        
        STATE2: 
        begin
            if (rx_d_vld) 
            begin
                alu_fun = rx_p_data[fun_width-1:0];
                alu_en  = 1'b1;
            end
        end
        
        STATE3: 
        begin
            if (cmd_reg == 2'b11) 
            begin
                address = addr_reg;
                rd_en = 1'b1;
                if (rddata_vld && !fifo_full) 
                begin
                    tx_p_data = rddata;
                    tx_d_vld = 1'b1;
                end
            end else
            if (cmd_reg == 2'b00 || cmd_reg == 2'b01) 
            begin
                alu_fun = alu_fun_reg;
                alu_en = 1'b1;
                if (out_vld && !fifo_full) 
                begin
                    tx_p_data = alu_out[7:0];
                    tx_d_vld = 1'b1;
                end
            end
        end

        STATE4: 
        begin
            alu_fun = alu_fun_reg;
            alu_en = 1'b1;
            if (out_vld && !fifo_full) 
            begin
                tx_p_data = alu_out[15:8];
                tx_d_vld = 1'b1;
            end
        end
    endcase
end

endmodule