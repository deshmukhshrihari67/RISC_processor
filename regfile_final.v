module regfile_hem(clk,WE_R,InData_R,WrReg_Rd,ReadA,ReadB,ReadRd,opcode,OutA,OutB);
input [2:0] WrReg_Rd,ReadA,ReadB,ReadRd;
input WE_R,clk;
input [3:0]opcode;
input [15:0] InData_R;
wire sel;
wire [2:0] temp;//
output [15:0] OutA,OutB;
//reg [15:0] OutA, OutB;
//reg [15:0] R0,R1,R2,R3,R4,R5,R6,R7;//8 16-bit registers
reg [15:0] reg_file [7:0];
//reg [2:0] k;
assign sel = ~opcode[3]&opcode[2]&~opcode[1]&opcode[0]; //store
assign temp = sel? ReadRd : ReadB;
//if (opcode==4'b0101)
//assign OutA = (opcode==4'b0101) ? reg_file[ReadRd] : reg_file[ReadA];

assign OutA = reg_file[ReadA];
//assign OutA = reg_file[ReadA];

assign OutB = reg_file[temp];
//assign OutRd = reg_file[ReadRd];

/*
always @(*)
  begin
  if(~clk)
  //begin
   //OutB<=regfile[ReadB];
   OutA<=regfile[ReadA];
	//OutB<=regfile[ReadB];
	//end
	else
		//OutB<= 16'hxxxx;
	OutA<= 16'hxxxx;
	//OutB<= 4'hxxxx;
  end
  
  always @(*)
  begin
  if(~clk)
  //begin
   OutB<=regfile[ReadB];
   //OutA<=regfile[ReadA];
	//OutB<=regfile[ReadB];
	//end
	else
		OutB<= 16'hxxxx;
	//OutA<= 4'hxxxx;
	//OutB<= 4'hxxxx;
  end
  
  */
  always @(WE_R,InData_R,WrReg_Rd)
  begin
  if(WE_R)
  begin
   reg_file[WrReg_Rd] = InData_R ;
	
	end
  end
  
  
  /*
  always @(clk)
  begin
  if( reset)
  begin
  for (k=0;k<8;k=k+1) begin
         regfile[k] <= 16'h0000;
		end
	end
	else begin
	  if (WE_R)
  
   regfile[WrReg_Rd] <= InData_R ;

	end
  end
  */
 endmodule
 