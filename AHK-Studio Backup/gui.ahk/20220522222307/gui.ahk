
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Gui Font, s9, Segoe UI
Gui Add, GroupBox, x32 y16 w108 h118 +0xB00, Buttons
Gui Add, Button, x48 y88 w80 h23, Save
Gui Add, Button, x48 y40 w80 h23, Start
Gui Add, Button, x48 y64 w80 h23, Stop

Gui Add, GroupBox, x144 y16 w277 h118 +0xB00, Configurations
Gui Add, Edit, vedit_FollowRate x152 y56 w120 h21
Gui Add, Edit, vedit_UnfollowRate x152 y104 w120 h21
Gui Add, Edit, vedit_FollowNumber x288 y56 w120 h21
Gui Add, Edit, vedit_UnfollowNumber x288 y104 w120 h21


Gui Add, GroupBox, x34 y128 w389 h85 +0xB00, Stastistics
Gui Add, Text, x152 y32 w120 h23 +0x200, Follow Rate Hourly
Gui Add, Text, x152 y80 w120 h23 +0x200, Unfollow Rate Hourly
Gui Add, Text, x288 y32 w120 h23 +0x200, Follow People Count
Gui Add, Text, x288 y80 w127 h23 +0x200, Unfollow People Count


Gui Add, Text, x63 y152 w331 h23 +0x200 +0x1, Follow x people in y hour
Gui Add, Text, x62 y176 w333 h23 +0x200 +0x1, Unfollow x people in y hour

Gui Show, w458 h241, Instagram Project
Return

GuiEscape:
GuiClose:
ExitApp
