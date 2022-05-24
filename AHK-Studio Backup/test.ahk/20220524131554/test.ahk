global USERS := []
global USERS_LENGTH
global USERS_START_ROW = 1

fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)


msgbox % Excel_GenerateInfluencer()


Excel_RemoveInfluencer(){
	USERS.Remove(random_number, USERS_LENGTH)
}

Excel_GenerateInfluencer(){
	random := Excel_Helper_GenerateRandomNumber()
	return USERS[random]
}

Excel_Helper_GenerateRandomNumber(){
	Random, random_number , USERS_START_ROW, USERS_LENGTH
	return random_number
}

Excel_Helper_isArrayEmpty(inputArray) {
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