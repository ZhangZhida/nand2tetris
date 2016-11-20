	@i
	M = 1
	@mul
	M = 0
(LOOP)
	@i
	D = M
	@R0
	D = D - M
	@END
	D;JGT
	@R1
	D = M
	@mul
	M = D + M
	@i
	M = M + 1
	@LOOP
	0;JMP
(END)
	@mul
	D = M
	@R2
	M = D


