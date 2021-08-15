module Regfile_two(clk,WE_R,WE_PC,InData_R,InData_PC,WrReg_Rd,ReadA,ReadB,OutA,OutB);
input [2:0] WrReg_Rd,ReadA,ReadB;
input WE_R,WE_PC,clk;
input [15:0] InData_R,InData_PC;
output [15:0] OutA,OutB;
reg [15:0] OutA, OutB;
//reg [15:0] R0,R1,R2,R3,R4,R5,R6,R7;//8 16-bit registers
reg [15:0] regfile [2:0];
always @(*)
  begin
  if(~clk)
  begin
   //OutB<=regfile[ReadB];
   OutA<=regfile[ReadA];
	//OutB<=regfile[ReadB];
	end
	else
		//OutB<= 4'hxxxx;
	OutA<= 16'hxxxx;
	//OutB<= 4'hxxxx;
  end
  
  always @(*)
  begin
  if(~clk)
  begin
   OutB<=regfile[ReadB];
   //OutA<=regfile[ReadA];
	//OutB<=regfile[ReadB];
	end
	else
		OutB<= 16'hxxxx;
	//OutA<= 4'hxxxx;
	//OutB<= 4'hxxxx;
  end
  
  
  always @(*)
  begin
  if(clk && WE_R)
  begin
   regfile[WrReg_Rd] <= InData_R ;
	
	end
  end
  
  
  
/*	
always@(*)
   begin
	 if (~clk)
	 begin
	   case(ReadB)
		0: OutB = R0;
		1: OutB = R1;
		2: OutB = R2;
		3: OutB = R3;
		4: OutB = R4;
		5: OutB = R5;
		6: OutB = R6;
		default: OutB = 4'hxxxx;
	  endcase
	 end
	end

/*	
always @(*)
   begin
  if (clk && WE_PC)
      R7 <= InData_PC;
	end

always@(*)
 begin
  if (clk && WE_R)
     case (WrReg_Rd)
	     0: R0 <= InData_R;
		  1: R1 <= InData_R;
		  2: R2 <= InData_R;
		  3: R3 <= InData_R;
		  4: R4 <= InData_R;
		  5: R5 <= InData_R;
		  6: R6 <= InData_R;
		  7: R7 <= InData_R;
		endcase
	end
*/
endmodule












