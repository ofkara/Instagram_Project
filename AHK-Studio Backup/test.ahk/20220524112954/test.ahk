Path := "C:\Users\Ömer Faruk Kara\Documents\GitHub\Instagram_Project\pseudo_database.xlsx"
XL := ComObjCreate("Excel.Application")
XL.Visible := False
XL_Workbook := XL.Workbooks.Open(Path)
XL_WorkSheet := XL_Workbook.Worksheets(1) ; I'm assuming worksheet 1 here because of the test file

LookUp := {} ; Object to hold lookups

Loop
{
	IF (XL_WorkSheet.Range("A" . A_Index).Value)
		LookUp[XL_WorkSheet.Range("A" . A_Index).Text] := XL_WorkSheet.Range("B" . A_Index).Text
	Else
		Break
}
Sleep 1000
XL.Quit

!x::
Gui, new
Gui, Add, Edit, w100 vcontent,
Gui, Add, Button, gsubmit Default, Submit
Gui, Show, autosize
return

submit:
Gui, submit,
msgbox, % "the meaning of " . content . " is " . LookUp[content]
Return