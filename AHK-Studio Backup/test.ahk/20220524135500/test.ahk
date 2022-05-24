
global INFLUENCER
global USERS_LENGTH
global USERS_START_ROW = 1+1
global NOTIFY_FLAG = 1

FileRead,csv ,database.csv
#Include notify.ahk


USERS := []
Excel_GetUserDataFromCSV(csv, USERS)



Excel_GenerateInfluencer(){
	random := Excel_Helper_GenerateRandomNumber()
	INFLUENCER := USERS[random]
	USERS.Delete(random)
	Excel_Helper_RemoveEmptyIndex()
	
}
Excel_Helper_RemoveEmptyIndex(){
	for index, value in USERS
		if (value = "")
			myArr.RemoveAt(index)
}
Excel_Helper_GenerateRandomNumber(){
	Random random_number, USERS_START_ROW, USERS_LENGTH 
	return random_number
}
Excel_Helper_ArrayLength(){
	return USERS.MaxIndex()-1
}
Excel_GetUserDataFromCSV(csv, arr){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			arr.Push(A_LoopField) 
	
	if(NOTIFY_FLAG == 1){
		Notify("EXCEL", "Excel_GetUserDataFromCSV successful!",5)
	}
	
	USERS_LENGTH := Excel_Helper_ArrayLength()
}