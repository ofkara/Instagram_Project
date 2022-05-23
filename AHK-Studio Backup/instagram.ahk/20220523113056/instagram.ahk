; #Include <FindText>

t1:=A_TickCount, X:=Y:=""

Text:="|<>*168$63.C06M000000300n0000000M06M000000300n0000000yT6MyMl7Xvv6AnAN69aMlNVaP39nMH63A4nM9jPyMMNUaP1B+M30nAAnMMtn0M3MlaNX7CAH4P3kn7UlUwMyU"

if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, Text))
{
  ; FindText().Click(X, Y, "L")
}

; ok:=FindText(X:="wait", Y:=3, 0,0,0,0,0,0,Text)    ; Wait 3 seconds for appear
; ok:=FindText(X:="wait0", Y:=-1, 0,0,0,0,0,0,Text)  ; Wait indefinitely for disappear

MsgBox, 4096, Tip, % "Found:`t" Round(ok.Length())
  . "`n`nTime:`t" (A_TickCount-t1) " ms"
  . "`n`nPos:`t" X ", " Y
  . "`n`nResult:`t<" (Comment:=ok[1].id) ">"

for i,v in ok  ; ok value can be get from ok:=FindText().ok
	if (i<=2)
		FindText().MouseTip(ok[i].x, ok[i].y)

#Include findtextlib.ahk