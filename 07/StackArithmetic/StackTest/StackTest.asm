
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True2
D;JEQ
@SP
A=M
M=0
@Next2
0;JMP
(True2)
@SP
A=M
D=0
M=D-1
(Next2)
@SP
M=M+1

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True5
D;JEQ
@SP
A=M
M=0
@Next5
0;JMP
(True5)
@SP
A=M
D=0
M=D-1
(Next5)
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True8
D;JEQ
@SP
A=M
M=0
@Next8
0;JMP
(True8)
@SP
A=M
D=0
M=D-1
(Next8)
@SP
M=M+1

// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True11
D;JLT
@SP
A=M
M=0
@Next11
0;JMP
(True11)
@SP
A=M
D=0
M=D-1
(Next11)
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True14
D;JLT
@SP
A=M
M=0
@Next14
0;JMP
(True14)
@SP
A=M
D=0
M=D-1
(Next14)
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True17
D;JLT
@SP
A=M
M=0
@Next17
0;JMP
(True17)
@SP
A=M
D=0
M=D-1
(Next17)
@SP
M=M+1

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True20
D;JGT
@SP
A=M
M=0
@Next20
0;JMP
(True20)
@SP
A=M
D=0
M=D-1
(Next20)
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True23
D;JGT
@SP
A=M
M=0
@Next23
0;JMP
(True23)
@SP
A=M
D=0
M=D-1
(Next23)
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True26
D;JGT
@SP
A=M
M=0
@Next26
0;JMP
(True26)
@SP
A=M
D=0
M=D-1
(Next26)
@SP
M=M+1

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// and
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D&M
@SP
M=M+1

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// or
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D|M
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1