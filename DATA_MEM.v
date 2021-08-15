module DATA_MEM(Mem_Write,Mem_Read,Addr,Data_IN,Data_OUT);
input [15:0] Addr,Data_IN;
input Mem_Write,Mem_Read;//
output [15:0] Data_OUT;
reg [15:0] Data_OUT;
reg [15:0] regfile[255:0];
always@(Addr,Data_IN,Mem_Write)
if(Mem_Write)
begin
regfile[Addr]<=Data_IN; 
end
always@(Addr,Data_IN,Mem_Read)
if(Mem_Read)
Data_OUT <= regfile[Addr];
else
Data_OUT <= 16'hzzzz;
endmodule