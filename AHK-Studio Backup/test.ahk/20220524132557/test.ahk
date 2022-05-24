global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1
FileRead,CSV,"database.csv"
#Include notify.ahk


Excel_GetUserData(csv)


Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			USERS.Push(A_LoopField)
	
	Notify("EXCEL", "Get User Data is successful!",5)
}