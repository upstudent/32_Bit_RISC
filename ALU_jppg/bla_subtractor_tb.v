// ------------------------------------------------------------------------
//	Module:		Testbench for 32-Bit Borrow-Look-Ahead Subtractor
//	Author:		Jude Gabriel
//	Contact:	gabriel23@up.edu
//	Date:		February 4, 2022
// ----------------------------------------------------------------------

`timescale 1ns /1ns

module bla_subtractor32_tb;

reg [31:0]	a;
reg [31:0]	b;
wire		bout;
wire [31:0]	diff;

bla_subtractor32 bla_subtractor32_1(bout, diff, a, b);

initial
  begin
	//Tests '1' bout of each bit
	#10 a = 32'h00000000;	b = 32'h00000001;	
	#10 			b = 32'h00000002;	
	#10 			b = 32'h00000004;	
	#10 			b = 32'h00000008;	
	#10 			b = 32'h00000010;	
	#10 			b = 32'h00000020;	
	#10 			b = 32'h00000040;	
	#10 			b = 32'h00000080;	
	#10 			b = 32'h00000100;	
	#10 			b = 32'h00000200;	
	#10 			b = 32'h00000400;	
	#10 			b = 32'h00000800;	
	#10 			b = 32'h00001000;	
	#10 			b = 32'h00002000;	
	#10 			b = 32'h00004000;	
	#10 			b = 32'h00008000;	
	#10 			b = 32'h00010000;		
	#10 			b = 32'h00020000;	
	#10 			b = 32'h00040000;		
	#10 			b = 32'h00080000;		
	#10 			b = 32'h00100000;	
	#10 			b = 32'h00200000;		
	#10 			b = 32'h00400000;	
	#10 			b = 32'h00800000;		
	#10 			b = 32'h01000000;		
	#10 			b = 32'h02000000;		
	#10 			b = 32'h04000000;	
	#10 			b = 32'h08000000;		
	#10 			b = 32'h10000000;		
	#10 			b = 32'h20000000;	
	#10 			b = 32'h40000000;	
	#10 			b = 32'h80000000;	

	//Tests '0' bout of each bit
	#10 a = 32'h00000001;	b = 32'h00000000;
	#10 a = 32'h00000002;	
	#10 a = 32'h00000004;	
	#10 a = 32'h00000008;	
	#10 a = 32'h00000010;	
	#10 a = 32'h00000020;	
	#10 a = 32'h00000040;	
	#10 a = 32'h00000080;	
	#10 a = 32'h00000100;	
	#10 a = 32'h00000200;	
	#10 a = 32'h00000400;	
	#10 a = 32'h00000800;	
	#10 a = 32'h00001000;	
	#10 a = 32'h00002000;	
	#10 a = 32'h00004000;	
	#10 a = 32'h00008000;	
	#10 a = 32'h00010000;		
	#10 a = 32'h00020000;	
	#10 a = 32'h00040000;		
	#10 a = 32'h00080000;		
	#10 a = 32'h00100000;	
	#10 a = 32'h00200000;		
	#10 a = 32'h00400000;	
	#10 a = 32'h00800000;		
	#10 a = 32'h01000000;		
	#10 a = 32'h02000000;		
	#10 a = 32'h04000000;	
	#10 a = 32'h08000000;		
	#10 a = 32'h10000000;		
	#10 a = 32'h20000000;	
	#10 a = 32'h40000000;	
	#10 a = 32'h80000000;

	//Subtract matching numbers
	#10 a = 32'h00000001;	b = 32'h00000001;
	#10 a = 32'h00000002;	b = 32'h00000002;
	#10 a = 32'h00000004;	b = 32'h00000004;
	#10 a = 32'h00000008;	b = 32'h00000008;
	#10 a = 32'h00000010;	b = 32'h00000010;
	#10 a = 32'h00000020;	b = 32'h00000020;
	#10 a = 32'h00000040;	b = 32'h00000040;
	#10 a = 32'h00000080;	b = 32'h00000080;
	#10 a = 32'h00000100;	b = 32'h00000100;
	#10 a = 32'h00000200;	b = 32'h00000200;
	#10 a = 32'h00000400;	b = 32'h00000400;
	#10 a = 32'h00000800;	b = 32'h00000800;
	#10 a = 32'h00001000;	b = 32'h00001000;
	#10 a = 32'h00002000;	b = 32'h00002000;
	#10 a = 32'h00004000;	b = 32'h00004000;
	#10 a = 32'h00008000;	b = 32'h00008000;
	#10 a = 32'h00010000;	b = 32'h00010000;	
	#10 a = 32'h00020000;	b = 32'h00020000;	
	#10 a = 32'h00040000;	b = 32'h00040000;	
	#10 a = 32'h00080000;	b = 32'h00080000;	
	#10 a = 32'h00100000;	b = 32'h00100000;	
	#10 a = 32'h00200000;	b = 32'h00200000;	
	#10 a = 32'h00400000;	b = 32'h00400000;	
	#10 a = 32'h00800000;	b = 32'h00800000;	
	#10 a = 32'h01000000;	b = 32'h01000000;	
	#10 a = 32'h02000000;	b = 32'h02000000;	
	#10 a = 32'h04000000;	b = 32'h04000000;	
	#10 a = 32'h08000000;	b = 32'h08000000;	
	#10 a = 32'h10000000;	b = 32'h10000000;	
	#10 a = 32'h20000000;	b = 32'h20000000;	
	#10 a = 32'h40000000;	b = 32'h40000000;	
	#10 a = 32'h80000000;	b = 32'h80000000;	

	//Edge Cases
	#10 a = 32'h00000000;	b = 32'h00000000;
	#10 a = 32'h00000000;	b = 32'hFFFFFFFF;
	#10 a = 32'hFFFFFFFF;	b = 32'h00000000;
	#10 a = 32'hFFFFFFFF;	b = 32'hFFFFFFFF;


	//Additional Random Cases
	#10 a = 32'hFFDF1F40;	b = 32'h80031F4F;
	#10 a = 32'h07FA07FD;	b = 32'h80C01F07;
	#10 a = 32'hF8983F21;	b = 32'h9210FDBC;
	#10 a = 32'h23489ABC;	b = 32'h12AFE847;
	#10 a = 32'h56FDA350; 	b = 32'h12FDED00;
	#10 $stop;
  end

initial
  begin
	$display("		  time 		a  	   b  bout 		diff ");
	$monitor($time,, a,,, b,,,,,, bout,,,,,, diff);
  end

endmodule