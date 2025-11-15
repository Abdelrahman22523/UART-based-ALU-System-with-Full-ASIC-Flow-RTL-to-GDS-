module FIFO_MEM_CNTRL #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3
)(
	input  wire 				 w_clk,
    input  wire                  w_rst,
    input  wire 				 wclken,
    input  wire [DATA_WIDTH-1:0] wr_data,
    input  wire [ADDR_WIDTH-1:0] wr_addr,
    input  wire [ADDR_WIDTH-1:0] rd_addr,
    output reg  [DATA_WIDTH-1:0] rd_data
);

integer i;

reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];


	always @(posedge w_clk or negedge w_rst) 
	begin
        if (!w_rst) begin
            for (i = 0; i < (1<<ADDR_WIDTH); i = i + 1'b1) 
            begin
                mem[i] <= 'b0;
            end
        end else
        begin
            if (wclken)
            begin
                mem[wr_addr] <= wr_data;
            end  
        end     
    end
    
    always @(*) 
    begin
    	rd_data = mem [rd_addr];
    end




endmodule