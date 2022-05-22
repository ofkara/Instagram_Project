
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

;GUI CONGIGURATION
;---------------------------------------------------------------------------------------

Gui Font, s9, Segoe UI
Gui Add, GroupBox, x32 y16 w108 h118 +0xB00, Buttons
Gui Add, Button, gSave x48 y88 w80 h23, Save
Gui Add, Button, gStart x48 y40 w80 h23, Start
Gui Add, Button, gStop x48 y64 w80 h23, Stop

;EDIT BOXES 
;---------------------------------------------------------------------------------------

Gui Add, GroupBox, x144 y16 w277 h118 +0xB00, Configurations
Gui Add, Edit, vedit_FollowNumber x288 y56 w120 h21 
Gui Add, Edit, vedit_FollowRate x152 y56 w120 h21

Gui Add, Edit, vedit_UnfollowRate x152 y104 w120 h21
Gui Add, Edit, vedit_UnfollowNumber x288 y104 w120 h21

Gui Add, Text, x152 y32 w120 h23 +0x200, Follow Rate Hourly
Gui Add, Text, x152 y80 w120 h23 +0x200, Unfollow Rate Hourly
Gui Add, Text, x288 y32 w120 h23 +0x200, Follow People Count
Gui Add, Text, x288 y80 w127 h23 +0x200, Unfollow People Count


;TEXT FOR Statistics
;---------------------------------------------------------------------------------------

Gui Add, GroupBox, x34 y128 w389 h85 +0xB00, Statistics
Gui Add, Text, vtext_Follow x63 y152 w331 h23 +0x200 +0x1, Follow x people in y hour
Gui Add, Text, vtext_Unfollow x62 y176 w333 h23 +0x200 +0x1, Unfollow x people in y hour




;PUll DATA FROM SETTINGS.INI
;---------------------------------------------------------------------------------------
IniRead, edit_FollowNumber, settings.ini, FOLLOW, edit_FollowNumber
IniRead, edit_FollowRate, settings.ini, FOLLOW, edit_FollowRate
GuiControl,,edit_FollowNumber, %edit_FollowNumber%



IniRead, edit_UnfollowNumber, settings.ini, UNFOLLOW, edit_UnfollowNumber
IniRead, edit_UnfollowRate, settings.ini, UNFOLLOW, edit_UnfollowRate



Gui Show, w458 h241, Instagram Project
Return


Start:
return


Stop:
return

Save:
Gui, Submit, NoHide

if(edit_followRate > edit_FollowNumber){
	MsgBox,16,Error!,The follow rate cannot be bigger than people count
}else{
	hour_follow := Round((edit_FollowNumber / edit_followRate),0)
	if(hour_follow > 1){
		GuiControl,, text_Follow, Follow %edit_FollowNumber% people in %hour_follow% hours
	}else{
		GuiControl,, text_Follow, Follow %edit_FollowNumber% people in %hour_follow% hour
	}
	IniWrite, %edit_FollowNumber%, settings.ini, FOLLOW, edit_FollowNumber
	IniWrite, %edit_FollowRate%, settings.ini, FOLLOW, edit_FollowRate
}


if(edit_UnfollowRate > edit_UnfollowNumber){
	MsgBox,16,Error!,The Unfollow rate cannot be bigger than people count
}else{
	hour_unfollow := Round((edit_UnfollowNumber / edit_UnfollowRate),0)
	if(hour_unfollow > 1){
		GuiControl,, text_Unfollow, Unfollow %edit_UnfollowNumber% people in %hour_unfollow% hours
	}else{
		GuiControl,, text_Unfollow, Unfollow %edit_UnfollowNumber% people in %hour_unfollow% hour
	}
	IniWrite, %edit_UnfollowNumber%, settings.ini, UNFOLLOW, edit_UnfollowNumber
	IniWrite, %edit_UnfollowRate%, settings.ini, UNFOLLOW, edit_UnfollowRate
}
return


GuiEscape:
GuiClose:
Gosub,Save
ExitApp
