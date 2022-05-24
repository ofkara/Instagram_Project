MsgBox % content := Excel_GetColumn("database.csv",10,"Sagittarius",5)

Excel_GetColumn(file,readColumn,needle,sendColumn){
	Loop, Read, % file											; read every line of "My.csv"
	{
		Array := StrSplit(A_LoopReadLine,",")						; split the line at its separating commas to get separate "columns" AKA elements
		if InStr(Array[readColumn],needle)						; if at the specified element (10) the specified content ("Sagittarius") has been found ...
			Break													; you can finish that search.
	}
	Return % Array[sendColumn]									; return the content of the specified element (5)
}