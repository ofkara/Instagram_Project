
global USERS_START_ROW = 1+1
global NOTIFY_FLAG = 1

FileRead,csv ,database.csv
#Include notify.ahk


INFLUENCERS := []
Excel_GetUserDataFromCSV(csv, INFLUENCERS)
msgbox % INFLUENCERS[2]



Excel_GenerateInfluencer(arr){
	random := Excel_Helper_GenerateRandomNumber()
	INFLUENCER := USERS[random]
	USERS.Delete(random)
	Excel_Helper_RemoveEmptyIndex()
	
}

Excel_Helper_GenerateRandomNumber(arr){
	Random random_number, USERS_START_ROW, arr.Length()
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