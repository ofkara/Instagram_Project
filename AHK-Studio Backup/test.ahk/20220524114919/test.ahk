global USERS := []
global USERS_LENGTH
fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)





Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
	
	USERS_LENGTH := Users.Length()-1
}