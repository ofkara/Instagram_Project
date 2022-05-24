global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1
#Include notify.ahk

fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)


Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			array.Push(A_LoopField)
		
		Notify("EXCEL", "Get User Data is successful",5)
}