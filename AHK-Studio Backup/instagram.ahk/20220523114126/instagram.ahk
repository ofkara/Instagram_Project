
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""

Notify("Instagram", "Following Squence Started!",, 5)

;TEXTS
followers_text:="|<>*149$71.k1k1k3y077UDU3k3UTz0CT1zUDUD1zz0Ry7z0T0Q7kT0z0SC0z0sC0S1w0sQ1i1kw0Q3k1kw7Q7Vk0w7U3UsCsC3U1sC07VkMsQDzzkQ07nVlksTzzUs07rXXXUzzz1k03b6371s003U01CQ7C1k007000SsCs3U00C000RURk7U00Q000z0TUD000s001y0z0DUA1k1k1w1w0Dzs3U3z3k1s0Dzk703y7U3k07y0C03y"
follow_text:="|<>*179$63.1sDzzzzzzzsD1zzzzzzzz1sDzzzzzzzsD1zk3w7sDk1sDs07kz1y0D1y00S7sDk1sDUQ1kT0w8D1w7sC3k7V1sD1zUsS0w8D1sTw73l7V1sD3zUsA8MMD1sTy7VV331sD3zkwAMMMD1sTw7VXX71sD3zUw0Q0sD1sDwDk7U71sD0z1y0w0sD1w3UTk7kD1sDk03z0y1sD1z01zsDkD1sDy0Tz1y3w"
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