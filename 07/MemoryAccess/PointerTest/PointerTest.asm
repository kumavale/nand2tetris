
// push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 3040
@3040
D=A
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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 2
@SP
AM=M-1
@2
D=A
@THIS
D=D+M
@dest5
M=D
@SP
A=M
D=M
@dest5
A=M
M=D

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 6
@SP
AM=M-1
@6
D=A
@THAT
D=D+M
@dest7
M=D
@SP
A=M
D=M
@dest7
A=M
M=D

// push pointer 0
@0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 1
@1
@THAT
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

// push this 2
@2
D=A
@THIS
A=D+M
D=M
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

// push that 6
@6
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