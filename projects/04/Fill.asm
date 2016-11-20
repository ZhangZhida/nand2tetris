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

// Put your code here.
(LOOP2)
	@24576
	A = A
	D = M
	@white
	D;JEQ
	@black
	D;JGT

	(white)
		@SCREEN
		D = M
		@itr
		M = 0
		//fill the screen
		(LOOPWHITE)
			@8192
			D = A
			@itr
			D = M - D
			@ENDWHITE
			D;JEQ
			@itr
			D = M
			@SCREEN
			D = D + A
			A = D
			M = 0
			@itr
			M = M + 1

			@LOOPWHITE
			0;JMP
		(ENDWHITE)
		@endif
		0;JMP

	(black)
		@SCREEN
		D = M
		@itr
		M = 0
		//fill the screen
		(LOOPBLACK)
			@8192
			D = A
			@itr
			D = M - D
			@ENDBLACK
			D;JEQ
			@itr
			D = M
			@SCREEN
			D = D + A
			A = D
			M = -1
			@itr
			M = M + 1

			@LOOPBLACK
			0;JMP
		(ENDBLACK)
	@endif
	0;JMP

	(endif)
	@LOOP2
	0;JMP
(END2)
