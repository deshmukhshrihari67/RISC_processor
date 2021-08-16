# RISC_processor

The RISC processor has been designed for a small set of instuction set architecture.

-Designed a 16 bit, 6 stage-pipelined RISC processor for a custom ISA of 14 instructions.
-Implemented the design in Verilog HDL and verified with ModelSim simulations.
-Implemented forwarding unit, stalling unit and branch prediction blocks for hazard mitigation.

-The six stages are consists of instruction fetch, instruction decode, register read, execute, memory access, and write back.

-This RISC processor is an 8-register, 16-bit computer system. It has 8 general-purpose
registers (R0 to R7). Register R7 is always stores Program Counter. All addresses are short word
addresses (i.e. address 0 corresponds to the first two bytes of main memory, address 1 corresponds to
the second two bytes of main memory, etc.). This architecture uses condition code register which has
two flags Carry flag ( C ) and Zero flag (Z). This processor is very simple, but it is general enough to solve
complex problems. The architecture allows predicated instruction execution and multiple load and store
execution. There are three machine-code instruction formats (R, I, and J type) and a total of 14
instructions. 
