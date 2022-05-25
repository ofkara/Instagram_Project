
IniRead, followRate, settings.ini, FOLLOW, edit_FollowRate
IniRead, followNumber, settings.ini, FOLLOW, edit_FollowNumber

IniRead, unfollowNumber, settings.ini, FOLLOW, edit_UnfollowNumber
IniRead, unfollowRate, settings.ini, FOLLOW, edit_UnfollowRate

GLOBAL 1HOURMIN = 60
GLOBAL 1HOURSEC = 3600

GLOBAL TIME :=  []
Loop %1HOURSEC% {
	TIME.Push(A_Index)
}
random := TIME_CreateRandomTimeIndex()
msgbox % TIME[random]


TIME_CreateRandomTimeIndex(){
	Random random_time, 0, 1HOURSEC
	return random_time
}

RATE := followRate

