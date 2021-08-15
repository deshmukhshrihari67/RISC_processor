module forwarding(EXM_Reg_Rd,MWB_Reg_Rd,EX_Reg_Rs,EX_Reg_Rt,EXM_Reg_write,MWB_Reg_write,EXM_valid_in,MWB_valid_in,   forward_A,forward_B);
input [2:0] EXM_Reg_Rd,MWB_Reg_Rd,EX_Reg_Rs,EX_Reg_Rt;
input EXM_Reg_write,MWB_Reg_write;
input EXM_valid_in;
input MWB_valid_in;//
output reg [1:0] forward_A,forward_B;
always@(*)
begin      
 if ((EXM_Reg_write) && (EX_Reg_Rs==EXM_Reg_Rd) && ~EXM_valid_in)
 forward_A =2'b01;
 else if ((MWB_Reg_write) && (EX_Reg_Rs==MWB_Reg_Rd) && ~MWB_valid_in)
 forward_A =2'b10;
 else 
 forward_A = 2'b00;
end

always@(*)
begin
if ((EXM_Reg_write) && (EX_Reg_Rt==EXM_Reg_Rd) && ~EXM_valid_in )
 forward_B =2'b01;
 else if ((MWB_Reg_write) && (EX_Reg_Rt==MWB_Reg_Rd)  && ~MWB_valid_in)
 forward_B =2'b10;
 else 
 forward_B = 2'b00;
end

endmodule



 

