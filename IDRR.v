module IDRR(clock,WB,M,EX,RegRs,RegRt,RegRd,imm_value_9,imm_value_6,opcode,PC_Plus1,PC,Inst,imm9_0Pad,valid,IDRR_write,LM_RegRd,   WB_Reg,M_Reg,EX_Reg,
RegRs_Reg,RegRt_Reg,RegRd_Reg, imm_value_9_Reg,imm_value_6_Reg, opcode_Reg,PC_Plus1_Reg,PC_Reg,Inst_Reg,imm9_0Pad_Reg,valid_Reg,LM_RegRd_Reg);
input clock;
input [2:0] WB;
input [2:0] M;
input [8:0] EX;
input [2:0] RegRs,RegRt,RegRd;
input [15:0] imm_value_9;
input [15:0] imm_value_6;
input [3:0] opcode;
input [15:0] PC_Plus1;  //
input [15:0] PC;  //
input [15:0] Inst;
input [15:0] imm9_0Pad;
input valid;
input IDRR_write;
input [2:0]LM_RegRd;
output [2:0] WB_Reg;
output [2:0] M_Reg;
output [8:0] EX_Reg;
output [2:0] RegRs_Reg,RegRt_Reg,RegRd_Reg;
output [15:0] imm_value_9_Reg;
output [15:0] imm_value_6_Reg;//
output [3:0] opcode_Reg;
output [15:0] PC_Plus1_Reg; //
output [15:0] PC_Reg; //
output [15:0] Inst_Reg;
output [15:0] imm9_0Pad_Reg;
output valid_Reg;
output [2:0]LM_RegRd_Reg;
reg [2:0] WB_Reg;
reg [2:0] M_Reg;
reg [8:0] EX_Reg;
reg [2:0] RegRs_Reg,RegRt_Reg,RegRd_Reg;
reg [15:0] imm_value_9_Reg;
reg [15:0] imm_value_6_Reg;
reg [3:0] opcode_Reg;
reg [15:0] PC_Plus1_Reg; //
reg [15:0] PC_Reg; //
reg [15:0] Inst_Reg;
reg [15:0] imm9_0Pad_Reg;
reg valid_Reg;
reg [2:0]LM_RegRd_Reg;


initial begin
WB_Reg = 0;
M_Reg = 0;
EX_Reg = 0;
RegRs_Reg = 0;
RegRt_Reg = 0;
RegRd_Reg = 0;
imm_value_9_Reg = 0;
imm_value_6_Reg = 0;
opcode_Reg = 0;
PC_Plus1_Reg = 0; 
PC_Reg = 0;
Inst_Reg = 0;
imm9_0Pad_Reg=0;
valid_Reg =0;
LM_RegRd_Reg=0;
end

always@(posedge clock)
begin
if (~IDRR_write)
begin 
WB_Reg <= WB;
M_Reg <= M;
EX_Reg <= EX;
RegRs_Reg <= RegRs;
RegRt_Reg <= RegRt;
RegRd_Reg <= RegRd;
imm_value_9_Reg <= imm_value_9;
imm_value_6_Reg <= imm_value_6 ;
opcode_Reg <= opcode ;
PC_Plus1_Reg <= PC_Plus1; 
PC_Reg <= PC;
Inst_Reg <= Inst;
imm9_0Pad_Reg <= imm9_0Pad;
valid_Reg<=valid;
LM_RegRd_Reg<=LM_RegRd;
end
end
endmodule