module regfile_sub (data_out,data_in, load,clk);
input [15:0] data_in;
input load,clk;//
output reg [15:0] data_out;

initial
data_out = 16'd0;

always@( *)
if (load && clk) data_out <= data_in;
endmodule
