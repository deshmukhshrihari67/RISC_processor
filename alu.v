module alu (ALUcontrol,DataA,DataB,Result,Zero,Carry);
input [1:0] ALUcontrol;
input [15:0] DataA,DataB;//
output [15:0] Result;
output Zero,Carry;

reg [15:0] Result;
reg Zero,Carry;
//reg [16:0] temp;

initial begin
Result = 16'b0;
Zero =0;
Carry = 0;
end

always@(ALUcontrol,DataA,DataB)
begin
  case(ALUcontrol)
     2'b00: //add
	       begin
			  //temp = {1'b0,DataA} + {1'b0,DataB};
			  //Result = temp [15:0];
			  //Carry = temp [16];
			  {Carry, Result} = {1'b0,DataA} + {1'b0,DataB};
			  Zero = ~|Result;
			 end
	  2'b01: // Nand
	       begin
	        Result = ~(DataA & DataB);
			  Zero = ~|Result;
			  Carry = 1'bx;// to avoid latch redundent
			  
	       end
	  2'b10: // Sub
	       begin
	        Result = DataA-DataB;
			  Zero = ~|Result;
			  Carry = 1'bx; // to avoid latch redundent
			 end
	  default : 
	       begin
	        Result = 0;
			  Zero = 1'bx;
			  Carry = 1'bx;
			 end
	endcase
end	
endmodule		  
	  
