module B_Prediction(PC_in,PC_IF,BTA_in,opcode,taken_in,PC_out,taken_out,clk);
input [15:0]PC_in;
input [15:0] PC_IF;
input [15:0] BTA_in;
input [3:0]opcode;
input taken_in;  // taken_bit = 1 when branch is taken;
input clk;//
output reg [15:0] PC_out;
output reg taken_out;
reg [15:0] Branch_PC [5:0];
reg [15:0] BTA [5:0];
reg [1:0] HB [5:0];
reg [1:0] HB_temp;
integer temp;
integer j;
integer k;
integer m;
integer tempp;
integer top;
initial top = 0;
//initial 
//begin

  //   for (m=0; m<6; m=m+1) begin
	//  Branch_PC[m] = 16'h0000;
	//  BTA [m]= 16'h0000;
	//  HB[m]= 2'b00;
	//  end
//end

 
//always @ (opcode)
//always @ (PC_in)
always @ (posedge clk)
//always @ (negedge clk)
//always @ (*)
begin
 temp =10;
 //if (opcode == 4'b1100 && clk)
 if (opcode == 4'b1100 )
  begin
    //temp = 10;
   for (j=0; j<6; j=j+1) 
    begin
     if ( Branch_PC[j] == PC_in)
        begin
		   temp =  j;
        end 
	 end
   
   if (temp != 10) begin   // we found a match in LUT
	  case (HB[temp])
	     2'b00: HB[temp] = taken_in ? 2'b01 : 2'b00;
		  2'b01: HB[temp] = taken_in ? 2'b10 : 2'b00;
		  2'b10: HB[temp] = taken_in ? 2'b11 : 2'b01;
		  2'b11: HB[temp] = taken_in ? 2'b11 : 2'b10;
	   endcase
	  BTA[temp] =BTA_in;
	 end
    else begin
	   Branch_PC[top] = PC_in;
	   BTA [top] = BTA_in;
	    if (taken_in) HB [top] = 2'b10;
		     else  HB [top] = 2'b01;
		top = top + 1;
	 end	
  end
end


//always @(negedge clk)
//always @(*)
always@(*)
begin
tempp =10;
 for (k=0; k<6; k=k+1) begin
  if (PC_IF == Branch_PC[k] )
    tempp = k;
 end
 //if (tempp != 10 && ~clk) begin //match found 
 if (tempp != 10) begin 
   PC_out = BTA [tempp]; 
	HB_temp = HB[tempp];
    taken_out = HB_temp[1]  & ~taken_in;
		
		// taken_out = HB_temp[1];
	//taken_out = 1'b1;
 end
  else  begin
   PC_out = 16'hzzzz;
   taken_out = 1'b0;
  end
end
endmodule
   
   
