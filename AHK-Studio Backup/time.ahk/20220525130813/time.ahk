
IniRead, followRate, settings.ini, FOLLOW, edit_FollowRate
IniRead, followNumber, settings.ini, FOLLOW, edit_FollowNumber

IniRead, unfollowNumber, settings.ini, FOLLOW, edit_UnfollowNumber
IniRead, unfollowRate, settings.ini, FOLLOW, edit_UnfollowRate

GLOBAL 1HOURMIN = 60
GLOBAL 1HOURSEC = 3600

TIME :=  []

TIME_CreateRandomTimeArray(ByRef arr){
	random_number := TIME_Helper_CreateRandomTimeIndex()
	
	TIME_HELPER_Contains(arr, random_number){
		
	}
	
	arr.Push(random_number)
}

TIME_Helper_CreateRandomTimeIndex(){
	Random random_time, 0, 1HOURSEC
	return random_time
}

TIME_HELPER_Contains(arr, var) {
	For each, item in arr
		If (item = var)
			Return True
	Return False
}


