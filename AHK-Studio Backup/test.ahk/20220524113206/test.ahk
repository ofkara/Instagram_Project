Wait for the specific window to open
WinWaitActive , ,Registration Details
;Retrieve text from these 3 controls Surname, Forename and DOB
ControlGetText, Surname, ThunderRT6TextBox64
ControlGetText, Forename,ThunderRT6TextBox63
ControlGetText, DoB,ThunderRT6TextBox65

;Parse a comma separated value (CSV) file:
Loop, read, O:\Download\Register.csv
{
	LineNumber = %A_Index%
  ; save in array (or use stringsplit)
	Loop, parse, A_LoopReadLine, CSV
		Field%A_Index% := A_LoopField
  ; assuming the columns are surname;forename;dob (index 1,2 and 3 below)
	if (instr(Field1,surname) && instr(Field2,forename) && instr(Field3,dob))
		MsgBox,4160,Register,%Forename% %Surname% %DoB% on Register!`r`rRow Number: %A_Index% in Register.csv file
}
WinWaitClose, ,Registration Details