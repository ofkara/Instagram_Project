Path := A_Desktop "\read.xlsx"
XL := ComObjGet(Path)
XlApp := ComObjActive("Excel.Application")
XlApp.ActiveCell.Offset(0,0).value := XL.Worksheets(1).Range("a1").text 
return