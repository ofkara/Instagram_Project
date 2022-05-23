
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""

Notify("Instagram", "Following Squence Started!",, 5)


Instagram_ClickOnFollowers()


Instagram_ClickOnFollowers(){
	followers_text_celeb:= "|<>*153$71.DsC1kA3w3b1yzsA3UMDw7SDzUsM71ksQDUsC0ssT3XUQS1U80kkq660ss30E1VVgAA0lk70U33XQszzXU7V067ANVzz707m0A6Mn3U0C03w0MAla700Q01s0kT3w600s01s3US3kC0Vk03sC0w7UC33U8Czs1sD0Dy70Tsz03UA0DkC0zY"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text_celeb))
	{
		Notify("Instagram", "Clicked on Followers",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
	}
}