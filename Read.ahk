FileSelectFile, OutputVar

If ErrorLevel ;checks if any folder is selected
	msgbox no folder selected
else
	msgbox % OutputVar
