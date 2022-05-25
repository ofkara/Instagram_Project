
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""

Notify("Instagram", "Following Squence Started!",, 5)


Instagram_ClickOnFollowers()
Instagram_ClickOnFollowAndCopyLink()

;CHECKS IF THE FOLLOWER PAGE IS OPEN BY LOOKING AT THE X AT THE LEFT TOP
;IF IT IS OPEN THEN IT RETURNS 1, IF IT IS NOT OPEN IT RETURN 0
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

;CLICKS ON THE FOLLOWERS BUTTON, IT SEEMS THAT THERE ARE TWO DIFFERENT BUTTONS WITH REGARDS TO THE NAMING AND OTHER STUFF (IDK)
;WHENEVER IT CLICKS ON THE FOLLOWERS BUTTON, IT CALLS Instagram_CheckFollowersPageOpen FUNCTION TO CHECK IF THE PAGE IS OPEN.
;IF THE PAGE IS OPEN THEN IT STARTS THE FOLLOWING PROCESS BUT IF IT IS NOT OPEN IT CALLS ITSELF BECAUSE WE NEED TO CLICK ON FOLLOWERS AGAIN
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
	
	Sleep 500
	
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
	
	
}

Instagram_ClickOnFollowAndCopyLink(){
	follow_button:="|<>*179$69.zzzzwSDzzzzs0TzzXlzzzzz03zzwSDzzzzs0TzzXlzzzzz3zzzwSDzzzzsTzzzXlzzzzz3zw3wSDk7VssTy07Xlw0QD33zUUwSD11lkM0QT3XlkyCC3033wQSCDkkkM0sTXXllz76F3z7wQSCDssW8TsTXXllz74F3z3wQSCDksb8TwT3XlkyDUs3zUkwSD11w70Ty0DXlw0TUs3zw3wSDkDyDY"
	if (ok:=FindText(X, Y, 1220-150000, 319-150000, 1220+150000, 319+150000, 0, 0, follow_button))
	{
		Sleep 1000
		FindText().Click(X, Y, "L")
		X := X-450
		MouseMove, %X%, %Y%
		MouseClick, Right
		Sleep 400
		Y := Y+200
		MouseMove, %X%, %Y%
		Sleep 400
		X := X+30
		MouseMove, %X%, %Y%
		Sleep 400
		MouseClick, Right
	}
}
Esc::ExitApp