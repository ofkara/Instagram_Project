global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1

FileRead,csv ,"database.csv"
#Include notify.ahk

global Notify_Flag = 1

Excel_GetUserDataFromCSV(csv)
msgbox % USERS[5]

Excel_GetUserDataFromCSV(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			USERS.Push(A_LoopField) 
	
	if(Notify_Flag == 1){
		Notify("EXCEL", "Excel_GetUserDataFromCSV successful!",5)
	}
}