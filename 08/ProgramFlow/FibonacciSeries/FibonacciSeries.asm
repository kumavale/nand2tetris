
// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@SP
AM=M-1
@0
D=A
@THAT
D=D+M
@dest3
M=D
@SP
A=M
D=M
@dest3
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 1
@SP
AM=M-1
@1
D=A
@THAT
D=D+M
@dest5
M=D
@SP
A=M
D=M
@dest5
A=M
M=D

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
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

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest9
M=D
@SP
A=M
D=M
@dest9
A=M
M=D

(MAIN_LOOP_START)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: COMPUTE_ELEMENT
@SP
AM=M-1
D=M
@COMPUTE_ELEMENT
D;JNE

// JMP to LABEL: END_PROGRAM
@END_PROGRAM
0;JMP

(COMPUTE_ELEMENT)

// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push that 1
@1
D=A
@THAT
A=D+M
D=M
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

// pop that 2
@SP
AM=M-1
@2
D=A
@THAT
D=D+M
@dest18
M=D
@SP
A=M
D=M
@dest18
A=M
M=D

// push pointer 1
@1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest26
M=D
@SP
A=M
D=M
@dest26
A=M
M=D

// JMP to LABEL: MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP

(END_PROGRAM)