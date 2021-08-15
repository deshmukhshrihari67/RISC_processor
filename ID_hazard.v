module ID_hazard(valid_in,opcode,sel,valid);
input valid_in;
input [3:0]opcode;//
output sel;
output valid;
assign sel = opcode[3]&~opcode[2]&~opcode[1]&~opcode[0]&~valid_in;
assign valid = opcode[3]&~opcode[2]&~opcode[1]&~opcode[0]&~valid_in;
endmodule