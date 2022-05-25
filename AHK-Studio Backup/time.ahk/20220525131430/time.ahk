
IniRead, followRate, settings.ini, FOLLOW, edit_FollowRate
IniRead, followNumber, settings.ini, FOLLOW, edit_FollowNumber

IniRead, unfollowNumber, settings.ini, FOLLOW, edit_UnfollowNumber
IniRead, unfollowRate, settings.ini, FOLLOW, edit_UnfollowRate

GLOBAL 1HOURMIN = 60
GLOBAL 1HOURSEC = 3600

TIME_FOLLOW :=  []
TIME_UNFOLLOW := []


TIME_CreateSortedRandomTimeArray(TIME_FOLLOW, 10)




TIME_CreateSortedRandomTimeArray(ByRef arr, count){
	temp_count := count
	Loop %temp_count% {
		random_number := TIME_Helper_CreateRandomTimeIndex()
		
		if(TIME_HELPER_Contains(arr, random_number) = TRUE){
			temp_count -= 1
			Continue
		}
		
		arr.Push(random_number)
	}
	TIME_SortArray(arr)
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



TIME_SortArray(Array, Order="A") {
    ;Order A: Ascending, D: Descending, R: Reverse
	MaxIndex := ObjMaxIndex(Array)
	If (Order = "R") {
		count := 0
		Loop, % MaxIndex 
			ObjInsert(Array, ObjRemove(Array, MaxIndex - count++))
		Return
	}
	Partitions := "|" ObjMinIndex(Array) "," MaxIndex
	Loop {
		comma := InStr(this_partition := SubStr(Partitions, InStr(Partitions, "|", False, 0)+1), ",")
		spos := pivot := SubStr(this_partition, 1, comma-1) , epos := SubStr(this_partition, comma+1)    
		if (Order = "A") {    
			Loop, % epos - spos {
				if (Array[pivot] > Array[A_Index+spos])
					ObjInsert(Array, pivot++, ObjRemove(Array, A_Index+spos))    
			}
		} else {
			Loop, % epos - spos {
				if (Array[pivot] < Array[A_Index+spos])
					ObjInsert(Array, pivot++, ObjRemove(Array, A_Index+spos))    
			}
		}
		Partitions := SubStr(Partitions, 1, InStr(Partitions, "|", False, 0)-1)
		if (pivot - spos) > 1    ;if more than one elements
			Partitions .= "|" spos "," pivot-1        ;the left partition
		if (epos - pivot) > 1    ;if more than one elements
			Partitions .= "|" pivot+1 "," epos        ;the right partition
	} Until !Partitions
}