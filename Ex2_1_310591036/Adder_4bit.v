//==============================================
//==============================================				
//	Author	:	Wei Lu																		
//----------------------------------------------
//												
//	File Name		:	Adder_4bit.v					
//	Module Name		:	Adder_4bit					
//	Release version	:	v1.0					
//												
//----------------------------------------------								
//----------------------------------------------											
//	Input	:   A,
//				B,												
//	Output	:	Output,					
//==============================================
//==============================================
module Adder_4bit(
    //Input Port
	A,	
	B,
    //Output Port
	carry_out,
	sum
    );

//---------------------------------------------------------------------
//   PORT DECLARATION
//---------------------------------------------------------------------
input [3:0]A;
input [3:0]B;
output wire carry_out;
output wire [3:0]sum;

assign {carry_out, sum} = A + B;


endmodule