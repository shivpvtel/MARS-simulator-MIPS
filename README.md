# MARS-simulator-MIPS


1.	When you run the previous program, what is printed?
      a.	The sum from 0 .. 100 is :338350:

2.	What is the value in register $t7 (in decimal) when the program ends? 
      a.	$t7	15	0x0002710 which is 10000 in decimal 

3.	Set a breakpoint for the instruction at line 13 of the assembler source code.  Run the program again; it should stop at the breakpoint.  Now execute that one instruction.  Which registers have changed as a result of executing that one instruction?  You might need to continue past the breakpoint several times to see what's going on.  Note that P&H COD Appendix A.10 has descriptions of all the instructions, but you can't just look up the answer. 
The registers that changed for me are:
  i.	$t0
  ii.	$t6
 iii.	$t7
  iv.	$t8
   v.	$t9
  vi.	Pc
 vii.	Io 
