FilePath := "database.xlsx"	; specify your path here
MsgBox,64,Used range in Sheet1 is:, % ComObjGet(FilePath).Worksheets("Sheet1").UsedRange.Address	; (ignore $ signs)