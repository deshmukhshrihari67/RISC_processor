module cond_flag(WB_in,opcode,funct,C_flag,Z_flag,WB_out);
input WB_in,C_flag,Z_flag;
input [3:0] opcode;
input [1:0] funct;//
output WB_out;
wire a,b,c,d,sel;
assign a = ~opcode[3]&~opcode[2]&~opcode[1]&~opcode[0] & funct[1]&~funct[0] &~C_flag; //ADC
assign b = ~opcode[3]&~opcode[2]&~opcode[1]&~opcode[0] & ~funct[1]&funct[0] &~Z_flag;  //ADZ
assign c = ~opcode[3]&~opcode[2]&opcode[1]&~opcode[0] & funct[1]&~funct[0] &~C_flag; //NDC
assign d = ~opcode[3]&~opcode[2]&opcode[1]&~opcode[0] & ~funct[1]&funct[0] &~Z_flag;  //NDZ
assign sel = a|b|c|d;
assign WB_out = sel ? 1'b0: WB_in;
endmodule