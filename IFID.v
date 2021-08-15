module IFID(clock,PC_Plus1,Inst,PC,valid,IFID_write,   Inst_Reg,PC_Plus1_Reg,PC_Reg,valid_Reg);
input [15:0] PC_Plus1,Inst,PC;
input clock;
input valid;
input IFID_write;
output [15:0] Inst_Reg, PC_Plus1_Reg,PC_Reg;
output valid_Reg;
reg [15:0] Inst_Reg, PC_Plus1_Reg, PC_Reg;
reg valid_Reg;
initial begin
Inst_Reg = 0;
PC_Plus1_Reg = 0;
PC_Reg = 0;
valid_Reg = 0;
end

always@(posedge clock)
begin
if (~IFID_write)
begin
Inst_Reg <= Inst;
PC_Plus1_Reg <= PC_Plus1;
PC_Reg <= PC;
valid_Reg<=valid;
end
end
endmodule