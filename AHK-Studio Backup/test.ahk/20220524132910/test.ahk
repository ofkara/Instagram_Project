global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1

FileRead,CSV ,"database.csv"
#Include notify.ahk

global Notify_Flag = 1

Excel_GetUserDataFromCSV(CSV)


Excel_GetUserDataFromCSV(CSV){
	loop,parse,CSV,`r,`n
		Loop,Parse,A_LoopField,CSV
			USERS.Push(A_LoopField) 
	
	if(Notify_Flag == 1){
		Notify("EXCEL", "Excel_GetUserDataFromCSV successful!",5)
	}
}