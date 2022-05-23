
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""


;TEXTS
followers_text:="|<>*168$63.C06M000000300n0000000M06M000000300n0000000yT6MyMl7Xvv6AnAN69aMlNVaP39nMH63A4nM9jPyMMNUaP1B+M30nAAnMMtn0M3MlaNX7CAH4P3kn7UlUwMyU"

if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text))
{
	msgbox found!
}

