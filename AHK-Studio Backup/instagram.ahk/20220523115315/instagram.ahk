
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""

Notify("Instagram", "Following Squence Started!",, 5)


Instagram_ClickOnFollowers()
Instagram_CheckFollowersPageOpen()


Instagram_CheckFollowersPageOpen(){
	xIsVisible:="|<>*149$27.y007vs01yDU0TUy07s3s1y0DUTU0y7s03ty00DzU00zs003y000TU007y001zs00TjU07sy01y3s0TUDU7s0y1y03sTU0Dbs00yy003zU00Ds000w"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_celeb))
	{
		Notify("Instagram", "Followers page is open",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
	}else{
		Notify("Instagram", "Followers page is not open!",,5)
	}
}

Instagram_ClickOnFollowers(){
	followers_text_celeb:= "|<>*153$71.DsC1kA3w3b1yzsA3UMDw7SDzUsM71ksQDUsC0ssT3XUQS1U80kkq660ss30E1VVgAA0lk70U33XQszzXU7V067ANVzz707m0A6Mn3U0C03w0MAla700Q01s0kT3w600s01s3US3kC0Vk03sC0w7UC33U8Czs1sD0Dy70Tsz03UA0DkC0zY"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_celeb))
	{
		Notify("Instagram", "Clicked on Followers, celebrity",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
	}
	Sleep 500
	followers_text_celeb:= "|<>*153$70.TUM30M7k6Q7vzVkC3VzkPkzgD71sAC71s720QA7UkkC70s00skS770MQ3U03XXAQM1VU700C6AlVzy60T00sMn67zsM0z03VrCsM01U0S0C7MP1U0600Q0sBVg700M01k70y7kQ01U07ks3kS0wA60kTzU70s1zkM3zbs0Q3U3y1U7sU"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_celeb))
	{
		Notify("Instagram", "Clicked on Followers, normal",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
	}
}