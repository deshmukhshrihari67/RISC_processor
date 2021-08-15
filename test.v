module test;
reg clk;
integer k;

processor p_uut(clk);

initial clk=0;
always #20 clk = ~ clk;
initial
   begin
    // initial Register file 
   // for (k=0; k<8; k=k+1)
     //  p_uut.register_file.reg_file[k]= k;
     
	  
	  
	
	 for (k=0; k<200; k=k+1)
          p_uut.memory.regfile[k]= 16'h0000;  // factorial
       //p_uut.memory.regfile[k]= 16'h0003;
        //p_uut.memory.regfile[k]= k; //separation of even no
	 //  initial Inst memory
        //p_uut.memory.regfile[4]= 16'h0004;
	 // p_uut.memory.regfile[25]= 16'hfffe;   //separation of even no
         // p_uut.memory.regfile[26]= 16'd100;     //separation of even no
	 
//	       p_uut.Inst_M.reg_file[0] = 16'b00_00__011_000_000_000; //ADD R3 R0 R0    correct
//         // p_uut.Inst_M.reg_file[2] = 16'b01_01__111_100_000011; //  SW R7 R4 000011
//          p_uut.Inst_M.reg_file[1] = 16'b11_00__100__011_000110; //BEQ R4 R3 6     correct
//          p_uut.Inst_M.reg_file[2] = 16'b10_01__101__000_000000; //JLR R5 R0 00     correct        
//          p_uut.Inst_M.reg_file[3] = 16'b00_11__001_000111001; //LHI R1 000111001 
//          p_uut.Inst_M.reg_file[4] = 16'b00_10__110_100_010_000; //NDU R6 R4 R2    correct
//          p_uut.Inst_M.reg_file[5] = 16'b00_11__011_000111001; //LHI R3 000111001  correct
//          p_uut.Inst_M.reg_file[6] = 16'b00_00__011_101_111_000; // ADZ R3 R5 R7 
//	       p_uut.Inst_M.reg_file[7] = 16'b01_00__100_000_000011; // LW R4 R0 000011   correct  
//          p_uut.Inst_M.reg_file[8] = 16'b00_00__000_100_110_000; // ADZ R0 R4 R6 
         
  
	   // p_uut.Inst_M.reg_file[6] = 16'b00_00__100_101_011_000; // ADZ R4 R5 R3    correct
	 	 //p_uut.Inst_M.reg_file[7] = 16'b00_10__110_100_010_010; //NDC R6 R1 R2    wrong
		// p_uut.Inst_M.reg_file[9] = 16'b00_00__011_101_111_000; // ADZ R3 R5 R1 
      // p_uut.Inst_M.reg_file[10] = 16'b00_00__011_101_001_000; // ADZ R3 R5 R1 
      // p_uut.Inst_M.reg_file[11] = 16'b00_00__011_101_001_000; // ADZ R3 R5 R1 
		// p_uut.Inst_M.reg_file[5] = 16'b01_01__001_100_001000; //  SW R1 R4 000110
	   // p_uut.Inst_M.reg_file[4] = 16'b00_10__110_100_010_000; //NDU R6 R4 R2    correct
	   // p_uut.Inst_M.reg_file[6] = 16'b11_11__010_111_000011; //nop
  //p_uut.Inst_M.reg_file[4] = 16'b10_00__010_000_000_011; //JAL R2 3    correct
//p_uut.Inst_M.reg_file[2] = 16'b00_01__101_101_000111; //ADI R5 R5 7      correct
  //  p_uut.Inst_M.reg_file[1] = 16'b10_01__101__000_000000; //JLR R5 R0 00     correct
    //  initial Data memory
	 //p_uut.memory.regfile[9]= 16'd8;
	 //p_uut.memory.regfile[10]= 16'd10;
	 //p_uut.memory.regfile[11]= 16'd14;
	 
    # 500000
   //for (k=0; k<8; k=k+1)
	 // $display ("R%1d - %2d",k, p_uut.register_file.D_loop[k].D1.data_out ) ;
	 // regfile display
	
	// for(i=0;i<8;i=i+1)
//begin
// p_uut.register_file ReadA=i;
 //#10;
 //$display ("Reg[%2d]=%d", ReadA,OutA);
 //end
	 
	 $display ("R%1d - %2d",0, p_uut.register_file.D_loop[0].D1.data_out ) ;
	 $display ("R%1d - %2d",1, p_uut.register_file.D_loop[1].D1.data_out ) ;
	 $display ("R%1d - %2d",2, p_uut.register_file.D_loop[2].D1.data_out ) ;
	 $display ("R%1d - %2d",3, p_uut.register_file.D_loop[3].D1.data_out ) ;
	 $display ("R%1d - %2d",4, p_uut.register_file.D_loop[4].D1.data_out ) ;
	 $display ("R%1d - %2d",5, p_uut.register_file.D_loop[5].D1.data_out ) ;
	 $display ("R%1d - %2d",6, p_uut.register_file.D_loop[6].D1.data_out ) ;
         $display ("R%1d - %2d",7, p_uut.register_file.D_loop[7].D1.data_out ) ;
	 
	 for (k=0; k<200; k=k+1) 
		 $display ("MEM%1d - %2d",k, p_uut.memory.regfile[k])  ;
                for (k=0; k<30; k=k+1) 
		 $display ("Inst_MEM%1d - %2d",k, p_uut.Inst_M.reg_file[k])  ;
		 
	#700000 $finish;
   end //
endmodule
