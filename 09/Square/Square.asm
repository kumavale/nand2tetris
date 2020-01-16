
// Set SP to 261 and call Sys.init()
@261
D=A
@SP
M=D
@Sys.init
0;JMP

// Function 'Main.main' with 1 local variables
(Main.main)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@SP
M=M+D

// Call 'SquareGame.new' with 0 args
@return.SquareGame.new.1
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@SquareGame.new
0;JMP
(return.SquareGame.new.1)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest2
M=D
@SP
A=M
D=M
@dest2
A=M
M=D

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

// Call 'SquareGame.run' with 1 args
@return.SquareGame.run.4
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
@SquareGame.run
0;JMP
(return.SquareGame.run.4)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest5
M=D
@SP
A=M
D=M
@dest5
A=M
M=D

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

// Call 'SquareGame.dispose' with 1 args
@return.SquareGame.dispose.7
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
@SquareGame.dispose
0;JMP
(return.SquareGame.dispose.7)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest8
M=D
@SP
A=M
D=M
@dest8
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Array.new' with 0 local variables
(Array.new)

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

// push constant 0
@0
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
@True3
D;JGT
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

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.9
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
@Sys.error
0;JMP
(return.Sys.error.9)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest10
M=D
@SP
A=M
D=M
@dest10
A=M
M=D

(IF_FALSE0)

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

// Call 'Memory.alloc' with 1 args
@return.Memory.alloc.13
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
@Memory.alloc
0;JMP
(return.Memory.alloc.13)

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

// Function 'Array.dispose' with 0 local variables
(Array.dispose)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
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

// Call 'Memory.deAlloc' with 1 args
@return.Memory.deAlloc.19
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
@Memory.deAlloc
0;JMP
(return.Memory.deAlloc.19)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest20
M=D
@SP
A=M
D=M
@dest20
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Keyboard.init' with 0 local variables
(Keyboard.init)

@0
D=A
@SP
M=M+D

// push constant 0
@0
D=A
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

// Function 'Keyboard.keyPressed' with 0 local variables
(Keyboard.keyPressed)

@0
D=A
@SP
M=M+D

// push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Memory.peek' with 1 args
@return.Memory.peek.5
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
@Memory.peek
0;JMP
(return.Memory.peek.5)

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

// Function 'Keyboard.readChar' with 2 local variables
(Keyboard.readChar)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@SP
M=M+D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.printChar' with 1 args
@return.Output.printChar.9
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
@Output.printChar
0;JMP
(return.Output.printChar.9)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest10
M=D
@SP
A=M
D=M
@dest10
A=M
M=D

(WHILE_EXP0)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True14
D;JEQ
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

// push constant 0
@0
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
@True17
D;JGT
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

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// Call 'Keyboard.keyPressed' with 0 args
@return.Keyboard.keyPressed.21
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Keyboard.keyPressed
0;JMP
(return.Keyboard.keyPressed.21)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest22
M=D
@SP
A=M
D=M
@dest22
A=M
M=D

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

// push constant 0
@0
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
@True25
D;JGT
@SP
A=M
M=0
@Next25
0;JMP
(True25)
@SP
A=M
D=0
M=D-1
(Next25)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest30
M=D
@SP
A=M
D=M
@dest30
A=M
M=D

(IF_FALSE0)

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// Call 'String.backSpace' with 0 args
@return.String.backSpace.34
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.backSpace
0;JMP
(return.String.backSpace.34)

// Call 'Output.printChar' with 1 args
@return.Output.printChar.35
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
@Output.printChar
0;JMP
(return.Output.printChar.35)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest36
M=D
@SP
A=M
D=M
@dest36
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.printChar' with 1 args
@return.Output.printChar.38
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
@Output.printChar
0;JMP
(return.Output.printChar.38)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest39
M=D
@SP
A=M
D=M
@dest39
A=M
M=D

// push local 1
@1
D=A
@LCL
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

// Function 'Keyboard.readLine' with 5 local variables
(Keyboard.readLine)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@LCL
A=M+D
M=0
@5
D=A
@SP
M=M+D

// push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'String.new' with 1 args
@return.String.new.44
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
@String.new
0;JMP
(return.String.new.44)

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest45
M=D
@SP
A=M
D=M
@dest45
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

// Call 'Output.printString' with 1 args
@return.Output.printString.47
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
@Output.printString
0;JMP
(return.Output.printString.47)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest48
M=D
@SP
A=M
D=M
@dest48
A=M
M=D

// Call 'String.newLine' with 0 args
@return.String.newLine.49
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.newLine
0;JMP
(return.String.newLine.49)

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest50
M=D
@SP
A=M
D=M
@dest50
A=M
M=D

// Call 'String.backSpace' with 0 args
@return.String.backSpace.51
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.backSpace
0;JMP
(return.String.backSpace.51)

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest52
M=D
@SP
A=M
D=M
@dest52
A=M
M=D

(WHILE_EXP0)

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// Call 'Keyboard.readChar' with 0 args
@return.Keyboard.readChar.58
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Keyboard.readChar
0;JMP
(return.Keyboard.readChar.58)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest59
M=D
@SP
A=M
D=M
@dest59
A=M
M=D

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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
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
@True62
D;JEQ
@SP
A=M
M=0
@Next62
0;JMP
(True62)
@SP
A=M
D=0
M=D-1
(Next62)
@SP
M=M+1

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest63
M=D
@SP
A=M
D=M
@dest63
A=M
M=D

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
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
@True71
D;JEQ
@SP
A=M
M=0
@Next71
0;JMP
(True71)
@SP
A=M
D=0
M=D-1
(Next71)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'String.eraseLastChar' with 1 args
@return.String.eraseLastChar.76
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
@String.eraseLastChar
0;JMP
(return.String.eraseLastChar.76)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest77
M=D
@SP
A=M
D=M
@dest77
A=M
M=D

// JMP to LABEL: IF_END1
@IF_END1
0;JMP

(IF_FALSE1)

// push local 3
@3
D=A
@LCL
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

// Call 'String.appendChar' with 2 args
@return.String.appendChar.82
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.appendChar
0;JMP
(return.String.appendChar.82)

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest83
M=D
@SP
A=M
D=M
@dest83
A=M
M=D

(IF_END1)

(IF_FALSE0)

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push local 3
@3
D=A
@LCL
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

// Function 'Keyboard.readInt' with 2 local variables
(Keyboard.readInt)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
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

// Call 'Keyboard.readLine' with 1 args
@return.Keyboard.readLine.92
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
@Keyboard.readLine
0;JMP
(return.Keyboard.readLine.92)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest93
M=D
@SP
A=M
D=M
@dest93
A=M
M=D

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

// Call 'String.intValue' with 1 args
@return.String.intValue.95
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
@String.intValue
0;JMP
(return.String.intValue.95)

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest96
M=D
@SP
A=M
D=M
@dest96
A=M
M=D

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

// Call 'String.dispose' with 1 args
@return.String.dispose.98
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
@String.dispose
0;JMP
(return.String.dispose.98)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest99
M=D
@SP
A=M
D=M
@dest99
A=M
M=D

// push local 1
@1
D=A
@LCL
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

// Function 'Math.init' with 1 local variables
(Math.init)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@SP
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.2
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
@Array.new
0;JMP
(return.Array.new.2)

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Math.1
M=D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.5
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
@Array.new
0;JMP
(return.Array.new.5)

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Math.0
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest11
M=D
@SP
A=M
D=M
@dest11
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest14
M=D
@SP
A=M
D=M
@dest14
A=M
M=D

(WHILE_EXP0)

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

// push constant 15
@15
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
@True18
D;JLT
@SP
A=M
M=0
@Next18
0;JMP
(True18)
@SP
A=M
D=0
M=D-1
(Next18)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest24
M=D
@SP
A=M
D=M
@dest24
A=M
M=D

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

// push static 0
@Math.0
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

// push static 0
@Math.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push static 0
@Math.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest43
M=D
@SP
A=M
D=M
@dest43
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest46
M=D
@SP
A=M
D=M
@dest46
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Math.abs' with 0 local variables
(Math.abs)

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

// push constant 0
@0
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
@True54
D;JLT
@SP
A=M
M=0
@Next54
0;JMP
(True54)
@SP
A=M
D=0
M=D-1
(Next54)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest60
M=D
@SP
A=M
D=M
@dest60
A=M
M=D

(IF_FALSE0)

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

// Function 'Math.multiply' with 5 local variables
(Math.multiply)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@LCL
A=M+D
M=0
@5
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

// push constant 0
@0
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
@True67
D;JLT
@SP
A=M
M=0
@Next67
0;JMP
(True67)
@SP
A=M
D=0
M=D-1
(Next67)
@SP
M=M+1

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

// push constant 0
@0
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
@True70
D;JGT
@SP
A=M
M=0
@Next70
0;JMP
(True70)
@SP
A=M
D=0
M=D-1
(Next70)
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

// push constant 0
@0
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
@True74
D;JGT
@SP
A=M
M=0
@Next74
0;JMP
(True74)
@SP
A=M
D=0
M=D-1
(Next74)
@SP
M=M+1

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

// push constant 0
@0
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
@True77
D;JLT
@SP
A=M
M=0
@Next77
0;JMP
(True77)
@SP
A=M
D=0
M=D-1
(Next77)
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

// or
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D|M
@SP
M=M+1

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest80
M=D
@SP
A=M
D=M
@dest80
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

// Call 'Math.abs' with 1 args
@return.Math.abs.82
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
@Math.abs
0;JMP
(return.Math.abs.82)

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest83
M=D
@SP
A=M
D=M
@dest83
A=M
M=D

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

// Call 'Math.abs' with 1 args
@return.Math.abs.85
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
@Math.abs
0;JMP
(return.Math.abs.85)

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest86
M=D
@SP
A=M
D=M
@dest86
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True89
D;JLT
@SP
A=M
M=0
@Next89
0;JMP
(True89)
@SP
A=M
D=0
M=D-1
(Next89)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest94
M=D
@SP
A=M
D=M
@dest94
A=M
M=D

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

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest96
M=D
@SP
A=M
D=M
@dest96
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest98
M=D
@SP
A=M
D=M
@dest98
A=M
M=D

(IF_FALSE0)

(WHILE_EXP0)

// push local 2
@2
D=A
@LCL
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True107
D;JLT
@SP
A=M
M=0
@Next107
0;JMP
(True107)
@SP
A=M
D=0
M=D-1
(Next107)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// and
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D&M
@SP
M=M+1

// push constant 0
@0
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
@True118
D;JEQ
@SP
A=M
M=0
@Next118
0;JMP
(True118)
@SP
A=M
D=0
M=D-1
(Next118)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

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
@dest126
M=D
@SP
A=M
D=M
@dest126
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest134
M=D
@SP
A=M
D=M
@dest134
A=M
M=D

(IF_FALSE1)

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest139
M=D
@SP
A=M
D=M
@dest139
A=M
M=D

// push local 3
@3
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest143
M=D
@SP
A=M
D=M
@dest143
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

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

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest152
M=D
@SP
A=M
D=M
@dest152
A=M
M=D

(IF_FALSE2)

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

// Function 'Math.divide' with 4 local variables
(Math.divide)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@SP
M=M+D

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

// push constant 0
@0
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
@True159
D;JEQ
@SP
A=M
M=0
@Next159
0;JMP
(True159)
@SP
A=M
D=0
M=D-1
(Next159)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.164
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
@Sys.error
0;JMP
(return.Sys.error.164)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest165
M=D
@SP
A=M
D=M
@dest165
A=M
M=D

(IF_FALSE0)

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

// push constant 0
@0
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
@True169
D;JLT
@SP
A=M
M=0
@Next169
0;JMP
(True169)
@SP
A=M
D=0
M=D-1
(Next169)
@SP
M=M+1

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

// push constant 0
@0
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
@True172
D;JGT
@SP
A=M
M=0
@Next172
0;JMP
(True172)
@SP
A=M
D=0
M=D-1
(Next172)
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

// push constant 0
@0
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
@True176
D;JGT
@SP
A=M
M=0
@Next176
0;JMP
(True176)
@SP
A=M
D=0
M=D-1
(Next176)
@SP
M=M+1

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

// push constant 0
@0
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
@True179
D;JLT
@SP
A=M
M=0
@Next179
0;JMP
(True179)
@SP
A=M
D=0
M=D-1
(Next179)
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

// or
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D|M
@SP
M=M+1

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest182
M=D
@SP
A=M
D=M
@dest182
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
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

// Call 'Math.abs' with 1 args
@return.Math.abs.187
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
@Math.abs
0;JMP
(return.Math.abs.187)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest188
M=D
@SP
A=M
D=M
@dest188
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest191
M=D
@SP
A=M
D=M
@dest191
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

// Call 'Math.abs' with 1 args
@return.Math.abs.193
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
@Math.abs
0;JMP
(return.Math.abs.193)

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest194
M=D
@SP
A=M
D=M
@dest194
A=M
M=D

(WHILE_EXP0)

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

// push constant 15
@15
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
@True198
D;JLT
@SP
A=M
M=0
@Next198
0;JMP
(True198)
@SP
A=M
D=0
M=D-1
(Next198)
@SP
M=M+1

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
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

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push constant 32767
@32767
D=A
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

// push static 1
@Math.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
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

// push static 1
@Math.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True220
D;JLT
@SP
A=M
M=0
@Next220
0;JMP
(True220)
@SP
A=M
D=0
M=D-1
(Next220)
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest221
M=D
@SP
A=M
D=M
@dest221
A=M
M=D

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

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

// push static 1
@Math.1
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

// push static 1
@Math.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push static 1
@Math.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest243
M=D
@SP
A=M
D=M
@dest243
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest246
M=D
@SP
A=M
D=M
@dest246
A=M
M=D

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

// push static 1
@Math.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True259
D;JGT
@SP
A=M
M=0
@Next259
0;JMP
(True259)
@SP
A=M
D=0
M=D-1
(Next259)
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest260
M=D
@SP
A=M
D=M
@dest260
A=M
M=D

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest269
M=D
@SP
A=M
D=M
@dest269
A=M
M=D

(IF_FALSE2)

(IF_FALSE1)

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

(WHILE_EXP1)

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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True278
D;JGT
@SP
A=M
M=0
@Next278
0;JMP
(True278)
@SP
A=M
D=0
M=D-1
(Next278)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
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

// push static 1
@Math.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True291
D;JGT
@SP
A=M
M=0
@Next291
0;JMP
(True291)
@SP
A=M
D=0
M=D-1
(Next291)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

// push local 1
@1
D=A
@LCL
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

// push static 0
@Math.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest303
M=D
@SP
A=M
D=M
@dest303
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

// push static 1
@Math.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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
@dest311
M=D
@SP
A=M
D=M
@dest311
A=M
M=D

(IF_FALSE3)

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest316
M=D
@SP
A=M
D=M
@dest316
A=M
M=D

// JMP to LABEL: WHILE_EXP1
@WHILE_EXP1
0;JMP

(WHILE_END1)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE

// JMP to LABEL: IF_FALSE4
@IF_FALSE4
0;JMP

(IF_TRUE4)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest325
M=D
@SP
A=M
D=M
@dest325
A=M
M=D

(IF_FALSE4)

// push local 1
@1
D=A
@LCL
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

// Function 'Math.sqrt' with 4 local variables
(Math.sqrt)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
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

// push constant 0
@0
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
@True332
D;JLT
@SP
A=M
M=0
@Next332
0;JMP
(True332)
@SP
A=M
D=0
M=D-1
(Next332)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.337
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
@Sys.error
0;JMP
(return.Sys.error.337)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest338
M=D
@SP
A=M
D=M
@dest338
A=M
M=D

(IF_FALSE0)

// push constant 7
@7
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
@dest341
M=D
@SP
A=M
D=M
@dest341
A=M
M=D

(WHILE_EXP0)

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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True346
D;JGT
@SP
A=M
M=0
@Next346
0;JMP
(True346)
@SP
A=M
D=0
M=D-1
(Next346)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push local 3
@3
D=A
@LCL
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

// push static 0
@Math.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest356
M=D
@SP
A=M
D=M
@dest356
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.359
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.359)

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest360
M=D
@SP
A=M
D=M
@dest360
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True363
D;JGT
@SP
A=M
M=0
@Next363
0;JMP
(True363)
@SP
A=M
D=0
M=D-1
(Next363)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True367
D;JLT
@SP
A=M
M=0
@Next367
0;JMP
(True367)
@SP
A=M
D=0
M=D-1
(Next367)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
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

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest374
M=D
@SP
A=M
D=M
@dest374
A=M
M=D

(IF_FALSE1)

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest379
M=D
@SP
A=M
D=M
@dest379
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push local 3
@3
D=A
@LCL
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

// Function 'Math.max' with 0 local variables
(Math.max)

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True387
D;JGT
@SP
A=M
M=0
@Next387
0;JMP
(True387)
@SP
A=M
D=0
M=D-1
(Next387)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest392
M=D
@SP
A=M
D=M
@dest392
A=M
M=D

(IF_FALSE0)

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

// Function 'Math.min' with 0 local variables
(Math.min)

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True399
D;JLT
@SP
A=M
M=0
@Next399
0;JMP
(True399)
@SP
A=M
D=0
M=D-1
(Next399)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest404
M=D
@SP
A=M
D=M
@dest404
A=M
M=D

(IF_FALSE0)

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

// Function 'Memory.init' with 0 local variables
(Memory.init)

@0
D=A
@SP
M=M+D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Memory.0
M=D

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Memory.0
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

// push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest7
M=D
@SP
A=M
D=M
@dest7
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest10
M=D
@SP
A=M
D=M
@dest10
A=M
M=D

// push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Memory.0
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

// push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest15
M=D
@SP
A=M
D=M
@dest15
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest18
M=D
@SP
A=M
D=M
@dest18
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Memory.peek' with 0 local variables
(Memory.peek)

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

// push static 0
@Memory.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// Function 'Memory.poke' with 0 local variables
(Memory.poke)

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

// push static 0
@Memory.0
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest33
M=D
@SP
A=M
D=M
@dest33
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest36
M=D
@SP
A=M
D=M
@dest36
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Memory.alloc' with 1 local variables
(Memory.alloc)

@0
D=A
@LCL
A=M+D
M=0
@1
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

// push constant 1
@1
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
@True42
D;JLT
@SP
A=M
M=0
@Next42
0;JMP
(True42)
@SP
A=M
D=0
M=D-1
(Next42)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.47
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
@Sys.error
0;JMP
(return.Sys.error.47)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest48
M=D
@SP
A=M
D=M
@dest48
A=M
M=D

(IF_FALSE0)

// push constant 2048
@2048
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
@dest51
M=D
@SP
A=M
D=M
@dest51
A=M
M=D

(WHILE_EXP0)

// push constant 0
@0
D=A
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True59
D;JLT
@SP
A=M
M=0
@Next59
0;JMP
(True59)
@SP
A=M
D=0
M=D-1
(Next59)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push constant 1
@1
D=A
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest67
M=D
@SP
A=M
D=M
@dest67
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 16379
@16379
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
@True74
D;JGT
@SP
A=M
M=0
@Next74
0;JMP
(True74)
@SP
A=M
D=0
M=D-1
(Next74)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.79
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
@Sys.error
0;JMP
(return.Sys.error.79)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest80
M=D
@SP
A=M
D=M
@dest80
A=M
M=D

(IF_FALSE1)

// push constant 0
@0
D=A
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True90
D;JGT
@SP
A=M
M=0
@Next90
0;JMP
(True90)
@SP
A=M
D=0
M=D-1
(Next90)
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
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

// push constant 0
@0
D=A
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest108
M=D
@SP
A=M
D=M
@dest108
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest111
M=D
@SP
A=M
D=M
@dest111
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 2
@2
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True120
D;JEQ
@SP
A=M
M=0
@Next120
0;JMP
(True120)
@SP
A=M
D=0
M=D-1
(Next120)
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

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

// push constant 3
@3
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 4
@4
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest134
M=D
@SP
A=M
D=M
@dest134
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest137
M=D
@SP
A=M
D=M
@dest137
A=M
M=D

// JMP to LABEL: IF_END3
@IF_END3
0;JMP

(IF_FALSE3)

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

// push constant 3
@3
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

// push constant 1
@1
D=A
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest150
M=D
@SP
A=M
D=M
@dest150
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest153
M=D
@SP
A=M
D=M
@dest153
A=M
M=D

(IF_END3)

// push constant 1
@1
D=A
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest163
M=D
@SP
A=M
D=M
@dest163
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest166
M=D
@SP
A=M
D=M
@dest166
A=M
M=D

(IF_FALSE2)

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest172
M=D
@SP
A=M
D=M
@dest172
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest175
M=D
@SP
A=M
D=M
@dest175
A=M
M=D

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

// push constant 2
@2
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

// Function 'Memory.deAlloc' with 2 local variables
(Memory.deAlloc)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest184
M=D
@SP
A=M
D=M
@dest184
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest190
M=D
@SP
A=M
D=M
@dest190
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 0
@0
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
@True197
D;JEQ
@SP
A=M
M=0
@Next197
0;JMP
(True197)
@SP
A=M
D=0
M=D-1
(Next197)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
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

// push constant 1
@1
D=A
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest213
M=D
@SP
A=M
D=M
@dest213
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest216
M=D
@SP
A=M
D=M
@dest216
A=M
M=D

// JMP to LABEL: IF_END0
@IF_END0
0;JMP

(IF_FALSE0)

// push constant 0
@0
D=A
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

// push constant 1
@1
D=A
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest235
M=D
@SP
A=M
D=M
@dest235
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest238
M=D
@SP
A=M
D=M
@dest238
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

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push local 1
@1
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True247
D;JEQ
@SP
A=M
M=0
@Next247
0;JMP
(True247)
@SP
A=M
D=0
M=D-1
(Next247)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push constant 1
@1
D=A
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

// push constant 2
@2
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest257
M=D
@SP
A=M
D=M
@dest257
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest260
M=D
@SP
A=M
D=M
@dest260
A=M
M=D

// JMP to LABEL: IF_END1
@IF_END1
0;JMP

(IF_FALSE1)

// push constant 1
@1
D=A
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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest271
M=D
@SP
A=M
D=M
@dest271
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest274
M=D
@SP
A=M
D=M
@dest274
A=M
M=D

(IF_END1)

(IF_END0)

// push constant 0
@0
D=A
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

// Function 'Output.init' with 0 local variables
(Output.init)

@0
D=A
@SP
M=M+D

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 4
@SP
AM=M-1
@SP
A=M
D=M
@Output.4
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Output.2
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Output.0
M=D

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'String.new' with 1 args
@return.String.new.11
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
@String.new
0;JMP
(return.String.new.11)

// pop static 3
@SP
AM=M-1
@SP
A=M
D=M
@Output.3
M=D

// Call 'Output.initMap' with 0 args
@return.Output.initMap.13
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.initMap
0;JMP
(return.Output.initMap.13)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest14
M=D
@SP
A=M
D=M
@dest14
A=M
M=D

// Call 'Output.createShiftedMap' with 0 args
@return.Output.createShiftedMap.15
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.createShiftedMap
0;JMP
(return.Output.createShiftedMap.15)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest16
M=D
@SP
A=M
D=M
@dest16
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Output.initMap' with 0 local variables
(Output.initMap)

@0
D=A
@SP
M=M+D

// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.21
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
@Array.new
0;JMP
(return.Array.new.21)

// pop static 5
@SP
AM=M-1
@SP
A=M
D=M
@Output.5
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.35
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.35)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest36
M=D
@SP
A=M
D=M
@dest36
A=M
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.49
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.49)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest50
M=D
@SP
A=M
D=M
@dest50
A=M
M=D

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.63
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.63)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest64
M=D
@SP
A=M
D=M
@dest64
A=M
M=D

// push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.77
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.77)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest78
M=D
@SP
A=M
D=M
@dest78
A=M
M=D

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.91
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.91)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest92
M=D
@SP
A=M
D=M
@dest92
A=M
M=D

// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.105
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.105)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest106
M=D
@SP
A=M
D=M
@dest106
A=M
M=D

// push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.119
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.119)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest120
M=D
@SP
A=M
D=M
@dest120
A=M
M=D

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.133
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.133)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest134
M=D
@SP
A=M
D=M
@dest134
A=M
M=D

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.147
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.147)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest148
M=D
@SP
A=M
D=M
@dest148
A=M
M=D

// push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.161
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.161)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest162
M=D
@SP
A=M
D=M
@dest162
A=M
M=D

// push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.175
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.175)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest176
M=D
@SP
A=M
D=M
@dest176
A=M
M=D

// push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.189
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.189)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest190
M=D
@SP
A=M
D=M
@dest190
A=M
M=D

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.203
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.203)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest204
M=D
@SP
A=M
D=M
@dest204
A=M
M=D

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.217
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.217)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest218
M=D
@SP
A=M
D=M
@dest218
A=M
M=D

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.231
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.231)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest232
M=D
@SP
A=M
D=M
@dest232
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.245
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.245)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest246
M=D
@SP
A=M
D=M
@dest246
A=M
M=D

// push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.259
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.259)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest260
M=D
@SP
A=M
D=M
@dest260
A=M
M=D

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.273
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.273)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest274
M=D
@SP
A=M
D=M
@dest274
A=M
M=D

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.287
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.287)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest288
M=D
@SP
A=M
D=M
@dest288
A=M
M=D

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.301
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.301)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest302
M=D
@SP
A=M
D=M
@dest302
A=M
M=D

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.315
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.315)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest316
M=D
@SP
A=M
D=M
@dest316
A=M
M=D

// push constant 52
@52
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

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.329
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.329)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest330
M=D
@SP
A=M
D=M
@dest330
A=M
M=D

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
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

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.343
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.343)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest344
M=D
@SP
A=M
D=M
@dest344
A=M
M=D

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.357
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.357)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest358
M=D
@SP
A=M
D=M
@dest358
A=M
M=D

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.371
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.371)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest372
M=D
@SP
A=M
D=M
@dest372
A=M
M=D

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.385
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.385)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest386
M=D
@SP
A=M
D=M
@dest386
A=M
M=D

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.399
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.399)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest400
M=D
@SP
A=M
D=M
@dest400
A=M
M=D

// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.413
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.413)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest414
M=D
@SP
A=M
D=M
@dest414
A=M
M=D

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.427
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.427)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest428
M=D
@SP
A=M
D=M
@dest428
A=M
M=D

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.441
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.441)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest442
M=D
@SP
A=M
D=M
@dest442
A=M
M=D

// push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.455
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.455)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest456
M=D
@SP
A=M
D=M
@dest456
A=M
M=D

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.469
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.469)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest470
M=D
@SP
A=M
D=M
@dest470
A=M
M=D

// push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.483
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.483)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest484
M=D
@SP
A=M
D=M
@dest484
A=M
M=D

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.497
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.497)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest498
M=D
@SP
A=M
D=M
@dest498
A=M
M=D

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.511
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.511)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest512
M=D
@SP
A=M
D=M
@dest512
A=M
M=D

// push constant 66
@66
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.525
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.525)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest526
M=D
@SP
A=M
D=M
@dest526
A=M
M=D

// push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.539
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.539)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest540
M=D
@SP
A=M
D=M
@dest540
A=M
M=D

// push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.553
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.553)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest554
M=D
@SP
A=M
D=M
@dest554
A=M
M=D

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.567
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.567)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest568
M=D
@SP
A=M
D=M
@dest568
A=M
M=D

// push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.581
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.581)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest582
M=D
@SP
A=M
D=M
@dest582
A=M
M=D

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.595
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.595)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest596
M=D
@SP
A=M
D=M
@dest596
A=M
M=D

// push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.609
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.609)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest610
M=D
@SP
A=M
D=M
@dest610
A=M
M=D

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.623
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.623)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest624
M=D
@SP
A=M
D=M
@dest624
A=M
M=D

// push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.637
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.637)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest638
M=D
@SP
A=M
D=M
@dest638
A=M
M=D

// push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.651
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.651)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest652
M=D
@SP
A=M
D=M
@dest652
A=M
M=D

// push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.665
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.665)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest666
M=D
@SP
A=M
D=M
@dest666
A=M
M=D

// push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.679
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.679)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest680
M=D
@SP
A=M
D=M
@dest680
A=M
M=D

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.693
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.693)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest694
M=D
@SP
A=M
D=M
@dest694
A=M
M=D

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.707
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.707)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest708
M=D
@SP
A=M
D=M
@dest708
A=M
M=D

// push constant 80
@80
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.721
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.721)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest722
M=D
@SP
A=M
D=M
@dest722
A=M
M=D

// push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.735
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.735)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest736
M=D
@SP
A=M
D=M
@dest736
A=M
M=D

// push constant 82
@82
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
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

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.749
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.749)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest750
M=D
@SP
A=M
D=M
@dest750
A=M
M=D

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.763
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.763)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest764
M=D
@SP
A=M
D=M
@dest764
A=M
M=D

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.777
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.777)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest778
M=D
@SP
A=M
D=M
@dest778
A=M
M=D

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.791
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.791)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest792
M=D
@SP
A=M
D=M
@dest792
A=M
M=D

// push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.805
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.805)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest806
M=D
@SP
A=M
D=M
@dest806
A=M
M=D

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.819
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.819)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest820
M=D
@SP
A=M
D=M
@dest820
A=M
M=D

// push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.833
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.833)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest834
M=D
@SP
A=M
D=M
@dest834
A=M
M=D

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.847
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.847)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest848
M=D
@SP
A=M
D=M
@dest848
A=M
M=D

// push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.861
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.861)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest862
M=D
@SP
A=M
D=M
@dest862
A=M
M=D

// push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.875
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.875)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest876
M=D
@SP
A=M
D=M
@dest876
A=M
M=D

// push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.889
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.889)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest890
M=D
@SP
A=M
D=M
@dest890
A=M
M=D

// push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.903
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.903)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest904
M=D
@SP
A=M
D=M
@dest904
A=M
M=D

// push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.917
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.917)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest918
M=D
@SP
A=M
D=M
@dest918
A=M
M=D

// push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.931
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.931)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest932
M=D
@SP
A=M
D=M
@dest932
A=M
M=D

// push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.945
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.945)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest946
M=D
@SP
A=M
D=M
@dest946
A=M
M=D

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.959
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.959)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest960
M=D
@SP
A=M
D=M
@dest960
A=M
M=D

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.973
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.973)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest974
M=D
@SP
A=M
D=M
@dest974
A=M
M=D

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.987
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.987)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest988
M=D
@SP
A=M
D=M
@dest988
A=M
M=D

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1001
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1001)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1002
M=D
@SP
A=M
D=M
@dest1002
A=M
M=D

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1015
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1015)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1016
M=D
@SP
A=M
D=M
@dest1016
A=M
M=D

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1029
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1029)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1030
M=D
@SP
A=M
D=M
@dest1030
A=M
M=D

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1043
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1043)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1044
M=D
@SP
A=M
D=M
@dest1044
A=M
M=D

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1057
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1057)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1058
M=D
@SP
A=M
D=M
@dest1058
A=M
M=D

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1071
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1071)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1072
M=D
@SP
A=M
D=M
@dest1072
A=M
M=D

// push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1085
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1085)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1086
M=D
@SP
A=M
D=M
@dest1086
A=M
M=D

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1099
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1099)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1100
M=D
@SP
A=M
D=M
@dest1100
A=M
M=D

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1113
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1113)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1114
M=D
@SP
A=M
D=M
@dest1114
A=M
M=D

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1127
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1127)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1128
M=D
@SP
A=M
D=M
@dest1128
A=M
M=D

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1141
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1141)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1142
M=D
@SP
A=M
D=M
@dest1142
A=M
M=D

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1155
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1155)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1156
M=D
@SP
A=M
D=M
@dest1156
A=M
M=D

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1169
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1169)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1170
M=D
@SP
A=M
D=M
@dest1170
A=M
M=D

// push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1183
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1183)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1184
M=D
@SP
A=M
D=M
@dest1184
A=M
M=D

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1197
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1197)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1198
M=D
@SP
A=M
D=M
@dest1198
A=M
M=D

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1211
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1211)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1212
M=D
@SP
A=M
D=M
@dest1212
A=M
M=D

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1225
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1225)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1226
M=D
@SP
A=M
D=M
@dest1226
A=M
M=D

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1239
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1239)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1240
M=D
@SP
A=M
D=M
@dest1240
A=M
M=D

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1253
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1253)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1254
M=D
@SP
A=M
D=M
@dest1254
A=M
M=D

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1267
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1267)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1268
M=D
@SP
A=M
D=M
@dest1268
A=M
M=D

// push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1281
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1281)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1282
M=D
@SP
A=M
D=M
@dest1282
A=M
M=D

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1295
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1295)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1296
M=D
@SP
A=M
D=M
@dest1296
A=M
M=D

// push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1309
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1309)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1310
M=D
@SP
A=M
D=M
@dest1310
A=M
M=D

// push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1323
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1323)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1324
M=D
@SP
A=M
D=M
@dest1324
A=M
M=D

// push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1337
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1337)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1338
M=D
@SP
A=M
D=M
@dest1338
A=M
M=D

// push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1351
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1351)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1352
M=D
@SP
A=M
D=M
@dest1352
A=M
M=D

// push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.create' with 12 args
@return.Output.create.1365
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
@12
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.create
0;JMP
(return.Output.create.1365)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1366
M=D
@SP
A=M
D=M
@dest1366
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Output.create' with 1 local variables
(Output.create)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@SP
M=M+D

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.1371
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
@Array.new
0;JMP
(return.Array.new.1371)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest1372
M=D
@SP
A=M
D=M
@dest1372
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

// push static 5
@Output.5
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1377
M=D
@SP
A=M
D=M
@dest1377
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1380
M=D
@SP
A=M
D=M
@dest1380
A=M
M=D

// push constant 0
@0
D=A
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1385
M=D
@SP
A=M
D=M
@dest1385
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1388
M=D
@SP
A=M
D=M
@dest1388
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1393
M=D
@SP
A=M
D=M
@dest1393
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1396
M=D
@SP
A=M
D=M
@dest1396
A=M
M=D

// push constant 2
@2
D=A
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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1401
M=D
@SP
A=M
D=M
@dest1401
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1404
M=D
@SP
A=M
D=M
@dest1404
A=M
M=D

// push constant 3
@3
D=A
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

// push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1409
M=D
@SP
A=M
D=M
@dest1409
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1412
M=D
@SP
A=M
D=M
@dest1412
A=M
M=D

// push constant 4
@4
D=A
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

// push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1417
M=D
@SP
A=M
D=M
@dest1417
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1420
M=D
@SP
A=M
D=M
@dest1420
A=M
M=D

// push constant 5
@5
D=A
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

// push argument 6
@6
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1425
M=D
@SP
A=M
D=M
@dest1425
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1428
M=D
@SP
A=M
D=M
@dest1428
A=M
M=D

// push constant 6
@6
D=A
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

// push argument 7
@7
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1433
M=D
@SP
A=M
D=M
@dest1433
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1436
M=D
@SP
A=M
D=M
@dest1436
A=M
M=D

// push constant 7
@7
D=A
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

// push argument 8
@8
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1441
M=D
@SP
A=M
D=M
@dest1441
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1444
M=D
@SP
A=M
D=M
@dest1444
A=M
M=D

// push constant 8
@8
D=A
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

// push argument 9
@9
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1449
M=D
@SP
A=M
D=M
@dest1449
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1452
M=D
@SP
A=M
D=M
@dest1452
A=M
M=D

// push constant 9
@9
D=A
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

// push argument 10
@10
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1457
M=D
@SP
A=M
D=M
@dest1457
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1460
M=D
@SP
A=M
D=M
@dest1460
A=M
M=D

// push constant 10
@10
D=A
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

// push argument 11
@11
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1465
M=D
@SP
A=M
D=M
@dest1465
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1468
M=D
@SP
A=M
D=M
@dest1468
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Output.createShiftedMap' with 4 local variables
(Output.createShiftedMap)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@SP
M=M+D

// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.1473
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
@Array.new
0;JMP
(return.Array.new.1473)

// pop static 6
@SP
AM=M-1
@SP
A=M
D=M
@Output.6
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest1476
M=D
@SP
A=M
D=M
@dest1476
A=M
M=D

(WHILE_EXP0)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 127
@127
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
@True1480
D;JLT
@SP
A=M
M=0
@Next1480
0;JMP
(True1480)
@SP
A=M
D=0
M=D-1
(Next1480)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Output.5
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest1488
M=D
@SP
A=M
D=M
@dest1488
A=M
M=D

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.1490
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
@Array.new
0;JMP
(return.Array.new.1490)

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest1491
M=D
@SP
A=M
D=M
@dest1491
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Output.6
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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1496
M=D
@SP
A=M
D=M
@dest1496
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1499
M=D
@SP
A=M
D=M
@dest1499
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest1501
M=D
@SP
A=M
D=M
@dest1501
A=M
M=D

(WHILE_EXP1)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
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
@True1505
D;JLT
@SP
A=M
M=0
@Next1505
0;JMP
(True1505)
@SP
A=M
D=0
M=D-1
(Next1505)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// push local 3
@3
D=A
@LCL
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.1517
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.1517)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1518
M=D
@SP
A=M
D=M
@dest1518
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1521
M=D
@SP
A=M
D=M
@dest1521
A=M
M=D

// push local 3
@3
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest1525
M=D
@SP
A=M
D=M
@dest1525
A=M
M=D

// JMP to LABEL: WHILE_EXP1
@WHILE_EXP1
0;JMP

(WHILE_END1)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True1530
D;JEQ
@SP
A=M
M=0
@Next1530
0;JMP
(True1530)
@SP
A=M
D=0
M=D-1
(Next1530)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest1535
M=D
@SP
A=M
D=M
@dest1535
A=M
M=D

// JMP to LABEL: IF_END0
@IF_END0
0;JMP

(IF_FALSE0)

// push local 2
@2
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest1541
M=D
@SP
A=M
D=M
@dest1541
A=M
M=D

(IF_END0)

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Output.getMap' with 1 local variables
(Output.getMap)

@0
D=A
@LCL
A=M+D
M=0
@1
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

// push constant 32
@32
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
@True1550
D;JLT
@SP
A=M
M=0
@Next1550
0;JMP
(True1550)
@SP
A=M
D=0
M=D-1
(Next1550)
@SP
M=M+1

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

// push constant 126
@126
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
@True1553
D;JGT
@SP
A=M
M=0
@Next1553
0;JMP
(True1553)
@SP
A=M
D=0
M=D-1
(Next1553)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest1559
M=D
@SP
A=M
D=M
@dest1559
A=M
M=D

(IF_FALSE0)

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

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

// push static 5
@Output.5
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest1570
M=D
@SP
A=M
D=M
@dest1570
A=M
M=D

// JMP to LABEL: IF_END1
@IF_END1
0;JMP

(IF_FALSE1)

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

// push static 6
@Output.6
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest1578
M=D
@SP
A=M
D=M
@dest1578
A=M
M=D

(IF_END1)

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

// Function 'Output.drawChar' with 4 local variables
(Output.drawChar)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
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

// Call 'Output.getMap' with 1 args
@return.Output.getMap.1584
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
@Output.getMap
0;JMP
(return.Output.getMap.1584)

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest1585
M=D
@SP
A=M
D=M
@dest1585
A=M
M=D

// push static 1
@Output.1
D=M
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
@dest1587
M=D
@SP
A=M
D=M
@dest1587
A=M
M=D

(WHILE_EXP0)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
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
@True1591
D;JLT
@SP
A=M
M=0
@Next1591
0;JMP
(True1591)
@SP
A=M
D=0
M=D-1
(Next1591)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// push static 4
@Output.4
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 256
@256
D=A
@SP
A=M
M=D
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

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest1606
M=D
@SP
A=M
D=M
@dest1606
A=M
M=D

// JMP to LABEL: IF_END0
@IF_END0
0;JMP

(IF_FALSE0)

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

// push static 4
@Output.4
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 255
@255
D=A
@SP
A=M
M=D
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

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest1616
M=D
@SP
A=M
D=M
@dest1616
A=M
M=D

(IF_END0)

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

// push static 4
@Output.4
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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1628
M=D
@SP
A=M
D=M
@dest1628
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest1631
M=D
@SP
A=M
D=M
@dest1631
A=M
M=D

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

// push constant 32
@32
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest1635
M=D
@SP
A=M
D=M
@dest1635
A=M
M=D

// push local 1
@1
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest1639
M=D
@SP
A=M
D=M
@dest1639
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Output.moveCursor' with 0 local variables
(Output.moveCursor)

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

// push constant 0
@0
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
@True1647
D;JLT
@SP
A=M
M=0
@Next1647
0;JMP
(True1647)
@SP
A=M
D=0
M=D-1
(Next1647)
@SP
M=M+1

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

// push constant 22
@22
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
@True1650
D;JGT
@SP
A=M
M=0
@Next1650
0;JMP
(True1650)
@SP
A=M
D=0
M=D-1
(Next1650)
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

// push constant 0
@0
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
@True1654
D;JLT
@SP
A=M
M=0
@Next1654
0;JMP
(True1654)
@SP
A=M
D=0
M=D-1
(Next1654)
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

// push constant 63
@63
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
@True1658
D;JGT
@SP
A=M
M=0
@Next1658
0;JMP
(True1658)
@SP
A=M
D=0
M=D-1
(Next1658)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.1664
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
@Sys.error
0;JMP
(return.Sys.error.1664)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1665
M=D
@SP
A=M
D=M
@dest1665
A=M
M=D

(IF_FALSE0)

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

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.divide' with 2 args
@return.Math.divide.1669
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.divide
0;JMP
(return.Math.divide.1669)

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Output.0
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.1674
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.1674)

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push static 0
@Output.0
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

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

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

// push static 0
@Output.0
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.1682
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.1682)

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True1683
D;JEQ
@SP
A=M
M=0
@Next1683
0;JMP
(True1683)
@SP
A=M
D=0
M=D-1
(Next1683)
@SP
M=M+1

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Output.2
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.drawChar' with 1 args
@return.Output.drawChar.1686
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
@Output.drawChar
0;JMP
(return.Output.drawChar.1686)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1687
M=D
@SP
A=M
D=M
@dest1687
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Output.printChar' with 0 local variables
(Output.printChar)

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

// Call 'String.newLine' with 0 args
@return.String.newLine.1692
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.newLine
0;JMP
(return.String.newLine.1692)

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True1693
D;JEQ
@SP
A=M
M=0
@Next1693
0;JMP
(True1693)
@SP
A=M
D=0
M=D-1
(Next1693)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// Call 'Output.println' with 0 args
@return.Output.println.1697
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.println
0;JMP
(return.Output.println.1697)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1698
M=D
@SP
A=M
D=M
@dest1698
A=M
M=D

// JMP to LABEL: IF_END0
@IF_END0
0;JMP

(IF_FALSE0)

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

// Call 'String.backSpace' with 0 args
@return.String.backSpace.1702
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.backSpace
0;JMP
(return.String.backSpace.1702)

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True1703
D;JEQ
@SP
A=M
M=0
@Next1703
0;JMP
(True1703)
@SP
A=M
D=0
M=D-1
(Next1703)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// Call 'Output.backSpace' with 0 args
@return.Output.backSpace.1707
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.backSpace
0;JMP
(return.Output.backSpace.1707)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1708
M=D
@SP
A=M
D=M
@dest1708
A=M
M=D

// JMP to LABEL: IF_END1
@IF_END1
0;JMP

(IF_FALSE1)

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

// Call 'Output.drawChar' with 1 args
@return.Output.drawChar.1712
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
@Output.drawChar
0;JMP
(return.Output.drawChar.1712)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1713
M=D
@SP
A=M
D=M
@dest1713
A=M
M=D

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

// push static 0
@Output.0
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

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Output.0
M=D

// push static 1
@Output.1
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

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

(IF_FALSE2)

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
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
@True1730
D;JEQ
@SP
A=M
M=0
@Next1730
0;JMP
(True1730)
@SP
A=M
D=0
M=D-1
(Next1730)
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

// Call 'Output.println' with 0 args
@return.Output.println.1734
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.println
0;JMP
(return.Output.println.1734)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1735
M=D
@SP
A=M
D=M
@dest1735
A=M
M=D

// JMP to LABEL: IF_END3
@IF_END3
0;JMP

(IF_FALSE3)

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Output.2
M=D

(IF_END3)

(IF_END1)

(IF_END0)

// push constant 0
@0
D=A
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

// Function 'Output.printString' with 2 local variables
(Output.printString)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
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

// Call 'String.length' with 1 args
@return.String.length.1748
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
@String.length
0;JMP
(return.String.length.1748)

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest1749
M=D
@SP
A=M
D=M
@dest1749
A=M
M=D

(WHILE_EXP0)

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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
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
@True1753
D;JLT
@SP
A=M
M=0
@Next1753
0;JMP
(True1753)
@SP
A=M
D=0
M=D-1
(Next1753)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

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

// Call 'String.charAt' with 2 args
@return.String.charAt.1758
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.charAt
0;JMP
(return.String.charAt.1758)

// Call 'Output.printChar' with 1 args
@return.Output.printChar.1759
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
@Output.printChar
0;JMP
(return.Output.printChar.1759)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1760
M=D
@SP
A=M
D=M
@dest1760
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest1764
M=D
@SP
A=M
D=M
@dest1764
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Output.printInt' with 0 local variables
(Output.printInt)

@0
D=A
@SP
M=M+D

// push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// Call 'String.setInt' with 2 args
@return.String.setInt.1772
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.setInt
0;JMP
(return.String.setInt.1772)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1773
M=D
@SP
A=M
D=M
@dest1773
A=M
M=D

// push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.printString' with 1 args
@return.Output.printString.1775
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
@Output.printString
0;JMP
(return.Output.printString.1775)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1776
M=D
@SP
A=M
D=M
@dest1776
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Output.println' with 0 local variables
(Output.println)

@0
D=A
@SP
M=M+D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 352
@352
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

// push static 0
@Output.0
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

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Output.0
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Output.2
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 8128
@8128
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
@True1793
D;JEQ
@SP
A=M
M=0
@Next1793
0;JMP
(True1793)
@SP
A=M
D=0
M=D-1
(Next1793)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'Output.backSpace' with 0 local variables
(Output.backSpace)

@0
D=A
@SP
M=M+D

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True1809
D;JGT
@SP
A=M
M=0
@Next1809
0;JMP
(True1809)
@SP
A=M
D=0
M=D-1
(Next1809)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push static 0
@Output.0
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

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Output.0
M=D

// push static 1
@Output.1
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

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

// JMP to LABEL: IF_END1
@IF_END1
0;JMP

(IF_FALSE1)

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Output.0
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
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
@True1827
D;JEQ
@SP
A=M
M=0
@Next1827
0;JMP
(True1827)
@SP
A=M
D=0
M=D-1
(Next1827)
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

// push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

(IF_FALSE2)

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 321
@321
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

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Output.1
M=D

(IF_END1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Output.2
M=D

// JMP to LABEL: IF_END0
@IF_END0
0;JMP

(IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Output.2
M=D

(IF_END0)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Output.drawChar' with 1 args
@return.Output.drawChar.1848
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
@Output.drawChar
0;JMP
(return.Output.drawChar.1848)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest1849
M=D
@SP
A=M
D=M
@dest1849
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Screen.init' with 1 local variables
(Screen.init)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@SP
M=M+D

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@SP
AM=M-1
@SP
A=M
D=M
@Screen.1
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Screen.2
M=D

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.7
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
@Array.new
0;JMP
(return.Array.new.7)

// pop static 0
@SP
AM=M-1
@SP
A=M
D=M
@Screen.0
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Screen.0
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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest13
M=D
@SP
A=M
D=M
@dest13
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest16
M=D
@SP
A=M
D=M
@dest16
A=M
M=D

(WHILE_EXP0)

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

// push constant 16
@16
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
@True20
D;JLT
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

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest26
M=D
@SP
A=M
D=M
@dest26
A=M
M=D

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

// push static 0
@Screen.0
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

// push static 0
@Screen.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push static 0
@Screen.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest45
M=D
@SP
A=M
D=M
@dest45
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest48
M=D
@SP
A=M
D=M
@dest48
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Screen.clearScreen' with 1 local variables
(Screen.clearScreen)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@SP
M=M+D

(WHILE_EXP0)

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

// push constant 8192
@8192
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
@True57
D;JLT
@SP
A=M
M=0
@Next57
0;JMP
(True57)
@SP
A=M
D=0
M=D-1
(Next57)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
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

// push static 1
@Screen.1
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest64
M=D
@SP
A=M
D=M
@dest64
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest67
M=D
@SP
A=M
D=M
@dest67
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest71
M=D
@SP
A=M
D=M
@dest71
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Screen.updateLocation' with 0 local variables
(Screen.updateLocation)

@0
D=A
@SP
M=M+D

// push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// push static 1
@Screen.1
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

// push static 1
@Screen.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// or
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D|M
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest91
M=D
@SP
A=M
D=M
@dest91
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest94
M=D
@SP
A=M
D=M
@dest94
A=M
M=D

// JMP to LABEL: IF_END0
@IF_END0
0;JMP

(IF_FALSE0)

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

// push static 1
@Screen.1
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

// push static 1
@Screen.1
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// not
@SP
AM=M-1
M=!M
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest108
M=D
@SP
A=M
D=M
@dest108
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest111
M=D
@SP
A=M
D=M
@dest111
A=M
M=D

(IF_END0)

// push constant 0
@0
D=A
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

// Function 'Screen.setColor' with 0 local variables
(Screen.setColor)

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

// pop static 2
@SP
AM=M-1
@SP
A=M
D=M
@Screen.2
M=D

// push constant 0
@0
D=A
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

// Function 'Screen.drawPixel' with 3 local variables
(Screen.drawPixel)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
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

// push constant 0
@0
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
@True123
D;JLT
@SP
A=M
M=0
@Next123
0;JMP
(True123)
@SP
A=M
D=0
M=D-1
(Next123)
@SP
M=M+1

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

// push constant 511
@511
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
@True126
D;JGT
@SP
A=M
M=0
@Next126
0;JMP
(True126)
@SP
A=M
D=0
M=D-1
(Next126)
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

// push constant 0
@0
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
@True130
D;JLT
@SP
A=M
M=0
@Next130
0;JMP
(True130)
@SP
A=M
D=0
M=D-1
(Next130)
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

// push constant 255
@255
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
@True134
D;JGT
@SP
A=M
M=0
@Next134
0;JMP
(True134)
@SP
A=M
D=0
M=D-1
(Next134)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.140
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
@Sys.error
0;JMP
(return.Sys.error.140)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest141
M=D
@SP
A=M
D=M
@dest141
A=M
M=D

(IF_FALSE0)

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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.divide' with 2 args
@return.Math.divide.145
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.divide
0;JMP
(return.Math.divide.145)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest146
M=D
@SP
A=M
D=M
@dest146
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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.150
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.150)

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest152
M=D
@SP
A=M
D=M
@dest152
A=M
M=D

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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.155
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.155)

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

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest158
M=D
@SP
A=M
D=M
@dest158
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Screen.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.165
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.165)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest166
M=D
@SP
A=M
D=M
@dest166
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Screen.drawConditional' with 0 local variables
(Screen.drawConditional)

@0
D=A
@SP
M=M+D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

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

// Call 'Screen.drawPixel' with 2 args
@return.Screen.drawPixel.176
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawPixel
0;JMP
(return.Screen.drawPixel.176)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest177
M=D
@SP
A=M
D=M
@dest177
A=M
M=D

// JMP to LABEL: IF_END0
@IF_END0
0;JMP

(IF_FALSE0)

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

// Call 'Screen.drawPixel' with 2 args
@return.Screen.drawPixel.182
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawPixel
0;JMP
(return.Screen.drawPixel.182)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest183
M=D
@SP
A=M
D=M
@dest183
A=M
M=D

(IF_END0)

// push constant 0
@0
D=A
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

// Function 'Screen.drawLine' with 11 local variables
(Screen.drawLine)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@LCL
A=M+D
M=0
@5
D=A
@LCL
A=M+D
M=0
@6
D=A
@LCL
A=M+D
M=0
@7
D=A
@LCL
A=M+D
M=0
@8
D=A
@LCL
A=M+D
M=0
@9
D=A
@LCL
A=M+D
M=0
@10
D=A
@LCL
A=M+D
M=0
@11
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

// push constant 0
@0
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
@True190
D;JLT
@SP
A=M
M=0
@Next190
0;JMP
(True190)
@SP
A=M
D=0
M=D-1
(Next190)
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 511
@511
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
@True193
D;JGT
@SP
A=M
M=0
@Next193
0;JMP
(True193)
@SP
A=M
D=0
M=D-1
(Next193)
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

// push constant 0
@0
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
@True197
D;JLT
@SP
A=M
M=0
@Next197
0;JMP
(True197)
@SP
A=M
D=0
M=D-1
(Next197)
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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 255
@255
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
@True201
D;JGT
@SP
A=M
M=0
@Next201
0;JMP
(True201)
@SP
A=M
D=0
M=D-1
(Next201)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.207
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
@Sys.error
0;JMP
(return.Sys.error.207)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest208
M=D
@SP
A=M
D=M
@dest208
A=M
M=D

(IF_FALSE0)

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// Call 'Math.abs' with 1 args
@return.Math.abs.213
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
@Math.abs
0;JMP
(return.Math.abs.213)

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest214
M=D
@SP
A=M
D=M
@dest214
A=M
M=D

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// Call 'Math.abs' with 1 args
@return.Math.abs.218
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
@Math.abs
0;JMP
(return.Math.abs.218)

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest219
M=D
@SP
A=M
D=M
@dest219
A=M
M=D

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
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
@True222
D;JLT
@SP
A=M
M=0
@Next222
0;JMP
(True222)
@SP
A=M
D=0
M=D-1
(Next222)
@SP
M=M+1

// pop local 6
@SP
AM=M-1
@6
D=A
@LCL
D=D+M
@dest223
M=D
@SP
A=M
D=M
@dest223
A=M
M=D

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True227
D;JLT
@SP
A=M
M=0
@Next227
0;JMP
(True227)
@SP
A=M
D=0
M=D-1
(Next227)
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

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True233
D;JLT
@SP
A=M
M=0
@Next233
0;JMP
(True233)
@SP
A=M
D=0
M=D-1
(Next233)
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

// or
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D|M
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

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

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest240
M=D
@SP
A=M
D=M
@dest240
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 0
@SP
AM=M-1
@0
D=A
@ARG
D=D+M
@dest242
M=D
@SP
A=M
D=M
@dest242
A=M
M=D

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 2
@SP
AM=M-1
@2
D=A
@ARG
D=D+M
@dest244
M=D
@SP
A=M
D=M
@dest244
A=M
M=D

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

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest246
M=D
@SP
A=M
D=M
@dest246
A=M
M=D

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest248
M=D
@SP
A=M
D=M
@dest248
A=M
M=D

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 3
@SP
AM=M-1
@3
D=A
@ARG
D=D+M
@dest250
M=D
@SP
A=M
D=M
@dest250
A=M
M=D

(IF_FALSE1)

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest257
M=D
@SP
A=M
D=M
@dest257
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest259
M=D
@SP
A=M
D=M
@dest259
A=M
M=D

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest261
M=D
@SP
A=M
D=M
@dest261
A=M
M=D

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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest263
M=D
@SP
A=M
D=M
@dest263
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest265
M=D
@SP
A=M
D=M
@dest265
A=M
M=D

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 8
@SP
AM=M-1
@8
D=A
@LCL
D=D+M
@dest267
M=D
@SP
A=M
D=M
@dest267
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@True270
D;JGT
@SP
A=M
M=0
@Next270
0;JMP
(True270)
@SP
A=M
D=0
M=D-1
(Next270)
@SP
M=M+1

// pop local 7
@SP
AM=M-1
@7
D=A
@LCL
D=D+M
@dest271
M=D
@SP
A=M
D=M
@dest271
A=M
M=D

// JMP to LABEL: IF_END2
@IF_END2
0;JMP

(IF_FALSE2)

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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest275
M=D
@SP
A=M
D=M
@dest275
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest277
M=D
@SP
A=M
D=M
@dest277
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 8
@SP
AM=M-1
@8
D=A
@LCL
D=D+M
@dest279
M=D
@SP
A=M
D=M
@dest279
A=M
M=D

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
@True282
D;JGT
@SP
A=M
M=0
@Next282
0;JMP
(True282)
@SP
A=M
D=0
M=D-1
(Next282)
@SP
M=M+1

// pop local 7
@SP
AM=M-1
@7
D=A
@LCL
D=D+M
@dest283
M=D
@SP
A=M
D=M
@dest283
A=M
M=D

(IF_END2)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.287
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.287)

// push local 3
@3
D=A
@LCL
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

// pop local 5
@SP
AM=M-1
@5
D=A
@LCL
D=D+M
@dest290
M=D
@SP
A=M
D=M
@dest290
A=M
M=D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.293
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.293)

// pop local 9
@SP
AM=M-1
@9
D=A
@LCL
D=D+M
@dest294
M=D
@SP
A=M
D=M
@dest294
A=M
M=D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@3
D=A
@LCL
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.299
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.299)

// pop local 10
@SP
AM=M-1
@10
D=A
@LCL
D=D+M
@dest300
M=D
@SP
A=M
D=M
@dest300
A=M
M=D

// push local 1
@1
D=A
@LCL
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

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.drawConditional' with 3 args
@return.Screen.drawConditional.304
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
@3
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawConditional
0;JMP
(return.Screen.drawConditional.304)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest305
M=D
@SP
A=M
D=M
@dest305
A=M
M=D

(WHILE_EXP0)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 8
@8
D=A
@LCL
A=D+M
D=M
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
@True309
D;JLT
@SP
A=M
M=0
@Next309
0;JMP
(True309)
@SP
A=M
D=0
M=D-1
(Next309)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True314
D;JLT
@SP
A=M
M=0
@Next314
0;JMP
(True314)
@SP
A=M
D=0
M=D-1
(Next314)
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 9
@9
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

// pop local 5
@SP
AM=M-1
@5
D=A
@LCL
D=D+M
@dest321
M=D
@SP
A=M
D=M
@dest321
A=M
M=D

// JMP to LABEL: IF_END3
@IF_END3
0;JMP

(IF_FALSE3)

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 10
@10
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

// pop local 5
@SP
AM=M-1
@5
D=A
@LCL
D=D+M
@dest327
M=D
@SP
A=M
D=M
@dest327
A=M
M=D

// push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE

// JMP to LABEL: IF_FALSE4
@IF_FALSE4
0;JMP

(IF_TRUE4)

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest335
M=D
@SP
A=M
D=M
@dest335
A=M
M=D

// JMP to LABEL: IF_END4
@IF_END4
0;JMP

(IF_FALSE4)

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest341
M=D
@SP
A=M
D=M
@dest341
A=M
M=D

(IF_END4)

(IF_END3)

// push local 1
@1
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest347
M=D
@SP
A=M
D=M
@dest347
A=M
M=D

// push local 1
@1
D=A
@LCL
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

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.drawConditional' with 3 args
@return.Screen.drawConditional.351
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
@3
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawConditional
0;JMP
(return.Screen.drawConditional.351)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest352
M=D
@SP
A=M
D=M
@dest352
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Screen.drawRectangle' with 9 local variables
(Screen.drawRectangle)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@LCL
A=M+D
M=0
@5
D=A
@LCL
A=M+D
M=0
@6
D=A
@LCL
A=M+D
M=0
@7
D=A
@LCL
A=M+D
M=0
@8
D=A
@LCL
A=M+D
M=0
@9
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@True360
D;JGT
@SP
A=M
M=0
@Next360
0;JMP
(True360)
@SP
A=M
D=0
M=D-1
(Next360)
@SP
M=M+1

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
@True363
D;JGT
@SP
A=M
M=0
@Next363
0;JMP
(True363)
@SP
A=M
D=0
M=D-1
(Next363)
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

// push constant 0
@0
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
@True367
D;JLT
@SP
A=M
M=0
@Next367
0;JMP
(True367)
@SP
A=M
D=0
M=D-1
(Next367)
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 511
@511
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
@True371
D;JGT
@SP
A=M
M=0
@Next371
0;JMP
(True371)
@SP
A=M
D=0
M=D-1
(Next371)
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

// push constant 0
@0
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
@True375
D;JLT
@SP
A=M
M=0
@Next375
0;JMP
(True375)
@SP
A=M
D=0
M=D-1
(Next375)
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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 255
@255
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
@True379
D;JGT
@SP
A=M
M=0
@Next379
0;JMP
(True379)
@SP
A=M
D=0
M=D-1
(Next379)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.385
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
@Sys.error
0;JMP
(return.Sys.error.385)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest386
M=D
@SP
A=M
D=M
@dest386
A=M
M=D

(IF_FALSE0)

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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.divide' with 2 args
@return.Math.divide.390
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.divide
0;JMP
(return.Math.divide.390)

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest391
M=D
@SP
A=M
D=M
@dest391
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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.395
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.395)

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// pop local 7
@SP
AM=M-1
@7
D=A
@LCL
D=D+M
@dest397
M=D
@SP
A=M
D=M
@dest397
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

// Call 'Math.divide' with 2 args
@return.Math.divide.400
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.divide
0;JMP
(return.Math.divide.400)

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest401
M=D
@SP
A=M
D=M
@dest401
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 4
@4
D=A
@LCL
A=D+M
D=M
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.405
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.405)

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// pop local 8
@SP
AM=M-1
@8
D=A
@LCL
D=D+M
@dest407
M=D
@SP
A=M
D=M
@dest407
A=M
M=D

// push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Screen.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop local 6
@SP
AM=M-1
@6
D=A
@LCL
D=D+M
@dest416
M=D
@SP
A=M
D=M
@dest416
A=M
M=D

// push local 8
@8
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push static 0
@Screen.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop local 5
@SP
AM=M-1
@5
D=A
@LCL
D=D+M
@dest426
M=D
@SP
A=M
D=M
@dest426
A=M
M=D

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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.429
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.429)

// push local 3
@3
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
@dest432
M=D
@SP
A=M
D=M
@dest432
A=M
M=D

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@3
D=A
@LCL
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

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest436
M=D
@SP
A=M
D=M
@dest436
A=M
M=D

(WHILE_EXP0)

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
@True440
D;JGT
@SP
A=M
M=0
@Next440
0;JMP
(True440)
@SP
A=M
D=0
M=D-1
(Next440)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
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

// push local 2
@2
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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest447
M=D
@SP
A=M
D=M
@dest447
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True450
D;JEQ
@SP
A=M
M=0
@Next450
0;JMP
(True450)
@SP
A=M
D=0
M=D-1
(Next450)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

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

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
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

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.458
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.458)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest459
M=D
@SP
A=M
D=M
@dest459
A=M
M=D

// JMP to LABEL: IF_END1
@IF_END1
0;JMP

(IF_FALSE1)

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

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.464
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.464)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest465
M=D
@SP
A=M
D=M
@dest465
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest469
M=D
@SP
A=M
D=M
@dest469
A=M
M=D

(WHILE_EXP1)

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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
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
@True473
D;JLT
@SP
A=M
M=0
@Next473
0;JMP
(True473)
@SP
A=M
D=0
M=D-1
(Next473)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.479
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.479)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest480
M=D
@SP
A=M
D=M
@dest480
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest484
M=D
@SP
A=M
D=M
@dest484
A=M
M=D

// JMP to LABEL: WHILE_EXP1
@WHILE_EXP1
0;JMP

(WHILE_END1)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.489
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.489)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest490
M=D
@SP
A=M
D=M
@dest490
A=M
M=D

(IF_END1)

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

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest495
M=D
@SP
A=M
D=M
@dest495
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
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

// push local 2
@2
D=A
@LCL
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest501
M=D
@SP
A=M
D=M
@dest501
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Screen.drawHorizontal' with 11 local variables
(Screen.drawHorizontal)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@LCL
A=M+D
M=0
@5
D=A
@LCL
A=M+D
M=0
@6
D=A
@LCL
A=M+D
M=0
@7
D=A
@LCL
A=M+D
M=0
@8
D=A
@LCL
A=M+D
M=0
@9
D=A
@LCL
A=M+D
M=0
@10
D=A
@LCL
A=M+D
M=0
@11
D=A
@SP
M=M+D

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.min' with 2 args
@return.Math.min.509
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.min
0;JMP
(return.Math.min.509)

// pop local 7
@SP
AM=M-1
@7
D=A
@LCL
D=D+M
@dest510
M=D
@SP
A=M
D=M
@dest510
A=M
M=D

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.max' with 2 args
@return.Math.max.513
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.max
0;JMP
(return.Math.max.513)

// pop local 8
@SP
AM=M-1
@8
D=A
@LCL
D=D+M
@dest514
M=D
@SP
A=M
D=M
@dest514
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

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True518
D;JGT
@SP
A=M
M=0
@Next518
0;JMP
(True518)
@SP
A=M
D=0
M=D-1
(Next518)
@SP
M=M+1

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

// push constant 256
@256
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
@True521
D;JLT
@SP
A=M
M=0
@Next521
0;JMP
(True521)
@SP
A=M
D=0
M=D-1
(Next521)
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

// push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 512
@512
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
@True525
D;JLT
@SP
A=M
M=0
@Next525
0;JMP
(True525)
@SP
A=M
D=0
M=D-1
(Next525)
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

// push local 8
@8
D=A
@LCL
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

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True530
D;JGT
@SP
A=M
M=0
@Next530
0;JMP
(True530)
@SP
A=M
D=0
M=D-1
(Next530)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.max' with 2 args
@return.Math.max.537
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.max
0;JMP
(return.Math.max.537)

// pop local 7
@SP
AM=M-1
@7
D=A
@LCL
D=D+M
@dest538
M=D
@SP
A=M
D=M
@dest538
A=M
M=D

// push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.min' with 2 args
@return.Math.min.541
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.min
0;JMP
(return.Math.min.541)

// pop local 8
@SP
AM=M-1
@8
D=A
@LCL
D=D+M
@dest542
M=D
@SP
A=M
D=M
@dest542
A=M
M=D

// push local 7
@7
D=A
@LCL
A=D+M
D=M
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

// Call 'Math.divide' with 2 args
@return.Math.divide.545
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.divide
0;JMP
(return.Math.divide.545)

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest546
M=D
@SP
A=M
D=M
@dest546
A=M
M=D

// push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
D=A
@LCL
A=D+M
D=M
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.550
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.550)

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// pop local 9
@SP
AM=M-1
@9
D=A
@LCL
D=D+M
@dest552
M=D
@SP
A=M
D=M
@dest552
A=M
M=D

// push local 8
@8
D=A
@LCL
A=D+M
D=M
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

// Call 'Math.divide' with 2 args
@return.Math.divide.555
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.divide
0;JMP
(return.Math.divide.555)

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest556
M=D
@SP
A=M
D=M
@dest556
A=M
M=D

// push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.560
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.560)

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// pop local 10
@SP
AM=M-1
@10
D=A
@LCL
D=D+M
@dest562
M=D
@SP
A=M
D=M
@dest562
A=M
M=D

// push local 9
@9
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Screen.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop local 5
@SP
AM=M-1
@5
D=A
@LCL
D=D+M
@dest571
M=D
@SP
A=M
D=M
@dest571
A=M
M=D

// push local 10
@10
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push static 0
@Screen.0
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest581
M=D
@SP
A=M
D=M
@dest581
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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.584
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.584)

// push local 1
@1
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
@dest587
M=D
@SP
A=M
D=M
@dest587
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
D=A
@LCL
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

// pop local 6
@SP
AM=M-1
@6
D=A
@LCL
D=D+M
@dest591
M=D
@SP
A=M
D=M
@dest591
A=M
M=D

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

// push local 6
@6
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

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest595
M=D
@SP
A=M
D=M
@dest595
A=M
M=D

// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True598
D;JEQ
@SP
A=M
M=0
@Next598
0;JMP
(True598)
@SP
A=M
D=0
M=D-1
(Next598)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
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

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.606
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.606)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest607
M=D
@SP
A=M
D=M
@dest607
A=M
M=D

// JMP to LABEL: IF_END1
@IF_END1
0;JMP

(IF_FALSE1)

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

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.612
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.612)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest613
M=D
@SP
A=M
D=M
@dest613
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest617
M=D
@SP
A=M
D=M
@dest617
A=M
M=D

(WHILE_EXP0)

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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
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
@True621
D;JLT
@SP
A=M
M=0
@Next621
0;JMP
(True621)
@SP
A=M
D=0
M=D-1
(Next621)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.627
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.627)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest628
M=D
@SP
A=M
D=M
@dest628
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest632
M=D
@SP
A=M
D=M
@dest632
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.updateLocation' with 2 args
@return.Screen.updateLocation.637
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.updateLocation
0;JMP
(return.Screen.updateLocation.637)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest638
M=D
@SP
A=M
D=M
@dest638
A=M
M=D

(IF_END1)

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'Screen.drawSymetric' with 0 local variables
(Screen.drawSymetric)

@0
D=A
@SP
M=M+D

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

// push argument 3
@3
D=A
@ARG
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

// push argument 2
@2
D=A
@ARG
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

// push argument 2
@2
D=A
@ARG
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

// Call 'Screen.drawHorizontal' with 3 args
@return.Screen.drawHorizontal.653
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
@3
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(return.Screen.drawHorizontal.653)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest654
M=D
@SP
A=M
D=M
@dest654
A=M
M=D

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

// push argument 3
@3
D=A
@ARG
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

// push argument 2
@2
D=A
@ARG
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

// push argument 2
@2
D=A
@ARG
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

// Call 'Screen.drawHorizontal' with 3 args
@return.Screen.drawHorizontal.664
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
@3
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(return.Screen.drawHorizontal.664)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest665
M=D
@SP
A=M
D=M
@dest665
A=M
M=D

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

// push argument 2
@2
D=A
@ARG
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

// push argument 3
@3
D=A
@ARG
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

// push argument 3
@3
D=A
@ARG
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

// Call 'Screen.drawHorizontal' with 3 args
@return.Screen.drawHorizontal.675
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
@3
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(return.Screen.drawHorizontal.675)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest676
M=D
@SP
A=M
D=M
@dest676
A=M
M=D

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

// push argument 2
@2
D=A
@ARG
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

// push argument 3
@3
D=A
@ARG
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

// push argument 3
@3
D=A
@ARG
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

// Call 'Screen.drawHorizontal' with 3 args
@return.Screen.drawHorizontal.686
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
@3
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(return.Screen.drawHorizontal.686)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest687
M=D
@SP
A=M
D=M
@dest687
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Screen.drawCircle' with 3 local variables
(Screen.drawCircle)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
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

// push constant 0
@0
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
@True693
D;JLT
@SP
A=M
M=0
@Next693
0;JMP
(True693)
@SP
A=M
D=0
M=D-1
(Next693)
@SP
M=M+1

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

// push constant 511
@511
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
@True696
D;JGT
@SP
A=M
M=0
@Next696
0;JMP
(True696)
@SP
A=M
D=0
M=D-1
(Next696)
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

// push constant 0
@0
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
@True700
D;JLT
@SP
A=M
M=0
@Next700
0;JMP
(True700)
@SP
A=M
D=0
M=D-1
(Next700)
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

// push constant 255
@255
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
@True704
D;JGT
@SP
A=M
M=0
@Next704
0;JMP
(True704)
@SP
A=M
D=0
M=D-1
(Next704)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.710
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
@Sys.error
0;JMP
(return.Sys.error.710)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest711
M=D
@SP
A=M
D=M
@dest711
A=M
M=D

(IF_FALSE0)

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

// push argument 2
@2
D=A
@ARG
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

// push constant 0
@0
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
@True717
D;JLT
@SP
A=M
M=0
@Next717
0;JMP
(True717)
@SP
A=M
D=0
M=D-1
(Next717)
@SP
M=M+1

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

// push argument 2
@2
D=A
@ARG
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

// push constant 511
@511
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
@True722
D;JGT
@SP
A=M
M=0
@Next722
0;JMP
(True722)
@SP
A=M
D=0
M=D-1
(Next722)
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

// push argument 2
@2
D=A
@ARG
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

// push constant 0
@0
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
@True728
D;JLT
@SP
A=M
M=0
@Next728
0;JMP
(True728)
@SP
A=M
D=0
M=D-1
(Next728)
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

// push argument 2
@2
D=A
@ARG
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

// push constant 255
@255
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
@True734
D;JGT
@SP
A=M
M=0
@Next734
0;JMP
(True734)
@SP
A=M
D=0
M=D-1
(Next734)
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

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.740
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
@Sys.error
0;JMP
(return.Sys.error.740)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest741
M=D
@SP
A=M
D=M
@dest741
A=M
M=D

(IF_FALSE1)

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest744
M=D
@SP
A=M
D=M
@dest744
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

// push argument 2
@2
D=A
@ARG
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

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest748
M=D
@SP
A=M
D=M
@dest748
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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.drawSymetric' with 4 args
@return.Screen.drawSymetric.753
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawSymetric
0;JMP
(return.Screen.drawSymetric.753)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest754
M=D
@SP
A=M
D=M
@dest754
A=M
M=D

(WHILE_EXP0)

// push local 1
@1
D=A
@LCL
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True758
D;JGT
@SP
A=M
M=0
@Next758
0;JMP
(True758)
@SP
A=M
D=0
M=D-1
(Next758)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True763
D;JLT
@SP
A=M
M=0
@Next763
0;JMP
(True763)
@SP
A=M
D=0
M=D-1
(Next763)
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

// push local 2
@2
D=A
@LCL
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.770
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.770)

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 3
@3
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

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest774
M=D
@SP
A=M
D=M
@dest774
A=M
M=D

// JMP to LABEL: IF_END2
@IF_END2
0;JMP

(IF_FALSE2)

// push local 2
@2
D=A
@LCL
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

// push local 1
@1
D=A
@LCL
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

// Call 'Math.multiply' with 2 args
@return.Math.multiply.782
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.782)

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 5
@5
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

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest786
M=D
@SP
A=M
D=M
@dest786
A=M
M=D

// push local 1
@1
D=A
@LCL
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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest790
M=D
@SP
A=M
D=M
@dest790
A=M
M=D

(IF_END2)

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest795
M=D
@SP
A=M
D=M
@dest795
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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.drawSymetric' with 4 args
@return.Screen.drawSymetric.800
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawSymetric
0;JMP
(return.Screen.drawSymetric.800)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest801
M=D
@SP
A=M
D=M
@dest801
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'String.new' with 0 local variables
(String.new)

@0
D=A
@SP
M=M+D

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Memory.alloc' with 1 args
@return.Memory.alloc.2
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
@Memory.alloc
0;JMP
(return.Memory.alloc.2)

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
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

// push constant 0
@0
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
@True6
D;JLT
@SP
A=M
M=0
@Next6
0;JMP
(True6)
@SP
A=M
D=0
M=D-1
(Next6)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.11
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
@Sys.error
0;JMP
(return.Sys.error.11)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest12
M=D
@SP
A=M
D=M
@dest12
A=M
M=D

(IF_FALSE0)

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

// push constant 0
@0
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
@True16
D;JGT
@SP
A=M
M=0
@Next16
0;JMP
(True16)
@SP
A=M
D=0
M=D-1
(Next16)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

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

// Call 'Array.new' with 1 args
@return.Array.new.21
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
@Array.new
0;JMP
(return.Array.new.21)

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest22
M=D
@SP
A=M
D=M
@dest22
A=M
M=D

(IF_FALSE1)

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

// pop this 0
@SP
AM=M-1
@0
D=A
@THIS
D=D+M
@dest25
M=D
@SP
A=M
D=M
@dest25
A=M
M=D

// push constant 0
@0
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
@dest27
M=D
@SP
A=M
D=M
@dest27
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

// Function 'String.dispose' with 0 local variables
(String.dispose)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True35
D;JGT
@SP
A=M
M=0
@Next35
0;JMP
(True35)
@SP
A=M
D=0
M=D-1
(Next35)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.dispose' with 1 args
@return.Array.dispose.40
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
@Array.dispose
0;JMP
(return.Array.dispose.40)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest41
M=D
@SP
A=M
D=M
@dest41
A=M
M=D

(IF_FALSE0)

// push pointer 0
@0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Memory.deAlloc' with 1 args
@return.Memory.deAlloc.44
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
@Memory.deAlloc
0;JMP
(return.Memory.deAlloc.44)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest45
M=D
@SP
A=M
D=M
@dest45
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'String.length' with 0 local variables
(String.length)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

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

// Function 'String.charAt' with 0 local variables
(String.charAt)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

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

// push constant 0
@0
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
@True58
D;JLT
@SP
A=M
M=0
@Next58
0;JMP
(True58)
@SP
A=M
D=0
M=D-1
(Next58)
@SP
M=M+1

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True61
D;JGT
@SP
A=M
M=0
@Next61
0;JMP
(True61)
@SP
A=M
D=0
M=D-1
(Next61)
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True65
D;JEQ
@SP
A=M
M=0
@Next65
0;JMP
(True65)
@SP
A=M
D=0
M=D-1
(Next65)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.71
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
@Sys.error
0;JMP
(return.Sys.error.71)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest72
M=D
@SP
A=M
D=M
@dest72
A=M
M=D

(IF_FALSE0)

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

// push this 1
@1
D=A
@THIS
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// Function 'String.setCharAt' with 0 local variables
(String.setCharAt)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

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

// push constant 0
@0
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
@True85
D;JLT
@SP
A=M
M=0
@Next85
0;JMP
(True85)
@SP
A=M
D=0
M=D-1
(Next85)
@SP
M=M+1

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True88
D;JGT
@SP
A=M
M=0
@Next88
0;JMP
(True88)
@SP
A=M
D=0
M=D-1
(Next88)
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True92
D;JEQ
@SP
A=M
M=0
@Next92
0;JMP
(True92)
@SP
A=M
D=0
M=D-1
(Next92)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.98
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
@Sys.error
0;JMP
(return.Sys.error.98)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest99
M=D
@SP
A=M
D=M
@dest99
A=M
M=D

(IF_FALSE0)

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

// push this 1
@1
D=A
@THIS
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest105
M=D
@SP
A=M
D=M
@dest105
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest108
M=D
@SP
A=M
D=M
@dest108
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'String.appendChar' with 0 local variables
(String.appendChar)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
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
@True116
D;JEQ
@SP
A=M
M=0
@Next116
0;JMP
(True116)
@SP
A=M
D=0
M=D-1
(Next116)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.121
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
@Sys.error
0;JMP
(return.Sys.error.121)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest122
M=D
@SP
A=M
D=M
@dest122
A=M
M=D

(IF_FALSE0)

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

// push this 1
@1
D=A
@THIS
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest128
M=D
@SP
A=M
D=M
@dest128
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest131
M=D
@SP
A=M
D=M
@dest131
A=M
M=D

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

// pop this 2
@SP
AM=M-1
@2
D=A
@THIS
D=D+M
@dest135
M=D
@SP
A=M
D=M
@dest135
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

// Function 'String.eraseLastChar' with 0 local variables
(String.eraseLastChar)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

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

// push constant 0
@0
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
@True143
D;JEQ
@SP
A=M
M=0
@Next143
0;JMP
(True143)
@SP
A=M
D=0
M=D-1
(Next143)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.148
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
@Sys.error
0;JMP
(return.Sys.error.148)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest149
M=D
@SP
A=M
D=M
@dest149
A=M
M=D

(IF_FALSE0)

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

// pop this 2
@SP
AM=M-1
@2
D=A
@THIS
D=D+M
@dest154
M=D
@SP
A=M
D=M
@dest154
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'String.intValue' with 5 local variables
(String.intValue)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
D=A
@LCL
A=M+D
M=0
@5
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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

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

// push constant 0
@0
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
@True162
D;JEQ
@SP
A=M
M=0
@Next162
0;JMP
(True162)
@SP
A=M
D=0
M=D-1
(Next162)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
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

(IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest171
M=D
@SP
A=M
D=M
@dest171
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 45
@45
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
@True178
D;JEQ
@SP
A=M
M=0
@Next178
0;JMP
(True178)
@SP
A=M
D=0
M=D-1
(Next178)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop local 4
@SP
AM=M-1
@4
D=A
@LCL
D=D+M
@dest184
M=D
@SP
A=M
D=M
@dest184
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest186
M=D
@SP
A=M
D=M
@dest186
A=M
M=D

(IF_FALSE1)

(WHILE_EXP0)

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True191
D;JLT
@SP
A=M
M=0
@Next191
0;JMP
(True191)
@SP
A=M
D=0
M=D-1
(Next191)
@SP
M=M+1

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
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

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
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

// push this 1
@1
D=A
@THIS
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 48
@48
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

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest203
M=D
@SP
A=M
D=M
@dest203
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True206
D;JLT
@SP
A=M
M=0
@Next206
0;JMP
(True206)
@SP
A=M
D=0
M=D-1
(Next206)
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 9
@9
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
@True209
D;JGT
@SP
A=M
M=0
@Next209
0;JMP
(True209)
@SP
A=M
D=0
M=D-1
(Next209)
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

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest212
M=D
@SP
A=M
D=M
@dest212
A=M
M=D

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.219
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.219)

// push local 2
@2
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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest222
M=D
@SP
A=M
D=M
@dest222
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest226
M=D
@SP
A=M
D=M
@dest226
A=M
M=D

(IF_FALSE2)

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest236
M=D
@SP
A=M
D=M
@dest236
A=M
M=D

(IF_FALSE3)

// push local 1
@1
D=A
@LCL
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

// Function 'String.setInt' with 4 local variables
(String.setInt)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
D=A
@LCL
A=M+D
M=0
@3
D=A
@LCL
A=M+D
M=0
@4
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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True245
D;JEQ
@SP
A=M
M=0
@Next245
0;JMP
(True245)
@SP
A=M
D=0
M=D-1
(Next245)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.250
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
@Sys.error
0;JMP
(return.Sys.error.250)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest251
M=D
@SP
A=M
D=M
@dest251
A=M
M=D

(IF_FALSE0)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.new' with 1 args
@return.Array.new.254
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
@Array.new
0;JMP
(return.Array.new.254)

// pop local 2
@SP
AM=M-1
@2
D=A
@LCL
D=D+M
@dest255
M=D
@SP
A=M
D=M
@dest255
A=M
M=D

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

// push constant 0
@0
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
@True258
D;JLT
@SP
A=M
M=0
@Next258
0;JMP
(True258)
@SP
A=M
D=0
M=D-1
(Next258)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop local 3
@SP
AM=M-1
@3
D=A
@LCL
D=D+M
@dest264
M=D
@SP
A=M
D=M
@dest264
A=M
M=D

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

// neg
@SP
AM=M-1
D=0
M=D-M
@SP
M=M+1

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest267
M=D
@SP
A=M
D=M
@dest267
A=M
M=D

(IF_FALSE1)

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

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest270
M=D
@SP
A=M
D=M
@dest270
A=M
M=D

(WHILE_EXP0)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@True274
D;JGT
@SP
A=M
M=0
@Next274
0;JMP
(True274)
@SP
A=M
D=0
M=D-1
(Next274)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.divide' with 2 args
@return.Math.divide.279
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.divide
0;JMP
(return.Math.divide.279)

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest280
M=D
@SP
A=M
D=M
@dest280
A=M
M=D

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

// push local 2
@2
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

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Math.multiply' with 2 args
@return.Math.multiply.288
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.multiply
0;JMP
(return.Math.multiply.288)

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest291
M=D
@SP
A=M
D=M
@dest291
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest294
M=D
@SP
A=M
D=M
@dest294
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest298
M=D
@SP
A=M
D=M
@dest298
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@SP
AM=M-1
@1
D=A
@ARG
D=D+M
@dest300
M=D
@SP
A=M
D=M
@dest300
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

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

// push local 2
@2
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

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest311
M=D
@SP
A=M
D=M
@dest311
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest314
M=D
@SP
A=M
D=M
@dest314
A=M
M=D

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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest318
M=D
@SP
A=M
D=M
@dest318
A=M
M=D

(IF_FALSE2)

// push this 0
@0
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True322
D;JLT
@SP
A=M
M=0
@Next322
0;JMP
(True322)
@SP
A=M
D=0
M=D-1
(Next322)
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

// push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.327
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
@Sys.error
0;JMP
(return.Sys.error.327)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest328
M=D
@SP
A=M
D=M
@dest328
A=M
M=D

(IF_FALSE3)

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

// push constant 0
@0
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
@True332
D;JEQ
@SP
A=M
M=0
@Next332
0;JMP
(True332)
@SP
A=M
D=0
M=D-1
(Next332)
@SP
M=M+1

// JMP to LABEL: IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE

// JMP to LABEL: IF_FALSE4
@IF_FALSE4
0;JMP

(IF_TRUE4)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
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

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest340
M=D
@SP
A=M
D=M
@dest340
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest343
M=D
@SP
A=M
D=M
@dest343
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

// pop this 2
@SP
AM=M-1
@2
D=A
@THIS
D=D+M
@dest345
M=D
@SP
A=M
D=M
@dest345
A=M
M=D

// JMP to LABEL: IF_END4
@IF_END4
0;JMP

(IF_FALSE4)

// push constant 0
@0
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
@dest349
M=D
@SP
A=M
D=M
@dest349
A=M
M=D

(WHILE_EXP1)

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True353
D;JLT
@SP
A=M
M=0
@Next353
0;JMP
(True353)
@SP
A=M
D=0
M=D-1
(Next353)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE

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

// push this 1
@1
D=A
@THIS
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

// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1

// push local 2
@2
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

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

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

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest368
M=D
@SP
A=M
D=M
@dest368
A=M
M=D

// pop pointer 1
@SP
AM=M-1
@SP
A=M
D=M
@THAT
M=D

// push temp 0
@0
D=A
@5
A=D+A
D=M
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
@dest371
M=D
@SP
A=M
D=M
@dest371
A=M
M=D

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

// pop this 2
@SP
AM=M-1
@2
D=A
@THIS
D=D+M
@dest375
M=D
@SP
A=M
D=M
@dest375
A=M
M=D

// JMP to LABEL: WHILE_EXP1
@WHILE_EXP1
0;JMP

(WHILE_END1)

(IF_END4)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Array.dispose' with 1 args
@return.Array.dispose.380
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
@Array.dispose
0;JMP
(return.Array.dispose.380)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest381
M=D
@SP
A=M
D=M
@dest381
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'String.newLine' with 0 local variables
(String.newLine)

@0
D=A
@SP
M=M+D

// push constant 128
@128
D=A
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

// Function 'String.backSpace' with 0 local variables
(String.backSpace)

@0
D=A
@SP
M=M+D

// push constant 129
@129
D=A
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

// Function 'String.doubleQuote' with 0 local variables
(String.doubleQuote)

@0
D=A
@SP
M=M+D

// push constant 34
@34
D=A
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

// Function 'Sys.init' with 0 local variables
(Sys.init)

@0
D=A
@SP
M=M+D

// Call 'Memory.init' with 0 args
@return.Memory.init.1
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Memory.init
0;JMP
(return.Memory.init.1)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest2
M=D
@SP
A=M
D=M
@dest2
A=M
M=D

// Call 'Math.init' with 0 args
@return.Math.init.3
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Math.init
0;JMP
(return.Math.init.3)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest4
M=D
@SP
A=M
D=M
@dest4
A=M
M=D

// Call 'Screen.init' with 0 args
@return.Screen.init.5
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.init
0;JMP
(return.Screen.init.5)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest6
M=D
@SP
A=M
D=M
@dest6
A=M
M=D

// Call 'Output.init' with 0 args
@return.Output.init.7
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Output.init
0;JMP
(return.Output.init.7)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest8
M=D
@SP
A=M
D=M
@dest8
A=M
M=D

// Call 'Keyboard.init' with 0 args
@return.Keyboard.init.9
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Keyboard.init
0;JMP
(return.Keyboard.init.9)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest10
M=D
@SP
A=M
D=M
@dest10
A=M
M=D

// Call 'Main.main' with 0 args
@return.Main.main.11
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Main.main
0;JMP
(return.Main.main.11)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest12
M=D
@SP
A=M
D=M
@dest12
A=M
M=D

// Call 'Sys.halt' with 0 args
@return.Sys.halt.13
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Sys.halt
0;JMP
(return.Sys.halt.13)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest14
M=D
@SP
A=M
D=M
@dest14
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Sys.halt' with 0 local variables
(Sys.halt)

@0
D=A
@SP
M=M+D

(WHILE_EXP0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Sys.wait' with 1 local variables
(Sys.wait)

@0
D=A
@LCL
A=M+D
M=0
@1
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

// push constant 0
@0
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
@True30
D;JLT
@SP
A=M
M=0
@Next30
0;JMP
(True30)
@SP
A=M
D=0
M=D-1
(Next30)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.error' with 1 args
@return.Sys.error.35
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
@Sys.error
0;JMP
(return.Sys.error.35)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest36
M=D
@SP
A=M
D=M
@dest36
A=M
M=D

(IF_FALSE0)

(WHILE_EXP0)

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

// push constant 0
@0
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
@True41
D;JGT
@SP
A=M
M=0
@Next41
0;JMP
(True41)
@SP
A=M
D=0
M=D-1
(Next41)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

// push constant 50
@50
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
@dest45
M=D
@SP
A=M
D=M
@dest45
A=M
M=D

(WHILE_EXP1)

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

// push constant 0
@0
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
@True49
D;JGT
@SP
A=M
M=0
@Next49
0;JMP
(True49)
@SP
A=M
D=0
M=D-1
(Next49)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
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

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest55
M=D
@SP
A=M
D=M
@dest55
A=M
M=D

// JMP to LABEL: WHILE_EXP1
@WHILE_EXP1
0;JMP

(WHILE_END1)

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
@dest61
M=D
@SP
A=M
D=M
@dest61
A=M
M=D

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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

// Function 'Sys.error' with 0 local variables
(Sys.error)

@0
D=A
@SP
M=M+D

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'String.new' with 1 args
@return.String.new.68
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
@String.new
0;JMP
(return.String.new.68)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'String.appendChar' with 2 args
@return.String.appendChar.70
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.appendChar
0;JMP
(return.String.appendChar.70)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'String.appendChar' with 2 args
@return.String.appendChar.72
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.appendChar
0;JMP
(return.String.appendChar.72)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'String.appendChar' with 2 args
@return.String.appendChar.74
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
@2
D=A+D
@LCL
D=M-D
@ARG
M=D
@String.appendChar
0;JMP
(return.String.appendChar.74)

// Call 'Output.printString' with 1 args
@return.Output.printString.75
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
@Output.printString
0;JMP
(return.Output.printString.75)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest76
M=D
@SP
A=M
D=M
@dest76
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

// Call 'Output.printInt' with 1 args
@return.Output.printInt.78
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
@Output.printInt
0;JMP
(return.Output.printInt.78)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest79
M=D
@SP
A=M
D=M
@dest79
A=M
M=D

// Call 'Sys.halt' with 0 args
@return.Sys.halt.80
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Sys.halt
0;JMP
(return.Sys.halt.80)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest81
M=D
@SP
A=M
D=M
@dest81
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Square.new' with 0 local variables
(Square.new)

@0
D=A
@SP
M=M+D

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Memory.alloc' with 1 args
@return.Memory.alloc.2
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
@Memory.alloc
0;JMP
(return.Memory.alloc.2)

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
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

// pop this 0
@SP
AM=M-1
@0
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

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest7
M=D
@SP
A=M
D=M
@dest7
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@dest9
M=D
@SP
A=M
D=M
@dest9
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

// Call 'Square.draw' with 1 args
@return.Square.draw.11
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
@Square.draw
0;JMP
(return.Square.draw.11)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest12
M=D
@SP
A=M
D=M
@dest12
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

// Function 'Square.dispose' with 0 local variables
(Square.dispose)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
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

// Call 'Memory.deAlloc' with 1 args
@return.Memory.deAlloc.19
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
@Memory.deAlloc
0;JMP
(return.Memory.deAlloc.19)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest20
M=D
@SP
A=M
D=M
@dest20
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Square.draw' with 0 local variables
(Square.draw)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.28
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
@Screen.setColor
0;JMP
(return.Screen.setColor.28)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest29
M=D
@SP
A=M
D=M
@dest29
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.38
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.38)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest39
M=D
@SP
A=M
D=M
@dest39
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Square.erase' with 0 local variables
(Square.erase)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.46
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
@Screen.setColor
0;JMP
(return.Screen.setColor.46)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest47
M=D
@SP
A=M
D=M
@dest47
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.56
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.56)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest57
M=D
@SP
A=M
D=M
@dest57
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'Square.incSize' with 0 local variables
(Square.incSize)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 254
@254
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
@True67
D;JLT
@SP
A=M
M=0
@Next67
0;JMP
(True67)
@SP
A=M
D=0
M=D-1
(Next67)
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 510
@510
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
@True72
D;JLT
@SP
A=M
M=0
@Next72
0;JMP
(True72)
@SP
A=M
D=0
M=D-1
(Next72)
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

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push pointer 0
@0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.erase' with 1 args
@return.Square.erase.78
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
@Square.erase
0;JMP
(return.Square.erase.78)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest79
M=D
@SP
A=M
D=M
@dest79
A=M
M=D

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

// push constant 2
@2
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

// pop this 2
@SP
AM=M-1
@2
D=A
@THIS
D=D+M
@dest83
M=D
@SP
A=M
D=M
@dest83
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

// Call 'Square.draw' with 1 args
@return.Square.draw.85
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
@Square.draw
0;JMP
(return.Square.draw.85)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest86
M=D
@SP
A=M
D=M
@dest86
A=M
M=D

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'Square.decSize' with 0 local variables
(Square.decSize)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

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

// push constant 2
@2
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
@True95
D;JGT
@SP
A=M
M=0
@Next95
0;JMP
(True95)
@SP
A=M
D=0
M=D-1
(Next95)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push pointer 0
@0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.erase' with 1 args
@return.Square.erase.100
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
@Square.erase
0;JMP
(return.Square.erase.100)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest101
M=D
@SP
A=M
D=M
@dest101
A=M
M=D

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

// pop this 2
@SP
AM=M-1
@2
D=A
@THIS
D=D+M
@dest105
M=D
@SP
A=M
D=M
@dest105
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

// Call 'Square.draw' with 1 args
@return.Square.draw.107
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
@Square.draw
0;JMP
(return.Square.draw.107)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest108
M=D
@SP
A=M
D=M
@dest108
A=M
M=D

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'Square.moveUp' with 0 local variables
(Square.moveUp)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 1
@1
D=A
@THIS
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True117
D;JGT
@SP
A=M
M=0
@Next117
0;JMP
(True117)
@SP
A=M
D=0
M=D-1
(Next117)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.122
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
@Screen.setColor
0;JMP
(return.Screen.setColor.122)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest123
M=D
@SP
A=M
D=M
@dest123
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.136
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.136)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest137
M=D
@SP
A=M
D=M
@dest137
A=M
M=D

// push this 1
@1
D=A
@THIS
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

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest141
M=D
@SP
A=M
D=M
@dest141
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.144
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
@Screen.setColor
0;JMP
(return.Screen.setColor.144)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest145
M=D
@SP
A=M
D=M
@dest145
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.154
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.154)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest155
M=D
@SP
A=M
D=M
@dest155
A=M
M=D

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'Square.moveDown' with 0 local variables
(Square.moveDown)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 254
@254
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
@True166
D;JLT
@SP
A=M
M=0
@Next166
0;JMP
(True166)
@SP
A=M
D=0
M=D-1
(Next166)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.171
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
@Screen.setColor
0;JMP
(return.Screen.setColor.171)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest172
M=D
@SP
A=M
D=M
@dest172
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.181
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.181)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest182
M=D
@SP
A=M
D=M
@dest182
A=M
M=D

// push this 1
@1
D=A
@THIS
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest186
M=D
@SP
A=M
D=M
@dest186
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.189
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
@Screen.setColor
0;JMP
(return.Screen.setColor.189)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest190
M=D
@SP
A=M
D=M
@dest190
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.203
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.203)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest204
M=D
@SP
A=M
D=M
@dest204
A=M
M=D

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'Square.moveLeft' with 0 local variables
(Square.moveLeft)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 0
@0
D=A
@THIS
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True213
D;JGT
@SP
A=M
M=0
@Next213
0;JMP
(True213)
@SP
A=M
D=0
M=D-1
(Next213)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.218
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
@Screen.setColor
0;JMP
(return.Screen.setColor.218)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest219
M=D
@SP
A=M
D=M
@dest219
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.232
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.232)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest233
M=D
@SP
A=M
D=M
@dest233
A=M
M=D

// push this 0
@0
D=A
@THIS
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

// pop this 0
@SP
AM=M-1
@0
D=A
@THIS
D=D+M
@dest237
M=D
@SP
A=M
D=M
@dest237
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.240
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
@Screen.setColor
0;JMP
(return.Screen.setColor.240)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest241
M=D
@SP
A=M
D=M
@dest241
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.250
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.250)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest251
M=D
@SP
A=M
D=M
@dest251
A=M
M=D

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'Square.moveRight' with 0 local variables
(Square.moveRight)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push constant 510
@510
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
@True262
D;JLT
@SP
A=M
M=0
@Next262
0;JMP
(True262)
@SP
A=M
D=0
M=D-1
(Next262)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.267
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
@Screen.setColor
0;JMP
(return.Screen.setColor.267)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest268
M=D
@SP
A=M
D=M
@dest268
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.277
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.277)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest278
M=D
@SP
A=M
D=M
@dest278
A=M
M=D

// push this 0
@0
D=A
@THIS
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// pop this 0
@SP
AM=M-1
@0
D=A
@THIS
D=D+M
@dest282
M=D
@SP
A=M
D=M
@dest282
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// Call 'Screen.setColor' with 1 args
@return.Screen.setColor.285
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
@Screen.setColor
0;JMP
(return.Screen.setColor.285)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest286
M=D
@SP
A=M
D=M
@dest286
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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

// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1

// Call 'Screen.drawRectangle' with 4 args
@return.Screen.drawRectangle.299
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
@4
D=A+D
@LCL
D=M-D
@ARG
M=D
@Screen.drawRectangle
0;JMP
(return.Screen.drawRectangle.299)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest300
M=D
@SP
A=M
D=M
@dest300
A=M
M=D

(IF_FALSE0)

// push constant 0
@0
D=A
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

// Function 'SquareGame.new' with 0 local variables
(SquareGame.new)

@0
D=A
@SP
M=M+D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Memory.alloc' with 1 args
@return.Memory.alloc.2
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
@Memory.alloc
0;JMP
(return.Memory.alloc.2)

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.new' with 3 args
@return.Square.new.7
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
@3
D=A+D
@LCL
D=M-D
@ARG
M=D
@Square.new
0;JMP
(return.Square.new.7)

// pop this 0
@SP
AM=M-1
@0
D=A
@THIS
D=D+M
@dest8
M=D
@SP
A=M
D=M
@dest8
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest10
M=D
@SP
A=M
D=M
@dest10
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

// Function 'SquareGame.dispose' with 0 local variables
(SquareGame.dispose)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.dispose' with 1 args
@return.Square.dispose.17
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
@Square.dispose
0;JMP
(return.Square.dispose.17)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest18
M=D
@SP
A=M
D=M
@dest18
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

// Call 'Memory.deAlloc' with 1 args
@return.Memory.deAlloc.20
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
@Memory.deAlloc
0;JMP
(return.Memory.deAlloc.20)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest21
M=D
@SP
A=M
D=M
@dest21
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'SquareGame.moveSquare' with 0 local variables
(SquareGame.moveSquare)

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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push this 1
@1
D=A
@THIS
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True29
D;JEQ
@SP
A=M
M=0
@Next29
0;JMP
(True29)
@SP
A=M
D=0
M=D-1
(Next29)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.moveUp' with 1 args
@return.Square.moveUp.34
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
@Square.moveUp
0;JMP
(return.Square.moveUp.34)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest35
M=D
@SP
A=M
D=M
@dest35
A=M
M=D

(IF_FALSE0)

// push this 1
@1
D=A
@THIS
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@True39
D;JEQ
@SP
A=M
M=0
@Next39
0;JMP
(True39)
@SP
A=M
D=0
M=D-1
(Next39)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.moveDown' with 1 args
@return.Square.moveDown.44
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
@Square.moveDown
0;JMP
(return.Square.moveDown.44)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest45
M=D
@SP
A=M
D=M
@dest45
A=M
M=D

(IF_FALSE1)

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
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
@True49
D;JEQ
@SP
A=M
M=0
@Next49
0;JMP
(True49)
@SP
A=M
D=0
M=D-1
(Next49)
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.moveLeft' with 1 args
@return.Square.moveLeft.54
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
@Square.moveLeft
0;JMP
(return.Square.moveLeft.54)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest55
M=D
@SP
A=M
D=M
@dest55
A=M
M=D

(IF_FALSE2)

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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
@True59
D;JEQ
@SP
A=M
M=0
@Next59
0;JMP
(True59)
@SP
A=M
D=0
M=D-1
(Next59)
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.moveRight' with 1 args
@return.Square.moveRight.64
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
@Square.moveRight
0;JMP
(return.Square.moveRight.64)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest65
M=D
@SP
A=M
D=M
@dest65
A=M
M=D

(IF_FALSE3)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// Call 'Sys.wait' with 1 args
@return.Sys.wait.68
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
@Sys.wait
0;JMP
(return.Sys.wait.68)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest69
M=D
@SP
A=M
D=M
@dest69
A=M
M=D

// push constant 0
@0
D=A
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

// Function 'SquareGame.run' with 2 local variables
(SquareGame.run)

@0
D=A
@LCL
A=M+D
M=0
@1
D=A
@LCL
A=M+D
M=0
@2
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

// pop pointer 0
@SP
AM=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest76
M=D
@SP
A=M
D=M
@dest76
A=M
M=D

(WHILE_EXP0)

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE

(WHILE_EXP1)

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

// push constant 0
@0
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
@True85
D;JEQ
@SP
A=M
M=0
@Next85
0;JMP
(True85)
@SP
A=M
D=0
M=D-1
(Next85)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE

// Call 'Keyboard.keyPressed' with 0 args
@return.Keyboard.keyPressed.88
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Keyboard.keyPressed
0;JMP
(return.Keyboard.keyPressed.88)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest89
M=D
@SP
A=M
D=M
@dest89
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

// Call 'SquareGame.moveSquare' with 1 args
@return.SquareGame.moveSquare.91
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
@SquareGame.moveSquare
0;JMP
(return.SquareGame.moveSquare.91)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest92
M=D
@SP
A=M
D=M
@dest92
A=M
M=D

// JMP to LABEL: WHILE_EXP1
@WHILE_EXP1
0;JMP

(WHILE_END1)

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

// push constant 81
@81
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
@True97
D;JEQ
@SP
A=M
M=0
@Next97
0;JMP
(True97)
@SP
A=M
D=0
M=D-1
(Next97)
@SP
M=M+1

// JMP to LABEL: IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE

// JMP to LABEL: IF_FALSE0
@IF_FALSE0
0;JMP

(IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// pop local 1
@SP
AM=M-1
@1
D=A
@LCL
D=D+M
@dest103
M=D
@SP
A=M
D=M
@dest103
A=M
M=D

(IF_FALSE0)

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

// push constant 90
@90
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
@True107
D;JEQ
@SP
A=M
M=0
@Next107
0;JMP
(True107)
@SP
A=M
D=0
M=D-1
(Next107)
@SP
M=M+1

// JMP to LABEL: IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE

// JMP to LABEL: IF_FALSE1
@IF_FALSE1
0;JMP

(IF_TRUE1)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.decSize' with 1 args
@return.Square.decSize.112
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
@Square.decSize
0;JMP
(return.Square.decSize.112)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest113
M=D
@SP
A=M
D=M
@dest113
A=M
M=D

(IF_FALSE1)

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

// push constant 88
@88
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
@True117
D;JEQ
@SP
A=M
M=0
@Next117
0;JMP
(True117)
@SP
A=M
D=0
M=D-1
(Next117)
@SP
M=M+1

// JMP to LABEL: IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE

// JMP to LABEL: IF_FALSE2
@IF_FALSE2
0;JMP

(IF_TRUE2)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Call 'Square.incSize' with 1 args
@return.Square.incSize.122
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
@Square.incSize
0;JMP
(return.Square.incSize.122)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest123
M=D
@SP
A=M
D=M
@dest123
A=M
M=D

(IF_FALSE2)

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

// push constant 131
@131
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
@True127
D;JEQ
@SP
A=M
M=0
@Next127
0;JMP
(True127)
@SP
A=M
D=0
M=D-1
(Next127)
@SP
M=M+1

// JMP to LABEL: IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE

// JMP to LABEL: IF_FALSE3
@IF_FALSE3
0;JMP

(IF_TRUE3)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest132
M=D
@SP
A=M
D=M
@dest132
A=M
M=D

(IF_FALSE3)

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

// push constant 133
@133
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
@True136
D;JEQ
@SP
A=M
M=0
@Next136
0;JMP
(True136)
@SP
A=M
D=0
M=D-1
(Next136)
@SP
M=M+1

// JMP to LABEL: IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE

// JMP to LABEL: IF_FALSE4
@IF_FALSE4
0;JMP

(IF_TRUE4)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest141
M=D
@SP
A=M
D=M
@dest141
A=M
M=D

(IF_FALSE4)

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

// push constant 130
@130
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
@True145
D;JEQ
@SP
A=M
M=0
@Next145
0;JMP
(True145)
@SP
A=M
D=0
M=D-1
(Next145)
@SP
M=M+1

// JMP to LABEL: IF_TRUE5
@SP
AM=M-1
D=M
@IF_TRUE5
D;JNE

// JMP to LABEL: IF_FALSE5
@IF_FALSE5
0;JMP

(IF_TRUE5)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest150
M=D
@SP
A=M
D=M
@dest150
A=M
M=D

(IF_FALSE5)

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

// push constant 132
@132
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
@True154
D;JEQ
@SP
A=M
M=0
@Next154
0;JMP
(True154)
@SP
A=M
D=0
M=D-1
(Next154)
@SP
M=M+1

// JMP to LABEL: IF_TRUE6
@SP
AM=M-1
D=M
@IF_TRUE6
D;JNE

// JMP to LABEL: IF_FALSE6
@IF_FALSE6
0;JMP

(IF_TRUE6)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@SP
AM=M-1
@1
D=A
@THIS
D=D+M
@dest159
M=D
@SP
A=M
D=M
@dest159
A=M
M=D

(IF_FALSE6)

(WHILE_EXP2)

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

// push constant 0
@0
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
@True164
D;JEQ
@SP
A=M
M=0
@Next164
0;JMP
(True164)
@SP
A=M
D=0
M=D-1
(Next164)
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// not
@SP
AM=M-1
M=!M
@SP
M=M+1

// JMP to LABEL: WHILE_END2
@SP
AM=M-1
D=M
@WHILE_END2
D;JNE

// Call 'Keyboard.keyPressed' with 0 args
@return.Keyboard.keyPressed.168
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
@0
D=A+D
@LCL
D=M-D
@ARG
M=D
@Keyboard.keyPressed
0;JMP
(return.Keyboard.keyPressed.168)

// pop local 0
@SP
AM=M-1
@0
D=A
@LCL
D=D+M
@dest169
M=D
@SP
A=M
D=M
@dest169
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

// Call 'SquareGame.moveSquare' with 1 args
@return.SquareGame.moveSquare.171
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
@SquareGame.moveSquare
0;JMP
(return.SquareGame.moveSquare.171)

// pop temp 0
@SP
AM=M-1
@0
D=A
@5
D=D+A
@dest172
M=D
@SP
A=M
D=M
@dest172
A=M
M=D

// JMP to LABEL: WHILE_EXP2
@WHILE_EXP2
0;JMP

(WHILE_END2)

// JMP to LABEL: WHILE_EXP0
@WHILE_EXP0
0;JMP

(WHILE_END0)

// push constant 0
@0
D=A
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