

global USERS_START_ROW = 1+1
global NOTIFY_FLAG = 1

FileRead,csv ,database.csv
#Include notify.ahk


INFLUENCERS := []
Excel_GetUserDataFromCSV(csv, INFLUENCERS)



Loop 5{
	THE_INFLUENCER := Excel_GenerateInfluencer(INFLUENCERS)
	msgbox %THE_INFLUENCER%
}

Excel_GenerateInfluencer(ByRef arr){
	
	random := Excel_Helper_GenerateRandomNumber(arr)
	influencer := arr[random]
	arr.RemoveAt[random]
	msgbox % arr.Length()
	
	if(NOTIFY_FLAG == 1){
		Notify("EXCEL", "Excel_GenerateInfluencer successful!",5)
	}
	
	return influencer
}


Excel_Helper_RemoveEmptyIndex(ByRef indexArr, index){
	
	Len := indexArr.Length
	Loop Len
	{
		Index := Len - A_Index + 1
		If 
			indexArr.RemoveAt(Index)
	}
	
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