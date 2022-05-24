global USERS := []
global MAX_NUM
fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)

msgbox %MAX_NUM%


Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
	
	MAX_NUM := Users.Length()-1
}