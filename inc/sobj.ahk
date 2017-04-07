String := "
(`
FirstName: John
LastName: Smith
Nick: Jonny
Parents:
	- Anna
	- Joe
PhoneNumbers:
	-
		Number: 212 555-1234
		Type: fixed
	-
		Number: 099 555-4567
		Type: mobile
Skills:
	Music: plays guitar
	Programming: knows AHK, C++, HTML
	Spots: good in Kiteboarding, Windsurfing and Swimming
)"
TestFileFullPath := A_ScriptDir "\StrObj test.txt"
Obj := StrObj(String)					; String to Object (constructs object from string)
MsgBox % Obj.Parents.2					; returns "Joe"
MsgBox % Obj.PhoneNumbers.MaxIndex()	; returns "2"
MsgBox % Obj.PhoneNumbers.2.Type		; returns "mobile"
Obj.PhoneNumbers.2.Number := "099 123-456"	; sets new value
Obj.Skills.Programming .= ", Lua"			; appends value
Obj.YearOfBirth := 1982						; inserts new key and sets its value

MsgBox % StrObj(Obj)				; converts modified object to a string and displays it in a MsgBox
StrObj(Obj,TestFileFullPath)		; saves modified object to File
Run, % TestFileFullPath
return