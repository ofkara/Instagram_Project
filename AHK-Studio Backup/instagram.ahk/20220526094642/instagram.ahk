
#Include findtextlib.ahk
#Include notify.ahk
SetDefaultMouseSpeed, 0
#Include excel.ahk



WinMaximize, Mozilla FireFox
Instagram_CloseFirefox(5000)




t1:=A_TickCount, X:=Y:=""

Notify("Instagram", "Following Squence Started!",, 5)

Instagram_CloseFirefox(time){
	sleep %time%
	
	if WinExist("Mozilla Firefox"){
		WinActivate 
		Notify("Firefox","Firefox terminated!",5)
		Send !{F4}
	}else{
		Notify("Firefox","Firefox not Exist!",5)
	}
}

Instagram_Unfollow(arr){
	FileRead,csv_followed, followed.csv
	UNFOLLOW := []
	Excel_GetUserDataFromCSV(csv_followed, UNFOLLOW)
	loop_size := UNFOLLOW.Length()
	Loop %loop_size% {
		Person := UNFOLLOW[A_Index]
		Instagram_Helper_UnfollowPerson(person)
	}
}

Instagram_Helper_UnfollowPerson(person){
	
	run person 
	requested_button := "|<>*152$59.000000000C000000000Q0000M0000s0001k0001k0003U0003U0007000077s3szkT0DiTsTtzXz0zxlssks773nz1nU1kQ7D1y3bU3UkCQ3zz7k73zws7zy7sC7ztkDk03sQC03UTU01ksC070zU03VkQ0D3rVa73owADDbzDy7szsTz7wDk7kTUDD"
	following_button := "<>*152$68.000001k0000000000Q000000000070000000000000000000000000000000000000003wC3Utkts1xnzVkwAQDz0zxswQD773tsSTQ777llksCD1y0tlgMQC3XUTUCCP673Uss7s3XavVksCC1y0sv6sQC3XUTUC6lg73Uss7Q71wT1ksCD3rXkT7kQC3Vtwzs7Uw73UsTz3s0sC1ksC1tk0000000000Q0000000000700000000003U000000001Xs000000000TwU"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, requested_button))
	{
		FindText().Click(X, Y, "L")
	}
	
	
}


Instagram_Helper_CheckFollowersPageOpen(){ 
	xIsVisible:="|<>*149$27.y007vs01yDU0TUy07s3s1y0DUTU0y7s03ty00DzU00zs003y000TU007y001zs00TjU07sy01y3s0TUDU7s0y1y03sTU0Dbs00yy003zU00Ds000w"
	Sleep 2000
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, xIsVisible))
	{
		Notify("Instagram", "Followers page is open",,5)
		return 1
	}else{
		Notify("Instagram", "Followers page is not open!",,5)
		return 0
	}
}

Instagram_ClickOnFollowers(){
	followers_text_type1:= "|<>*153$71.DsC1kA3w3b1yzsA3UMDw7SDzUsM71ksQDUsC0ssT3XUQS1U80kkq660ss30E1VVgAA0lk70U33XQszzXU7V067ANVzz707m0A6Mn3U0C03w0MAla700Q01s0kT3w600s01s3US3kC0Vk03sC0w7UC33U8Czs1sD0Dy70Tsz03UA0DkC0zY"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_type1))
	{
		Notify("Instagram", "Clicked on Followers, type1",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
		if(Instagram_Helper_CheckFollowersPageOpen() == 0){
			Instagram_ClickOnFollowers()
		}
		return
	}
	
	followers_text_type2:= "|<>*153$70.TUM30M7k6Q7vzVkC3VzkPkzgD71sAC71s720QA7UkkC70s00skS770MQ3U03XXAQM1VU700C6AlVzy60T00sMn67zsM0z03VrCsM01U0S0C7MP1U0600Q0sBVg700M01k70y7kQ01U07ks3kS0wA60kTzU70s1zkM3zbs0Q3U3y1U7sU"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_type2))
	{
		Notify("Instagram", "Clicked on Followers, type2",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
		if(Instagram_Helper_CheckFollowersPageOpen() == 0){
			Instagram_ClickOnFollowers()
		}
		return
	}
	
	
	followers_text_type3:= "|<>*155$71.3w3UQ30y0vkyTy70sC7z1zXxsS63kQSD3sC3UAA7UkkC7UsC0QQDVXUAC1kQ0ssP760QQ1kk0klaADzss3tU1VXAMTzlk3z033aAkk03U0z063MPVk0700S0Q6kq3U0C00i0kDVw308Q01S7UC1s7Vks62Ty0Q3U7z1kDwDk0s703w3UDo"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_type3))
	{
		Notify("Instagram", "Clicked on Followers, type3",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
		if(Instagram_Helper_CheckFollowersPageOpen() == 0){
			Instagram_ClickOnFollowers()
		}
		return
	}
	
	followers_text_type_4:= "|<>*152$58.s30s7k6Q7tUQ31zkPlzb1sAC71sC2Q7VkkC70s0kq670MQ3U33MMM1VUC0CBlVzy60S0NXC7zsM0z1aAkM01U0y6Mn1U0600wRVg700M01kw7UQ01U073kS0wA60UsD1s1zkM3zUM3U3y1U7sU"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_type4))
	{
		Notify("Instagram", "Clicked on Followers, type4",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
		if(Instagram_Helper_CheckFollowersPageOpen() == 0){
			Instagram_ClickOnFollowers()
		}
		return
	}
	
	Notify("Instagram", "Followers button cannot be found.",,5)
}

Instagram_ClickOnFollowAndCopyLink(){
	follow_button:="|<>*179$69.zzzzwSDzzzzs0TzzXlzzzzz03zzwSDzzzzs0TzzXlzzzzz3zzzwSDzzzzsTzzzXlzzzzz3zw3wSDk7VssTy07Xlw0QD33zUUwSD11lkM0QT3XlkyCC3033wQSCDkkkM0sTXXllz76F3z7wQSCDssW8TsTXXllz74F3z3wQSCDksb8TwT3XlkyDUs3zUkwSD11w70Ty0DXlw0TUs3zw3wSDkDyDY"
	if (ok:=FindText(X, Y, 1220-150000, 319-150000, 1220+150000, 319+150000, 0, 0, follow_button))
	{
		Sleep 1000
		FindText().Click(X, Y, "L")
		X := X-450
		MouseClick, Right, %X%, %Y%
		;MouseMove %X%, %Y%
		Sleep 1000
		copy_link_button:="|<>**50$54.Dk000SS1sMM000KK1Mrs000KS1MizzzyKTzTgARBuKKbNc/gqqKKPLg/xyqKKvCivxroKKv6rvhrALqvLsQRBAEqvNDrxxMzzzz005bMUE00005Ykzk00007bk0000U"
		if (ok:=FindText(X, Y, 1220-150000, 319-150000, 1220+150000, 319+150000, 0, 0, copy_link_button))
		{
			FindText().Click(X, Y, "L")
		}
		
	}
	Instagram_ShiftFollowingPageDown()
	Sleep 1000
}

Instagram_ShiftFollowingPageDown(){
	Sleep 500
	Send, {WheelDown}
	Sleep 3000
}

Instagram_SaveFollowedPeople(){
	FileAppend, %Clipboard%`n, followed.csv
}

Esc::ExitApp