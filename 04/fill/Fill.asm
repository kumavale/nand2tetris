// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@INPUT
0;JMP
(DRAW)
    @SCREEN
    D=A
    @COUNTER
    M=D
(DRAWLOOP)
    @8192
    D=A
    @SCREEN
    D=D+A
    @COUNTER
    D=D-M
    @INPUT
    D;JEQ
    @PIXEL
    D=M
    @COUNTER
    A=M
    M=D
    @COUNTER
    M=M+1
    @DRAWLOOP
    0;JMP
(INPUT)
    @KBD
    D=M
    @ZERO
    D;JEQ
    @ONE
    0;JMP
(ZERO)
    @PIXEL
    M=0
    @DRAW
    0;JMP
(ONE)
    D=-1
    @PIXEL
    M=D
    @DRAW
    0;JMP

