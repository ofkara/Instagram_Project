
fileread,"database.csv"

Users := []

loop,parse,csv,`r,`n
	Loop,Parse,A_LoopField,CSV
		Users.Push(A_LoopField)

Users [4]