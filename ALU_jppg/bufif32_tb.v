// -----------------------------------------------------------
//	Module:		Testbench for 32-Bit Buffer
//	Author:		Jude Gabriel
//	Contact:	gabriel23@up.edu
//	Date:		February 5, 2022
// ----------------------------------------------------------

`timescale 1ns/1ns

module bufif32_tb;

reg  [31:0] in;
reg         control;
wire [31:0] out;

bufif32 buffer(out, in, control);


initial
  begin
	//Test with control low
	#10 in = 32'h00000001;	control = 1'b0;
	#10 in = 32'h00000002;	
	#10 in = 32'h00000004;	
	#10 in = 32'h00000008;	
	#10 in = 32'h00000010;	
	#10 in = 32'h00000020;	
	#10 in = 32'h00000040;	
	#10 in = 32'h00000080;	
	#10 in = 32'h00000100;	
	#10 in = 32'h00000200;	
	#10 in = 32'h00000400;	
	#10 in = 32'h00000800;	
	#10 in = 32'h00001000;	
	#10 in = 32'h00002000;	
	#10 in = 32'h00004000;	
	#10 in = 32'h00008000;	
	#10 in = 32'h00010000;		
	#10 in = 32'h00020000;	
	#10 in = 32'h00040000;		
	#10 in = 32'h00080000;		
	#10 in = 32'h00100000;	
	#10 in = 32'h00200000;		
	#10 in = 32'h00400000;	
	#10 in = 32'h00800000;		
	#10 in = 32'h01000000;		
	#10 in = 32'h02000000;		
	#10 in = 32'h04000000;	
	#10 in = 32'h08000000;		
	#10 in = 32'h10000000;		
	#10 in = 32'h20000000;	
	#10 in = 32'h40000000;	
	#10 in = 32'h80000000;	

	//Test with control high
	#10 in = 32'h00000001;	control = 1'b1;
	#10 in = 32'h00000002;	
	#10 in = 32'h00000004;	
	#10 in = 32'h00000008;	
	#10 in = 32'h00000010;	
	#10 in = 32'h00000020;	
	#10 in = 32'h00000040;	
	#10 in = 32'h00000080;	
	#10 in = 32'h00000100;	
	#10 in = 32'h00000200;	
	#10 in = 32'h00000400;	
	#10 in = 32'h00000800;	
	#10 in = 32'h00001000;	
	#10 in = 32'h00002000;	
	#10 in = 32'h00004000;	
	#10 in = 32'h00008000;	
	#10 in = 32'h00010000;		
	#10 in = 32'h00020000;	
	#10 in = 32'h00040000;		
	#10 in = 32'h00080000;		
	#10 in = 32'h00100000;	
	#10 in = 32'h00200000;		
	#10 in = 32'h00400000;	
	#10 in = 32'h00800000;		
	#10 in = 32'h01000000;		
	#10 in = 32'h02000000;		
	#10 in = 32'h04000000;	
	#10 in = 32'h08000000;		
	#10 in = 32'h10000000;		
	#10 in = 32'h20000000;	
	#10 in = 32'h40000000;	
	#10 in = 32'h80000000;	
	#10 $stop;
  end

initial
  begin
	$display("		  time 		in  	   control  out ");
	$monitor($time,, in,,, control,,,,,, out);
  end

endmodule



