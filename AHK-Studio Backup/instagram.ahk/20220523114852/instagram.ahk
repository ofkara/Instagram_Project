
#Include findtextlib.ahk
#Include notify.ahk

t1:=A_TickCount, X:=Y:=""

Notify("Instagram", "Following Squence Started!",, 5)


Instagram_ClickOnFollowers()


Instagram_ClickOnFollowers(){
	followers_text:= "|<>*150$71.D000MA000000y000kM000003U001Uk00000600031U00000A00063000000M000A6000000k000MA000001w3w0kM1y1kC3sTy1UkDz3UQ61sS31UwD31sA30Q631k663kMC0QA670CC7kkM0sMAC0AQBXUk1kkMM0MMn71U3VUkk0klaC30731VU1Vn6Q60C633U31gBsC0QA670C3MPkA1kMA70M7kzUS70kMD3k70z0Ty1UkDz0C1q0Dk31U7s0Q3c"
	if (ok:=FindText(X, Y, 1000-150000, 256-150000, 1000+150000, 256+150000, 0, 0, followers_text))
	{
		Notify("Instagram", "Clicked on Followers",,5)
		Sleep 2000
		FindText().Click(X, Y, "L")
	}
}