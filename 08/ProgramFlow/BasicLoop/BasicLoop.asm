
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest1
M=D
@SP
A=M
D=M
@dest1
A=M
M=D

(LOOP_START)

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

// push local 0
@0
D=A
@LCL
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest6
M=D
@SP
A=M
D=M
@dest6
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
@dest10
M=D
@SP
A=M
D=M
@dest10
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

// JMP to LABEL: LOOP_START
@SP
AM=M-1
D=M
@LOOP_START
D;JNE

// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1