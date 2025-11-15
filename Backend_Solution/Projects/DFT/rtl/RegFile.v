module Register_File_8_x_16 # (
    parameter ADDR_WIDTH = 4,
    parameter MEM_DEPTH = 16,
    parameter MEM_WIDTH = 8)
(
    // Port list with decleration
    input  wire                  WrEn,
    input  wire                  RdEn,
    input  wire                  CLK,
    input  wire                  RST,
    input  wire [ADDR_WIDTH-1:0] address,
    input  wire [MEM_WIDTH-1:0]  WrData,
    output reg  [MEM_WIDTH-1:0]  RdData,
    output reg                   RdData_VLD,
    output reg                   wr_done,
    output wire [MEM_WIDTH-1:0]  REG0,
    output wire [MEM_WIDTH-1:0]  REG1,
    output wire [MEM_WIDTH-1:0]  REG2,
    output wire [MEM_WIDTH-1:0]  REG3
);

    // 2D Array
    reg [MEM_WIDTH-1:0] Reg_File [0:MEM_WIDTH-1];

    always @(posedge CLK or negedge RST)  // Active low rest
	begin
        if (!RST)
        begin
            RdData_VLD  <= 1'b0;
            wr_done     <= 1'b0;
            RdData      <= 'b0;
            Reg_File[0] <= 'b0 ;
            Reg_File[1] <= 'b0 ;
            Reg_File[2] <= 'b100000_01 ;
            Reg_File[3] <= 'b0010_0000 ;
            Reg_File[4] <= 'b0 ;
            Reg_File[5] <= 'b0 ;
            Reg_File[6] <= 'b0 ;
            Reg_File[7] <= 'b0 ;
        end else 
        if (WrEn && !RdEn) 
		begin
            Reg_File[address] <= WrData; // Write has higher piriority than read
            wr_done           <= 1'b1;
		end else 
        if (!WrEn && RdEn)
        begin
            RdData     <= Reg_File[address]; 
            RdData_VLD <= 1'b1;
        end else
        begin
            RdData_VLD <= 1'b0;
            wr_done    <= 1'b0;
        end
    end

    assign REG0 = Reg_File[0];
    assign REG1 = Reg_File[1];
    assign REG2 = Reg_File[2];
    assign REG3 = Reg_File[3];


endmodule