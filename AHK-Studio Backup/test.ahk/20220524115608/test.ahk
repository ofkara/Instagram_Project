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
	
	isEmpty := true
	for each, value in USERS {
		if !(value == "") {
			isEmpty := false
			break
		}
	}
	
	if(isEmpty){
		MsgBox No User Left!
		return
	}
	
	
	USERS.Remove(random_number, USERS_LENGTH)
	return USERS[random_number]
}

Excel_GetUserData(csv){
	loop,parse,csv,`r,`n
		Loop,Parse,A_LoopField,CSV
			Users.Push(A_LoopField)
	
	USERS_LENGTH := Users.Length()-1
}