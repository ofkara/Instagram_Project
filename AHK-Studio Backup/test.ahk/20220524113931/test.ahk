fileselectfile, csvfile
fileread,csv,%csvfile%
loop,parse,csv,`r,`n
	Loop,Parse,A_LoopField,CSV
		MsgBox % A_LoopField