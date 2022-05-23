
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""


;TEXTS
followers_text:="|<>*149$71.k1k1k3y077UDU3k3UTz0CT1zUDUD1zz0Ry7z0T0Q7kT0z0SC0z0sC0S1w0sQ1i1kw0Q3k1kw7Q7Vk0w7U3UsCsC3U1sC07VkMsQDzzkQ07nVlksTzzUs07rXXXUzzz1k03b6371s003U01CQ7C1k007000SsCs3U00C000RURk7U00Q000z0TUD000s001y0z0DUA1k1k1w1w0Dzs3U3z3k1s0Dzk703y7U3k07y0C03y"
follow_text:="|<>*180$71.zzzzkS3zzzzzzzzzUw7zzzzzzzzz1sDzzzzzzU7y3kTw0z1zw07w7UzU0T3zk03sD1y00S7z0s7kS3s70Q6w7w7Uw7kTUsBsDsD1sD1zUsPUzsS3kS7z1kr1zkQ7UwDy3Uy3zUsD1sTy7Vw7z1kS3kzwD3sDy3Uw7VzkS7kTwD1sD3zUw7kzkS3kS3z3wDUzUw7Uw3w7sTUQ3sD1w3UTkzU0DkS3w00zlzU0zUw7w07zXzk7z1sDy0Tz4"
if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text))
{
Notify("Instagram", "Page is loaded!",,5)
Sleep 2000
FindText().Click(X, Y, "L")
}

if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, follow_text)){
	Notify("Instagram", "People are loaded!",,5)
	Sleep 2000
	FindText().Click(X, Y, "L")	
}