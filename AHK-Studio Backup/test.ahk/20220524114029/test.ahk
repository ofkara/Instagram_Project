fileselectfile, csvfile
fileread,csv,%csvfile%


Users := []

loop,parse,csv,`r,`n
	Loop,Parse,A_LoopField,CSV
		Users.Push(A_LoopField)

msgbox % Users [4]