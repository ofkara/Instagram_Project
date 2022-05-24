
global USERS_START_ROW = 1+1
global THE_INFLUENCER
global NOTIFY_FLAG = 1

FileRead,csv ,database.csv
#Include notify.ahk


INFLUENCERS := []
Excel_GetUserDataFromCSV(csv, INFLUENCERS)
msgbox %THE_INFLUENCER%



Excel_GenerateInfluencer(arr){
	random := Excel_Helper_GenerateRandomNumber(arr)
	THE_INFLUENCER = INFLUENCERS[random]
	
	if(NOTIFY_FLAG == 1){
		Notify("EXCEL", "Excel_GenerateInfluencer successful!",5)
	}
}

Excel_Helper_GenerateRandomNumber(arr){
	Random random_number, USERS_START_ROW, arr.Length()
	msgbox Random: %random_number%
	return random_number
}

Excel_GetUserDataFromCSV(csv, arr){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			arr.Push(A_LoopField) 
	
	if(NOTIFY_FLAG == 1){
		Notify("EXCEL", "Excel_GetUserDataFromCSV successful!",5)
	}
}