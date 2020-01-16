
// Set SP to 261 and call Sys.init()
@261
D=A
@SP
M=D
@Sys.init
0;JMP

// Function 'Main.fibonacci' with 0 local variables
(Main.fibonacci)

@0
D=A
@SP
M=M+D

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True3
D;JLT
@SP
A=M
M=0
@Next3
0;JMP
(True3)
@SP
A=M
D=0
M=D-1
(Next3)
@SP
M=M+1

// JMP to LABEL: IF_TRUE
@SP
AM=M-1
D=M
@IF_TRUE
D;JNE

// JMP to LABEL: IF_FALSE
@IF_FALSE
0;JMP

(IF_TRUE)

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

// RETURN
@5
D=A
@LCL
A=M-D
D=M
@R15
M=D
@SP
AM=M-1
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M
@SP
M=D
@SP
M=M+1
@1
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@R15
A=M
0;JMP

(IF_FALSE)

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

// Call 'Main.fibonacci' with 1 args
@return.Main.fibonacci.13
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=A
@1
D=A+D
@LCL
D=M-D
@ARG
M=D
@Main.fibonacci
0;JMP
(return.Main.fibonacci.13)

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

// Call 'Main.fibonacci' with 1 args
@return.Main.fibonacci.17
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=A
@1
D=A+D
@LCL
D=M-D
@ARG
M=D
@Main.fibonacci
0;JMP
(return.Main.fibonacci.17)

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// RETURN
@5
D=A
@LCL
A=M-D
D=M
@R15
M=D
@SP
AM=M-1
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M
@SP
M=D
@SP
M=M+1
@1
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@R15
A=M
0;JMP

// Function 'Sys.init' with 0 local variables
(Sys.init)

@0
D=A
@SP
M=M+D

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Main.fibonacci' with 1 args
@return.Main.fibonacci.2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=A
@1
D=A+D
@LCL
D=M-D
@ARG
M=D
@Main.fibonacci
0;JMP
(return.Main.fibonacci.2)

(WHILE)

// JMP to LABEL: WHILE
@WHILE
0;JMP