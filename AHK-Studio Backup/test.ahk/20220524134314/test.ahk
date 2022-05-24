global USERS := []
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1+1
global NOTIFY_FLAG = 1

FileRead,csv ,database.csv
#Include notify.ahk



Excel_GetUserDataFromCSV(csv)
Excel_GenerateInfluencer()
msgbox %INFLUENCER%

Excel_GenerateInfluencer(){
	random := Excel_Helper_GenerateRandomNumber()
	INFLUENCER := USERS[random]
	USERS.Remove(random, USERS_LENGTH)
}

Excel_Helper_GenerateRandomNumber(){
	Random random_number, USERS_START_ROW, USERS_LENGTH 
	return random_number
}
Excel_Helper_ArrayLength(){
	return USERS.MaxIndex()-1
}
Excel_GetUserDataFromCSV(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			USERS.Push(A_LoopField) 
	
	if(NOTIFY_FLAG == 1){
		Notify("EXCEL", "Excel_GetUserDataFromCSV successful!",5)
	}
	
	USERS_LENGTH := Excel_Helper_ArrayLength()
}