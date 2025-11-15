`timescale 1ns/1ps
module uart_tx_tb # (
    parameter input_width  = 8,
    parameter clock_period = 5.0)();

    // Signals for DUT
    reg                    clk;        // clock
	reg                    rst;        // for reset
	reg                    data_valid;
	reg                    par_en;
	reg                    par_typ;
	reg  [input_width-1:0] p_data;
	wire                   tx_out;
	wire                   busy;


    // Storage
    reg [input_width+2:0]   actual_data;
    reg [input_width+2:0]   expected_data;

    // needed variables
    integer stop_index = 0;
    integer count      = 0;
    integer pass       = 0;
    integer fail       = 0;
    integer i          = 0;
    integer j          = 0;

   
    // DUT instantiation
    uart_tx_top dut (.*); // same vaiables names


    // Clock Generator
	always #(clock_period/2.0)  clk = ~clk ; // clock frequency 200 MHz → 5 ns period

initial 
begin

	initialize();
	reset();


	drive(8'b1111_1111, 1'b0, 1'b1, 1'b1); //data all ones with parity disabled
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b1111_1111, 1'b1, 1'b1, 1'b1); //data all ones with odd parity
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b1111_1111, 1'b1, 1'b0, 1'b1); //data all ones with even parity
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b0, 1'b0, 1'b1, 1'b1); //data all zeros parity disabled
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b0, 1'b1, 1'b1, 1'b1); //data all zeros with odd parity
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b0, 1'b1, 1'b0, 1'b1); //data all zeros with even parity
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b1010_1010, 1'b0, 1'b1, 1'b1); //toggle bit data with parity disabled
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b1111_0000, 1'b0, 1'b0, 1'b1); //toggle bit data with parity disabled
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b1100_1100, 1'b1, 1'b0, 1'b1); //random data with even parity
	golden_model(1'b1);
	collect_output(1'b1);
	check_result();

	drive(8'b0011_0011, 1'b1, 1'b0, 1'b0); //random data without valid
	golden_model(1'b0);
	collect_output(1'b0);
	check_result();

	drive(8'b1010_1010, 1'b0, 1'b0, 1'b0); //random data without valid and parity disabled
	golden_model(1'b0);
	collect_output(1'b0);
	check_result();


	repeat(10)
	begin
		drive($random, $urandom_range(0,1), $urandom_range(0,1), 1'b1); //random data without valid and parity disabled
		golden_model(1'b1);
		collect_output(1'b1);
		check_result();
	end

	$display("Number of tests: %0d, Passed: %0d, Failed: %0d", count, pass, fail);

	#100
	$finish;
end



task initialize();
begin
 	clk           = 0;
	par_en        = 0;
	par_typ       = 0;
	data_valid    = 0;
	p_data        = 8'b0;
	actual_data   = 11'b0;
	expected_data = 11'b0;
end
endtask




 task reset();
 	begin
 		rst = 1'b1 ;
	 	@(negedge clk) ;
	 	rst = 1'b0 ;
	 	@(negedge clk) ;
	 	rst = 1'b1 ;
	 	@(negedge clk) ;

	 	if (tx_out && !busy) begin
	 		$display("Reset succeded: tx_out = %0b, busy = %0b", tx_out, busy);
	 	end else
	 	begin
	 		$display("Reset failed");
	 	end

 	end
 endtask




task golden_model(input reg valid);
begin

	stop_index    = 1 + input_width;
	expected_data = 11'b0;

	if (valid) 
	begin
		expected_data[0] = 1'b0;                 // start bit
		for ( j = 1; j <= input_width; j = j+1) 
		begin
			expected_data[j] = p_data[j-1];      // data bits
		end

		if (par_en) 
		begin
			stop_index = stop_index + 1;
		  if (par_typ)
		    begin 
		       expected_data[stop_index-1] = ~(^p_data);       // odd parity bit
		    end else
		    begin
		       	expected_data[stop_index-1]  = (^p_data);    // even parity bit
		    end 
		end 
		expected_data[stop_index] = 1'b1;        // stop bit
	end else 
	begin
		expected_data = 11'b11111111111;
	end
end
endtask



task drive(
	input reg [input_width-1:0]  in_data,
	input reg                    parity_enable,
	input reg                    parity_type,
	input reg                    valid
);

begin
	@(negedge clk);
	par_en     = parity_enable;
	par_typ    = parity_type;
	p_data     = in_data;
	data_valid = valid;
	@(negedge clk);
	data_valid = 1'b0;
end
endtask 



task collect_output(input reg valid);
begin	
	actual_data = 11'b0;

	if (par_en | !valid) 
	begin
		if (valid) 
		begin
			@(posedge busy);
		end
		for ( i = 0; i < 11; i=i+1) 
		begin
			@(negedge clk)
			actual_data[i] = tx_out;
		end
	end else
	begin
		for ( i = 0; i < 10; i=i+1)
		begin
			@(negedge clk)
			actual_data[i] = tx_out;
		end
	end

end	
endtask




task check_result();
begin

	count = count + 1;
	$display("Test case %0d",count);
	if (actual_data == expected_data) 
	begin
		pass = pass + 1;
		$display("Test passed at time: %0t", $time);
		$display("Actual data:   %8b", actual_data);
		$display("Expected data: %8b", expected_data);
	end
	else 
	begin
		fail = fail + 1;
		$display("Test failed");
		$display("Actual data:   %8b", actual_data);
		$display("Expected data: %8b", expected_data);
	end
end	
endtask


endmodule 