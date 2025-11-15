`timescale 1ns/1ps
module SYSTEM_TB #(
    parameter DATA_WIDTH   = 8, 
    parameter PACKET_WIDTH = 11,
    parameter REF_PERIOD   = 10,
    parameter UART_PERIOD  = 271.26736111
    ) ();


	// Signals for DUT
	 reg        RST_N;
	 reg        UART_CLK;
	 reg        REF_CLK;
	 reg        UART_RX_IN;
     wire       UART_TX_O;
     wire       parity_error;
     wire       framing_error;


     // Storage
    reg [PACKET_WIDTH-1:0] actual_data;
    reg [PACKET_WIDTH-1:0] expected_data;
    reg [DATA_WIDTH*2-1:0] actual_alu_data;
    reg [DATA_WIDTH*2-1:0] expected_alu_data;
    reg [PACKET_WIDTH-1:0] packet;
    reg                    parity_bit;
    reg [DATA_WIDTH-1:0]   data;


    wire TX_CLK = dut.U0_UART.tx_clk;
    wire RX_CLK = dut.U0_UART.rx_clk;

    // needed variables
    integer count      = 0;
    integer pass       = 0;
    integer fail       = 0;
    integer i          = 0;
    integer j          = 0;

    // DUT instantiation
    SYS_TOP #(
        .DATA_WIDTH(DATA_WIDTH),
        .RF_ADDR(4)
    ) dut (
        .RST_N(RST_N),
        .UART_CLK(UART_CLK),
        .REF_CLK(REF_CLK),
        .UART_RX_IN(UART_RX_IN),
        .UART_TX_O(UART_TX_O),
        .parity_error(parity_error),
        .framing_error(framing_error)
    );


    // Clock Generator
    // REF clock 
    initial 
    begin
	    REF_CLK = 1'b0;
	    forever
	    	#(REF_PERIOD/2.0) REF_CLK = ~REF_CLK;  // 100 MHz
    end

    // UART clock
    initial 
    begin
	    UART_CLK = 1'b0;
	    forever
	    	#(UART_PERIOD/2.0) UART_CLK = ~UART_CLK; // 3.6864 MHz
    end


    initial
    begin
    	initialize();
    	reset();
    	

    	// Register File Write command (3 frames)
    	send_packet(8'hAA);
    	send_packet(8'b0000_0000);
    	send_packet(8'd7);

        // Register File Write command (3 frames)
        send_packet(8'hAA);
        send_packet(8'b0000_0001);
        send_packet(8'd8);

        // Register File Read command (2 frames)
        send_packet(8'hBB);
        send_packet(8'b0000_0000);
        collect();
        golden_model();
        check();

        // ALU Operation command with No operand (2 frames)
        send_packet(8'hDD);
        send_packet(8'b0000_0000);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd10);
        send_packet(8'd20);
        send_packet(8'b0000_0000);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd13);
        send_packet(8'd12);
        send_packet(8'b0000_0001);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd250);
        send_packet(8'd2);
        send_packet(8'b0000_0010);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd40);
        send_packet(8'd4);
        send_packet(8'b0000_0011);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd7);
        send_packet(8'd8);
        send_packet(8'b0000_0101);
        collect_alu();
        golden_model_alu();
        check_alu();




        set_config(8'b001000_1_1); // odd parity && prescale = 8
        repeat(1000) @(posedge REF_CLK);

        // Register File Write command (3 frames)
        send_packet(8'hAA);
        send_packet(8'b0000_0000);
        send_packet(8'd10);

        // Register File Write command (3 frames)
        send_packet(8'hAA);
        send_packet(8'b0000_0001);
        send_packet(8'd3);

        // Register File Read command (2 frames)
        send_packet(8'hBB);
        send_packet(8'b0000_0001);
        collect();
        golden_model();
        check();

        // ALU Operation command with No operand (2 frames)
        send_packet(8'hDD);
        send_packet(8'b0000_0001);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd10);
        send_packet(8'd4);
        send_packet(8'b0000_0001);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd13);
        send_packet(8'd12);
        send_packet(8'b0000_0001);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd256);
        send_packet(8'd2);
        send_packet(8'b0000_0010);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd40);
        send_packet(8'd4);
        send_packet(8'b0000_0011);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd7);
        send_packet(8'd8);
        send_packet(8'b0000_0101);
        collect_alu();
        golden_model_alu();
        check_alu();




        set_config(8'b010000_0_0); // no parity && prescale = 16
        repeat(1000) @(posedge REF_CLK);

        // Register File Write command (3 frames)
        send_packet(8'hAA);
        send_packet(8'b0000_0100);
        send_packet(8'd22);

        // Register File Read command (2 frames)
        send_packet(8'hBB);
        send_packet(8'b0000_0100);
        collect();
        golden_model();
        check();

        // Register File Write command (3 frames)
        send_packet(8'hAA);
        send_packet(8'b0000_0110);
        send_packet(8'd17);

        // Register File Read command (2 frames)
        send_packet(8'hBB);
        send_packet(8'b0000_0110);
        collect();
        golden_model();
        check();

        // ALU Operation command with No operand (2 frames)
        send_packet(8'hDD);
        send_packet(8'b0000_0010);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd2);
        send_packet(8'd3);
        send_packet(8'b0000_0010);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd13);
        send_packet(8'd12);
        send_packet(8'b0000_0001);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd256);
        send_packet(8'd2);
        send_packet(8'b0000_0010);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd40);
        send_packet(8'd4);
        send_packet(8'b0000_0011);
        collect_alu();
        golden_model_alu();
        check_alu();

        // ALU Operation command with operand (4 frames)
        send_packet(8'hCC);
        send_packet(8'd7);
        send_packet(8'd8);
        send_packet(8'b0000_0101);
        collect_alu();
        golden_model_alu();
        check_alu();




        set_config(8'b100000_0_1); // even parity && prescale = 32
        repeat(1000) @(posedge REF_CLK);

        for (j = 0; j < 16 ; j = j + 1) 
        begin
            send_packet(8'hCC);
            send_packet(8'd20);
            send_packet(8'd4);
            send_packet(j);
            collect_alu();
            golden_model_alu();
            check_alu();
        end
            

        

        // parity error
        send_error_packet(8'd7, 1'b1);
        check_error(1'b1);

        send_error_packet(8'd8, 1'b0);
        check_error(1'b0);






        $display("Number of tests: %0d, Passed: %0d, Failed: %0d", count, pass, fail);
        $finish;

    end



    task initialize();
    begin
    	RST_N           = 1'b1;
        UART_RX_IN      = 1'b1; 
        packet          = 'b0;
        parity_bit      = 1'b0;
        actual_data     = 'b0;
        expected_data   = 'b0;
        actual_alu_data = 'b0;

    end
    endtask 


    task reset();
	begin
		RST_N = 1'b1;
        @(negedge UART_CLK);
        RST_N = 1'b0;
        @(negedge UART_CLK);
        RST_N = 1'b1;
        repeat(2) @(posedge UART_CLK);
	end
    endtask



    task set_config(input reg [DATA_WIDTH-1:0] conf);
    begin
	    send_packet(8'hAA);
	    send_packet(8'b0000_0010);
	    send_packet(conf);
    end	
    endtask


    task send_packet(input reg [DATA_WIDTH-1:0] data);
    begin
    	if (dut.U0_RegFile.REG2[0]) 
    	begin
    		if (dut.U0_RegFile.REG2[1]) 
    		begin
    			parity_bit = ~^data;
    		end else
    		begin
    			parity_bit = ^data;
    		end
    		packet = {1'b1,parity_bit,data,1'b0};
    	end else
    	begin
    		packet = {1'b1,1'b1,data,1'b0};
    	end

    	for (i = 0; i < PACKET_WIDTH; i = i + 1) 
    	begin
	    	@(posedge TX_CLK);
	    	UART_RX_IN = packet[i];
	    end
    end
    endtask



    task golden_model();
    begin
        data = dut.U0_RegFile.Reg_File[dut.U0_SYS_CTRL.addr_reg];
        expected_data = 'b0;
        if (dut.U0_RegFile.REG2[0]) 
        begin
            if (dut.U0_RegFile.REG2[1]) 
            begin
                parity_bit = ~^data;
            end else
            begin
                parity_bit = ^data;
            end
            expected_data = {1'b1,parity_bit,data,1'b0};
        end else
        begin
            expected_data = {1'b1,1'b1,data,1'b0};
        end
    end
    endtask



    task collect();
    begin
        actual_data = 'b0;
        @(negedge dut.U0_UART.tx_out_s);
        for (i = 0; i < 11; i = i + 1) 
        begin
            @(negedge TX_CLK);
            actual_data[i] = UART_TX_O;
        end
    end
    endtask


    task check();
    begin
        count = count + 1;
        $display("Test case %0d",count);
        if (actual_data == expected_data) 
        begin
            pass = pass + 1;
            $display("Test passed");
            $display("Actual data:   %8b", actual_data);
            $display("Expected data: %8b", expected_data);
        end else 
        begin
            fail = fail + 1;
            $display("Test failed at time: %0t", $time);
            $display("Actual data:   %8b", actual_data);
            $display("Expected data: %8b", expected_data);
        end
    end
    endtask




    task send_error_packet(
        input reg [DATA_WIDTH-1:0] data,
        input reg                  error
        );
    begin
        if (error) 
        begin
            if (dut.U0_RegFile.REG2[1]) 
            begin
                parity_bit = ^data;
            end else
            begin
                parity_bit = ~^data;
            end
            packet = {1'b1,parity_bit,data,1'b0};
            for (i = 0; i < PACKET_WIDTH-1; i = i + 1) 
            begin
                @(posedge TX_CLK);
                UART_RX_IN = packet[i];
            end
        end else
        begin
            if (dut.U0_RegFile.REG2[1]) 
            begin
                parity_bit = ~^data;
            end else
            begin
                parity_bit = ^data;
            end
            packet = {1'b0,parity_bit,data,1'b0};
            for (i = 0; i < PACKET_WIDTH; i = i + 1) 
            begin
                @(posedge TX_CLK);
                UART_RX_IN = packet[i];
            end
        end
    end
    endtask




    task check_error(input reg error);
    begin
        count = count + 1;
        $display("Test case %0d",count);
        if (error) 
        begin
            @(posedge parity_error);
            pass = pass + 1;
            $display("Test passed");
            $display("parity_error catched");
        end else
        begin
            @(posedge framing_error);
            pass = pass + 1;
            $display("Test passed");
            $display("stop_error catched");
        end
    end
    endtask





    task golden_model_alu();
    begin
            case (dut.U0_SYS_CTRL.alu_fun_reg) 

            4'b0000: begin
                      expected_alu_data = dut.U0_RegFile.REG0+dut.U0_RegFile.REG1;
                     end

            4'b0001: begin
                      expected_alu_data = dut.U0_RegFile.REG0-dut.U0_RegFile.REG1;
                     end

            4'b0010: begin
                      expected_alu_data = dut.U0_RegFile.REG0*dut.U0_RegFile.REG1;
                     end

            4'b0011: begin
                      expected_alu_data = dut.U0_RegFile.REG0/dut.U0_RegFile.REG1;
                     end

            4'b0100: begin
                      expected_alu_data = dut.U0_RegFile.REG0 & dut.U0_RegFile.REG1;
                     end

            4'b0101: begin
                      expected_alu_data = dut.U0_RegFile.REG0 | dut.U0_RegFile.REG1;
                     end

            4'b0110: begin
                      expected_alu_data = ~ (dut.U0_RegFile.REG0 & dut.U0_RegFile.REG1);
                     end

            4'b0111: begin
                      expected_alu_data = ~ (dut.U0_RegFile.REG0 | dut.U0_RegFile.REG1);
                     end 

            4'b1000: begin
                      expected_alu_data =  (dut.U0_RegFile.REG0 ^ dut.U0_RegFile.REG1);
                     end

            4'b1001: begin
                      expected_alu_data = ~ (dut.U0_RegFile.REG0 ^ dut.U0_RegFile.REG1);
                     end  

            4'b1010: begin
                     if (dut.U0_RegFile.REG0 == dut.U0_RegFile.REG1)
                        expected_alu_data = 'b1;
                     else
                        expected_alu_data = 'b0;
                     end

            4'b1011: begin
                      if (dut.U0_RegFile.REG0 > dut.U0_RegFile.REG1)
                        expected_alu_data = 'b10;
                      else
                        expected_alu_data = 'b0;
                     end 

            4'b1100: begin
                      if (dut.U0_RegFile.REG0 < dut.U0_RegFile.REG1)
                        expected_alu_data = 'b11;
                      else
                        expected_alu_data = 'b0;
                     end   

            4'b1101: begin
                      expected_alu_data = dut.U0_RegFile.REG0>>1;
                     end

            4'b1110: begin 
                      expected_alu_data = dut.U0_RegFile.REG0<<1;
                     end

            default: begin
                       expected_alu_data = 'b0;
                     end
            endcase
    end
    endtask




    task collect_alu();
    begin
        actual_alu_data = 'b0;

        actual_data = 'b0;
        @(negedge dut.U0_UART.tx_out_s);
        for (i = 0; i < 11; i = i + 1) 
        begin
            @(negedge TX_CLK);
            actual_data[i] = UART_TX_O;
        end
        actual_alu_data[7:0] = actual_data[8:1];

        actual_data = 'b0;
        @(negedge dut.U0_UART.tx_out_s);
        for (i = 0; i < 11; i = i + 1) 
        begin
            @(negedge TX_CLK);
            actual_data[i] = UART_TX_O;
        end
        actual_alu_data[15:8] = actual_data[8:1];
    end
    endtask



    task check_alu();
    begin
        count = count + 1;
        $display("Test case %0d",count);
        if (actual_alu_data == expected_alu_data) 
        begin
            pass = pass + 1;
            $display("Test passed");
            $display("Actual Alu data:   %0d", actual_alu_data);
            $display("Expected Alu data: %0d", expected_alu_data);
        end else 
        begin
            fail = fail + 1;
            $display("Test failed at time: %0t", $time);
            $display("Actual Alu data:   %0d", actual_alu_data);
            $display("Expected Alu data: %0d", expected_alu_data);
        end
    end
    endtask

endmodule 