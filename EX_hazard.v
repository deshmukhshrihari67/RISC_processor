module EX_hazard(valid_in,opcode,ALU_zero,sel,valid );
input valid_in;
input [3:0] opcode;
input ALU_zero;//
output [1:0] sel;
output valid;
reg [1:0] sel;
assign valid = (opcode[3]&opcode[2]&~opcode[1]&~opcode[0]&ALU_zero&~valid_in) | (opcode[3]&~opcode[2]&~opcode[1]&opcode[0]&~valid_in) ;  // BEQ JLR
always@(opcode,ALU_zero,valid_in)
begin
if ((opcode == 4'b1001) && (~valid_in))
sel <= 2'b01;
else if ((opcode == 4'b1100) && ALU_zero && (~valid_in))  //  i have dought that ALU_zero take time , and before it is computed it will generate select line output and corresponding signal is bypassed by mux. 
sel <= 2'b10;  
else
sel <= 2'b00;
end 
endmodule