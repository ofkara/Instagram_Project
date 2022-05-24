global Users := []
fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)

msgbox % Users.Length()-1


Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
}