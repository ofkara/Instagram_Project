global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1
#Include notify.ahk

;fileselectfile, csvfile
fileread,csv, database.csv


Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			USERS.Push(A_LoopField)
	
	ToolTip Data is Read!
}