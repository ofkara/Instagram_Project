global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1
#Include notify.ahk

fileselectfile, csvfile
fileread,csv,%csvfile%


Excel_GetUserData(csv, ByRef array){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			array.Push(A_LoopField)
		
		ToolTip Data is Read!
}