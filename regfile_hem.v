module  regfile_final (clk,WE_R,InData_R,WrReg_Rd,ReadA,ReadB,ReadRd,opcode,OutA,OutB,reset);
input [2:0] WrReg_Rd,ReadA,ReadB,ReadRd;
input [3:0]opcode;
input WE_R,clk,reset;
input [15:0] InData_R;//
output reg [15:0] OutA,OutB;
wire [15:0] temp [7:0];
reg [7:0]write_temp ;
integer k;
genvar j;
 generate for (j=0; j<8; j=j+1)begin : D_loop
 regfile_sub D1 (temp[j],InData_R, write_temp[j],clk);
 end
 endgenerate
 //assign write_temp[WrReg_Rd] = 1'b1;
always@(WrReg_Rd, WE_R)
begin 
write_temp =0;
write_temp[WrReg_Rd] = WE_R;
end

//assign OutA = temp[ReadA];
//assign OutB = temp[ReadB];

always@(*)
begin
 if (~clk)
 begin
 OutA<= temp[ReadA];
 OutB <= temp[ReadB];
 end
 else begin
 OutA<=16'hzzzz;
 OutB<=16'hzzzz;
 end
 end


 
 
 endmodule
 