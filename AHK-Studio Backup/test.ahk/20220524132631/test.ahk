global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1
FileRead,CSV,"database.csv"
#Include notify.ahk


Excel_GetUserDataFromCSV(CSV)


Excel_GetUserDataFromCSV(CSV){
	loop,parse,CSV,`r,`n
		Loop,Parse,A_LoopField,CSV
			USERS.Push(A_LoopField)
	
	Notify("EXCEL", "Get User Data is successful!",5)
}