`timescale 1us/1ps
module UART_RX_TB #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8,
    parameter CLK_PERIOD_TX = 8.68
    ) ();
	
	// Signals for DUT
	reg                     clk_tx;
	reg                     clk_rx;
    reg                     rst;
    reg                     par_typ;
    reg                     par_en;
    reg [sampling_bits-1:0] prescale;
    reg                     rx_in;
    wire [frame_data-1:0]   p_data;
    wire                    data_valid;
    wire                    parity_error;
    wire                    stop_error;



    // Storage
    reg [frame_data-1:0]   actual_data;
    reg [frame_data-1:0]   expected_data;
    reg                    expected_parity_error;
    reg                    expected_stop_error;
    reg                    actual_parity_error;
    reg                    actual_stop_error;



    // needed variables
    integer count      = 0;
    integer pass       = 0;
    integer fail       = 0;
    integer i          = 0;
    integer j          = 0;
    integer mid        = 0;


    initial prescale = 'd1;  // Initialize prescale first


    // Clock Generator
    // TX clock 
    initial 
    begin
    clk_tx = 1'b0;
    forever
    	#(CLK_PERIOD_TX/2.0) clk_tx = ~clk_tx;  // 115.2 KHz
    end

    // RX clock
    initial 
    begin
    clk_rx = 1'b0;
    forever
    	#(CLK_PERIOD_TX/(2.0*prescale)) clk_rx = ~clk_rx;
    end




    initial
    begin

		// prescale = 8
		initialize();
		@(posedge clk_tx);
		prescale = 'd8;
		@(posedge clk_tx)
		reset();

		// odd parity
		golden_model(1'b1, 1'b1, 11'b1_1_01010101_0);
		drive(1'b1, 1'b1, 11'b1_1_01010101_0);
		collect();
		check();

		// even parity
		golden_model(1'b1, 1'b0, 11'b1_0_11111111_0);
		drive(1'b1, 1'b0, 11'b1_0_11111111_0);
		collect();
		check();

		// no parity
		golden_model(1'b0, 1'b0, 11'b1_00000000_0);
		drive(1'b0, 1'b0, 11'b1_00000000_0);
		collect();
		check();

		// odd parity error
		golden_model(1'b1, 1'b1, 11'b1_0_11110000_0);
		drive(1'b1, 1'b1, 11'b1_0_11110000_0);
		collect();
		check();

		// even parity error
		golden_model(1'b1, 1'b0, 11'b1_1_00110011_0);
		drive(1'b1, 1'b0, 11'b1_1_00110011_0);
		collect();
		check();

		// stop error
		golden_model(1'b1, 1'b1, 11'b0_1_11001100_0);
		drive(1'b1, 1'b1, 11'b0_1_11001100_0);
		collect();
		check();


		// no parity and stop error
		golden_model(1'b0, 1'b0, 11'b0_00111100_0);
		drive(1'b0, 1'b0, 11'b0_00111100_0);
		collect();
		check();


		// parity error and stop error
		golden_model(1'b1, 1'b1, 11'b0_0_11000011_0);
		drive(1'b1, 1'b1, 11'b0_0_11000011_0);
		collect();
		check();





		// prescale = 16
		initialize();
		@(posedge clk_tx);
		prescale = 'd16;
		@(posedge clk_tx)
		reset();

		// odd parity
		golden_model(1'b1, 1'b1, 11'b1_1_00110011_0);
		drive(1'b1, 1'b1, 11'b1_1_00110011_0);
		collect();
		check();

		// even parity
		golden_model(1'b1, 1'b0, 11'b1_0_10000000_0);
		drive(1'b1, 1'b0, 11'b1_0_10000000_0);
		collect();
		check();

		// no parity
		golden_model(1'b0, 1'b0, 11'b1_00000000_0);
		drive(1'b0, 1'b0, 11'b1_00000000_0);
		collect();
		check();

		// odd parity error
		golden_model(1'b1, 1'b1, 11'b1_0_01010101_0);
		drive(1'b1, 1'b1, 11'b1_0_01010101_0);
		collect();
		check();

		// even parity error
		golden_model(1'b1, 1'b0, 11'b1_1_00110011_0);
		drive(1'b1, 1'b0, 11'b1_1_00110011_0);
		collect();
		check();

		// stop error
		golden_model(1'b1, 1'b1, 11'b0_1_01010101_0);
		drive(1'b1, 1'b1, 11'b0_1_01010101_0);
		collect();
		check();


		// no parity and stop error
		golden_model(1'b0, 1'b0, 11'b0_01010101_0);
		drive(1'b0, 1'b0, 11'b0_01010101_0);
		collect();
		check();


		// parity error and stop error
		golden_model(1'b1, 1'b1, 11'b0_0_00110011_0);
		drive(1'b1, 1'b1, 11'b0_0_00110011_0);
		collect();
		check();




		// prescale = 32
		initialize();
		@(posedge clk_tx);
		prescale = 'd32;
		@(posedge clk_tx)
		reset();

		// odd parity
		golden_model(1'b1, 1'b1, 11'b1_1_01010101_0);
		drive(1'b1, 1'b1, 11'b1_1_01010101_0);
		collect();
		check();

		// even parity
		golden_model(1'b1, 1'b0, 11'b1_0_11111111_0);
		drive(1'b1, 1'b0, 11'b1_0_11111111_0);
		collect();
		check();

		// no parity
		golden_model(1'b0, 1'b0, 11'b1_00000000_0);
		drive(1'b0, 1'b0, 11'b1_00000000_0);
		collect();
		check();

		// odd parity error
		golden_model(1'b1, 1'b1, 11'b1_0_11110000_0);
		drive(1'b1, 1'b1, 11'b1_0_11110000_0);
		collect();
		check();

		// even parity error
		golden_model(1'b1, 1'b0, 11'b1_1_00110011_0);
		drive(1'b1, 1'b0, 11'b1_1_00110011_0);
		collect();
		check();

		// stop error
		golden_model(1'b1, 1'b1, 11'b0_1_11001100_0);
		drive(1'b1, 1'b1, 11'b0_1_11001100_0);
		collect();
		check();


		// no parity and stop error
		golden_model(1'b0, 1'b0, 11'b0_00111100_0);
		drive(1'b0, 1'b0, 11'b0_00111100_0);
		collect();
		check();


		// parity error and stop error
		golden_model(1'b1, 1'b1, 11'b0_0_11000011_0);
		drive(1'b1, 1'b1, 11'b0_0_11000011_0);
		collect();
		check();


		$display("Total Tests: %0d", count);
        $display("Passed: %0d", pass);
        $display("Failed: %0d", fail);

        #20
        $finish;

    end



    task initialize();
    begin
    	rx_in                 = 1'b1;
    	par_en                = 1'b0;
    	par_typ               = 1'b0; 
    	actual_data           = 'b0;
        expected_data         = 'b0;
        expected_parity_error = 1'b0;
        expected_stop_error   = 1'b0;
        actual_parity_error   = 1'b0;
		actual_stop_error     = 1'b0;
    end
    endtask 



    task reset();
	begin
		rst = 1'b1 ;
	 	@(negedge clk_rx) ;
	 	rst = 1'b0 ;
	 	@(negedge clk_rx) ;
	 	rst = 1'b1 ;
	 	@(negedge clk_rx) ;
	end
    endtask 


    task drive(
		input reg        enable,
		input reg        parity,
		input reg [10:0] packet
		);
    
    begin

    	mid = prescale >> 1;

    	par_en   = enable;
    	par_typ  = parity;


    	if (par_en) 
    	begin
    		for (i = 0; i < 11; i = i + 1) 
    		begin
	    		@(posedge clk_tx)
	    		rx_in = packet[i];
	    		if (i == 9) 
	    		begin
	    			if (prescale == 8) 
	    			begin
	    				repeat(mid+3) @(negedge clk_rx);
    					actual_parity_error = parity_error;
	    			end else
	    			begin
	    				repeat(mid+4) @(negedge clk_rx);
    					actual_parity_error = parity_error;
	    			end
	    		end
	    	end
    	end else
    	begin
    		for (i = 0; i < 10; i = i + 1) 
    		begin
	    		@(posedge clk_tx)
	    		rx_in = packet[i];
	    	end
    	end	
    end
    endtask


    task golden_model(
		input reg        enable,
		input reg        parity,
		input reg [10:0] packet
    );

    count = count + 1;
    actual_data   = 'b0;
    expected_data = 'b0;
    expected_parity_error = 1'b0;
    expected_stop_error   = 1'b0;
    actual_parity_error   = 1'b0;
	actual_stop_error     = 1'b0;

    begin
    	if (enable) 
    	begin
    		if (parity) 
    		begin
    			if (~(^packet[8:1]) != packet[9]) 
	    		begin
	    			expected_parity_error = 1'b1;
	    			expected_stop_error = 1'b0;
	    		end else
	    		begin
	    			expected_parity_error = 1'b0;
	    			if (packet[10] != 1'b1) 
			    	begin
			    		expected_stop_error = 1'b1;
			    	end else
			    	begin
			    		expected_stop_error = 1'b0;
			    	end
	    		end
    		end else
    		begin
    			if (^packet[8:1] != packet[9]) 
	    		begin
	    			expected_parity_error = 1'b1;
	    			expected_stop_error = 1'b0;
	    		end else
	    		begin
	    			expected_parity_error = 1'b0;
	    			if (packet[10] != 1'b1) 
			    	begin
			    		expected_stop_error = 1'b1;
			    	end else
			    	begin
			    		expected_stop_error = 1'b0;
			    	end
	    		end
    		end
    	end else 
    	begin
    		expected_parity_error = 1'b0;
    		if (packet[9] != 1'b1) 
	    	begin
	    		expected_stop_error = 1'b1;
	    	end else
	    	begin
	    		expected_stop_error = 1'b0;
	    	end
    	end

    	if (!expected_stop_error && !expected_parity_error) 
    	begin
    		for (i = 0; i < frame_data; i = i + 1) 
	    	begin
	    		expected_data[i] = packet[i+1];
	    	end
    	end else
    	begin
    		expected_data = 'b0;
    	end
    end
    endtask



    task collect();
    begin
    	if (!expected_stop_error && !expected_parity_error) 
    	begin
    		wait(data_valid);
    		actual_data         = p_data;
    		actual_stop_error   = stop_error;
    	end else 
    	begin 
    		if (prescale == 8) 
    		begin
    			repeat(mid+3) @(negedge clk_rx);
    			actual_stop_error   = stop_error;
    		end else
    		begin
    			repeat(mid+4) @(negedge clk_rx);
    			actual_stop_error   = stop_error;
    		end
    		
    	end
    	
    end
    endtask



    task check();

    	begin
    		if (expected_stop_error || expected_parity_error) 
    		begin
    			if ((expected_stop_error == actual_stop_error) && (expected_parity_error == actual_parity_error)) 
    			begin
    				pass = pass + 1;
    				$display("Test %0d Passed - Error detected correctly", count);
    				$display("parity_error = %0b, stop_error = %0b", actual_parity_error, actual_stop_error);
    				$display("expected_parity_error = %0b, expected_stop_error = %0b", expected_parity_error, expected_stop_error);
    			end else 
    			begin
    				fail = fail + 1;
    				$display("Test %0d  Faild - Error not detected", count);
    				$display("parity_error = %0b, stop_error = %0b", actual_parity_error, actual_stop_error);
    				$display("expected_parity_error = %0b, expected_stop_error = %0b", expected_parity_error, expected_stop_error);
    			end
    		end else
    		begin
    			if (actual_data == expected_data) 
    			begin
    				pass = pass + 1;
    				$display("Test %0d Passed", count);
    				$display("actual_data = %8b, expected_data = %8b", actual_data, expected_data);
    				$display("parity_error = %0b, stop_error = %0b", actual_parity_error, actual_stop_error);
    			end else 
    			begin
    				fail = fail + 1;
    				$display("Test %0d Faild", count);
    				$display("actual_data = %8b, expected_data = %8b", actual_data, expected_data);
    				$display("parity_error = %0b, stop_error = %0b", actual_parity_error, actual_stop_error);
    			end
    		end
    	end
    endtask




    // DUT instantiation
    UART_RX dut (
    	.clk         (clk_rx),
    	.rst         (rst),
    	.prescale    (prescale),
    	.rx_in       (rx_in),
    	.par_en      (par_en),
    	.par_typ     (par_typ),
    	.p_data      (p_data),
    	.data_valid  (data_valid),
    	.stop_error  (stop_error),
    	.parity_error(parity_error)
    	);


endmodule 