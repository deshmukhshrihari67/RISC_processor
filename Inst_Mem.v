module Inst_Mem(PC,Inst);
input [15:0] PC;//
output [15:0] Inst;
reg [15:0] reg_file[511:0];//16 16-bit register
reg [15:0] temp;
assign Inst = temp; //assigns output to instruction

initial
 begin
  $readmemb ("C:/Users/Vikash kumar/Desktop/processor/binary_inst.txt",reg_file);
 end

always@(PC)
temp <= reg_file[PC];
endmodule