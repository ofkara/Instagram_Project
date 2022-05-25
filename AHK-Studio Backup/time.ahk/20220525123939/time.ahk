
IniRead, followRate, settings.ini, FOLLOW, edit_FollowRate
IniRead, followNumber, settings.ini, FOLLOW, edit_FollowNumber

IniRead, unfollowNumber, settings.ini, FOLLOW, edit_UnfollowNumber
IniRead, unfollowRate, settings.ini, FOLLOW, edit_UnfollowRate


TIME :=  []

1HOURMIN = 60
1HOURSEC = 3600
RATE := followRate


Random, random_time, 0, 1HOURSEC
