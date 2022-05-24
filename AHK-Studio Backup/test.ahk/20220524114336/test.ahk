global Users := []


fileread,csv,%csvfile%
Excel_GetUserData(fileselectfile csvfile)



msgbox % Users [4]


Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
}