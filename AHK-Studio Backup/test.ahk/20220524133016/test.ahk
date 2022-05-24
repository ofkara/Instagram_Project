global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1
global NOTIFY_FLAG = 1

FileRead,csv ,"database.csv"
#Include notify.ahk



Excel_GetUserDataFromCSV(csv)
msgbox % USERS[5]

Excel_GetUserDataFromCSV(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			USERS.Push(A_LoopField) 
	
	if(NOTIFY_FLAG == 1){
		Notify("EXCEL", "Excel_GetUserDataFromCSV successful!",5)
	}
}