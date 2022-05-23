
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""

Notify("Instagram", "Following Squence Started!",, 5)

;TEXTS
followers_text:="|<>*155$71.7s70s61w1rVyzwC1kQDy3z7zkwA7UswS7kQD0MMD1VUQD1kA0ssT370MQ3UM1lkqCA0ss3UU1VXAMTzlk7l0336MkzzXU7u067ANVU0701y0A6kr3U0C00w0sBVg700Q01w1UT3s60Es03wD0Q3kD3VkA6zw0s70Dy3UTwTU1kC07s70TY"
follow_text:="|<>*179$66.zzzzwSDzzzz03zzwSDzzzz03zzwSDzzzz03zzwSDzzzz3zzzwSDzzzz3zzzwSDzzzz3zw3wSDk7Vs3zk0wSDU3Vs3zUUwSD11lk03XsQSC7llk033wQSCDkkk073wQSCDssm3z7wQSCDssW3z3wQSCDssW3z3wQSCDksb3zXsQSC7lw73zUkwSD11w73zk1wSDU3w73zw3wSDkDyDU"
if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text))
{
	Notify("Instagram", "Page is loaded!",,5)
	Sleep 2000
	FindText().Click(X, Y, "L")
	Sleep 3000
	
	Loop 5{
		if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, follow_text))
		{
			Notify("Instagram", "People are loaded!",,5)
			Sleep 2000
			FindText().Click(X, Y, "L")	
		}
	}
}

