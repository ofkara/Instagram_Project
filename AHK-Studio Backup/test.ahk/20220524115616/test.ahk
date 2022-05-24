global USERS := []
global USERS_LENGTH
global USERS_START_ROW = 1

fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)

Loop 3{
	msgbox % Excel_GenerateRandomUser()
}


Excel_GenerateRandomUser(){
	Random, random_number , USERS_START_ROW, USERS_LENGTH
	USERS.Remove(random_number, USERS_LENGTH)
	if(isEmptyOrEmptyStringsOnly(USERS)){
		msgbox array is empty!
	}
	return USERS[random_number]
}


isEmptyOrEmptyStringsOnly(inputArray) {
	for each, value in inputArray {
		if !(value == "") {
			return false ;one of the values is not an empty string therefore the array is not empty or empty strings only
		}
	}
	return true ;all the values have passed the test or no values where inside the array
}

Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
	
	USERS_LENGTH := Users.Length()-1
}