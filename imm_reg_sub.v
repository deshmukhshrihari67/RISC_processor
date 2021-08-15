module imm_reg_sub(clk,enable,clear,data_in,data_out);
input clk;
input enable;
input clear;
input data_in;//
output reg data_out;

initial 
data_out = 1'b0;

always@(posedge clk)
begin
 if (~enable)
     data_out <= data_in;
 else if (clear)
     data_out <= 1'b0;
end

endmodule
