
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Gui Font, s9, Segoe UI
Gui Add, GroupBox, x80 y8 w120 h80 +Center, Select a File
Gui Add, Button, hWndhBtnSelect vBtnSelect gSelect x104 y40 w80 h23, &Select

Gui Show, w289 h108, Window
Return

Select:
Return

GuiEscape:
GuiClose:
ExitApp
