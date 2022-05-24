global USERS := []
global USERS_LENGTH
global USERS_START_ROW = 1

fileselectfile, csvfile
fileread,csv,%csvfile%

Excel_GetUserData(csv)


msgbox % Excel_GenerateRandomUser()



Excel_GenerateRandomUser(){
	Random, random_number , USERS_START_ROW, USERS_LENGTH
	USERS.Remove(random_number, USERS_LENGTH)
	return USERS[random_number]
}

Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
	
	USERS_LENGTH := Users.Length()-1
}