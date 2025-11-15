module DATA_SYNC # ( 
    parameter NUM_STAGES = 2 ,
    parameter BUS_WIDTH  = 8 
)(
	input  wire                 clk,
	input  wire                 rst,
	input  wire [BUS_WIDTH-1:0] unsync_bus,
	input  wire                 bus_enable,
	output reg  [BUS_WIDTH-1:0] sync_bus,
	output reg                  enable_pulse
);


reg [NUM_STAGES-1:0] sync_reg;
reg pulse_flop;


wire [BUS_WIDTH-1:0] sync_bus_c;
wire pulse_sig;
	
	// Main synchronization logic
    always @(posedge clk or negedge rst)
    begin
        if(!rst)      // active low
        begin
            sync_reg     <= 'b0;
            sync_bus     <= 'b0;
        end else
        begin
            sync_reg     <= {sync_reg[NUM_STAGES-2:0],bus_enable};
            sync_bus     <= sync_bus_c;
        end
    end

    // pulse generator
    always @(posedge clk or negedge rst) 
    begin
        if(!rst) 
        begin
            pulse_flop   <= 0;
            enable_pulse <= 0;
        end else
        begin
            pulse_flop   <= sync_reg[NUM_STAGES-1];
            enable_pulse <= pulse_sig; 
        end
    end
    assign pulse_sig  = sync_reg[NUM_STAGES-1] & ~pulse_flop;


    // multiplexer
    assign sync_bus_c = pulse_sig ? unsync_bus : sync_bus;
    
    
endmodule