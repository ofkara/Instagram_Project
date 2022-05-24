global USERS := []
global USERS_LENGTH
global USERS_START_ROW = 1

fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)

Loop 2{
	
	INFLUENCER_NAME := Excel_GenerateInfluencer()
	if(UNFLEUNCER_NAME = -1){
		
	}
	
}


Excel_RemoveInfluencer(){
	
}

Excel_GenerateInfluencer(){
	
	
	
	USERS.Remove(random_number, USERS_LENGTH)
	
}

Excel_Helper_GenerateRandomNumber(){
	return Random, random_number , USERS_START_ROW, USERS_LENGTH
}


Excel_Helper_isEmpty(inputArray) {
	for each, value in inputArray {
		if !(value == "") {
			return false
		}
	}
	return true 
}

Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
	
	USERS_LENGTH := Users.Length()-1
}