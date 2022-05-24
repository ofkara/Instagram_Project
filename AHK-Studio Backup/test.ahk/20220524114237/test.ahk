fileselectfile, csvfile
fileread,csv,%csvfile%
Excel_GetUserData("csv")

global Users := []


msgbox % Users [4]


Excel_GetUserData("file"){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
}