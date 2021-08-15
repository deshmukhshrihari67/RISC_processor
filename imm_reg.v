module imm_reg(clk,imm8_in,clear,enable,     imm8_out);
input clk;
input [7:0] imm8_in;
input [2:0] clear;
input enable;  //  active low signal means work on  "zero"
output [7:0] imm8_out;
reg [7:0]clear_temp;

genvar i;

generate for (i=0;i<8;i=i+1)
begin: loop_reg
imm_reg_sub reg_sub(.clk(clk),.enable(enable),.clear(clear_temp[i]),.data_in(imm8_in[i]),.data_out(imm8_out[i]));
end
endgenerate

always@(*)
begin
clear_temp = 8'b00000000;
clear_temp[clear] = 1'b1;
end

endmodule