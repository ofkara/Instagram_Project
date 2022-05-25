
IniRead, followRate, settings.ini, FOLLOW, edit_FollowRate
IniRead, followNumber, settings.ini, FOLLOW, edit_FollowNumber

IniRead, unfollowNumber, settings.ini, FOLLOW, edit_UnfollowNumber
IniRead, unfollowRate, settings.ini, FOLLOW, edit_UnfollowRate


GLOBAL TIME :=  []
Loop %1HOURSEC%{
	TIME.Push(A_Index)
}

GLOBAL 1HOURMIN = 60
GLOBAL 1HOURSEC = 3600
RATE := followRate


msgbox % TIME_CreateRandomTime()

