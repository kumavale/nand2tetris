// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

    @i      // i = 0
    M=0
    @2      // R2 = 0
    M=0
    @0      // if R0==0 goto END
    D=M
    @END
    D;JEQ
    @1      // if R1==0 goto END
    D=M
    @END
    D;JEQ

(LOOP)
    @i      // if (i-R1)==0 goto END
    D=M
    @1
    D=D-M
    @END
    D;JEQ
    @0      // R2 += R0
    D=M
    @2
    M=D+M
    @i      // i++
    M=M+1
    @LOOP   // goto LOOP
    0;JMP
(END)
    @END
    0;JMP

