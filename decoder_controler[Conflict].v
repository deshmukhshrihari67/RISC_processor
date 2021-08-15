module decoder_controler(Inst, WB, M,EX);
input [15:0] Inst;//
output [8:0] EX;
output [2:0] M;
output [2:0] WB;
reg [8:0] EX;
reg [2:0] M;
reg [2:0] WB;
wire [3:0] opcode;
parameter ADD=4'b0000,ADI=4'b0001,NAND=4'b0010,LHI=4'b0011,LW=4'b0100,SW=4'b0101, 
          LM=4'b0110,SM=4'b0111,BEQ=4'b1100,JAL=4'b1000,JLR=4'b1001  ;
assign opcode = Inst[15:12];


always @ (opcode,Inst)
begin
if(Inst!= 16'd0)

 case (opcode)
    ADD: begin
	    EX = 9'b001110010;
		 M=3'b000;
		 WB=3'b101; 
		 end
	 ADI: begin
	    EX=9'b011110000;
		 M=3'b000;
		 WB=3'b101;
		 end
	 NAND: begin
	    EX=9'b001010110;
		 M=3'b000;
		 WB=3'b101;
		 end
	 LHI: begin
	    EX=9'b100000000;  // Rd =RA
		 M=3'b000;
		 WB=3'b111;
		 end
	 LW: begin
	    EX=9'b100000000;
		 M=3'b010;
		 WB=3'b001;
		 end
	 SW: begin
	    EX=9'b000000000; // 11 may change to 00
		 M=3'b001;
		 WB=3'b000;
		 end
	 
    BEQ: begin
	   EX=9'b001001010 ;
		M=3'b000 ;
		WB=3'b000 ;
		end
	 JAL: begin
	   EX=9'b100000000 ;
		M=3'b000 ;
		WB=3'b011 ;
		end
	 JLR: begin
	   EX=9'b100000000 ;
		M=3'b000 ;
		WB= 3'b011;
		end
	 LM : begin
	   EX=9'b110000000;
		M=110;
		WB=001;
		end
	 default: begin
	    EX=9'b000000000;
		 M=3'b000;
 		 WB=3'b000;
		 end
	endcase
	
else 
 begin
 EX=9'b000000000;
		 M=3'b000;
 		 WB=3'b000; end
 
end
endmodule
		 
	 
       