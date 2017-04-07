IniRead(_IniFile="E:\AH\ini.ini", _Options="") ; http://www.autohotkey.com/forum/topic72442.html
{ ; t(iniread(,"d slML"))
	Local _Reading, _Prepend, _Entries, _nSec, _nKey, _@, _@1, _@2, _@3, _@4, _@5 := 1, _Literal := """", _Commands := "sa|ka|sl|sr|p|d|r|e|t|c|b|f",rll:=1,RL
	;--------------------------------------OPTIONS-------------------------------------------------------
	; Each letter or word below is a flag that corresponds to one of the settings of the function. These settings can take any string as a value. A) By default, each setting takes the value assigned in the first column below. B) You may change settings by including that flag in the Options parameter of the function. In this case the passed option will take the value assigned in the 2nd column below. C) Indicate any other value with a string immediately following the corresponding flag. Include spaces in this string by surrounding it with quotes. Separate each flag and string pairing with a space.
	;----------------------------------------------------------------------------------------------------
	; DEFAULT                 USER DEFAULT             NAME                    ABOUT
	, _sa := "",              _sa_user := "Sections*"  ;sa = Section Array     Creates the specified pseudoarray containing each section header that was read. An asterisk (*) will be replaced by the item number, otherwise it will be appended to the end. Item 0 will contain the size of the ray. Only applicable if all sections are being read (s = "")
	, _ka := "",              _ka_user := "Keys*"      ;ka = Key Array         Same as above but for individual keys. Similar to the d option
	, _sl := "",              _sl_user := "*"          ;sl = Section (Literal) Section to use out of whole file. If multiple sections have the same name the first will be used. Specify an asterisk (*) to only read the first section. Leave blank to read the entire file
	, _sr := "",              _sr_user := ""           ;sr = Section (RegEx)   Same as above but will extract from all sections whose names match the given regular expression
	, _p := "",               _p_user := "*_"          ;p = Prepend            Prepend this string to the variables. An asterisk (*) will be replaced by the current section name
	, _d := "",               _d_user := "`n"          ;d = Delimited List     Instead of returning the number of keys read, the function will return a string of all variables created (i.e. all keys read with any additional modifications made by _r or _p) delimited by the indicated character(s)
	, _r := "",               _r_user := "_"           ;r = Replace Bad Chars  One or more characters in key or section names that are unsuitable for AutoHotkey variable names will be replaced by this character
	, _e := "fso",            _e_user := ""            ;e = Error Behavior     Indicate/omit any combination of the characters f/s/o/r to display an error dialog/exit silently if the ini file cannot be found/the desired section cannot be found/a preexisting variable will be overwritten/r will replace any inappropriate characters
	, _t := True,             _t_user := False         ;t = Trim Whitespace    Trims whitespaces from the beginning and end of all keys and values
	, _c := True,             _c_user := False         ;c = Allow Comments     Specifying true for Allow Comments will exclude all comments from ini values. Comments are delimited with a space and then a semicolon (;) as in AutoHotkey
	, _b := True,             _b_user := False         ;b = Use Booleans       If b is true then keys with the string "true", "false", "yes", or "no" will be interpreted as 1 or 0 so as to work nicely with AutoHotkey IF statements
	, _f := True,             _f_user := False         ;f = Deref Values       If f is true then Transform, Deref will be used on all key values. For instance, this allows you to give a filepath a %A_ScriptDir%\File.dat
	;---------------------------------USER CONFIGURATIONS------------------------------------------------
	, _UserConfig_Foo := "x12 y34"
	, _UserConfig_Bar := "cWhite -a"
	;----------------------------------------------------------------------------------------------------
	While (_@5 := RegExMatch(_Options, "i)(?:^|\s)(?:!(\w+)|(\+|-)?(" _Commands ")(" _Literal "(?:[^" _Literal "]|" _Literal _Literal ")*" _Literal "(?= |$)|[^ ]*))", _@, _@5 + StrLen(_@)))
		If (_@1 <> "")
			_Options := SubStr(_Options, 1, _@5 + StrLen(_@)) _UserConfig_%_@1% SubStr(_Options, _@5 + StrLen(_@))
		Else If (_@4 <> "") {
			If (InStr(_@4, _Literal) = 1) and (_@4 <> _Literal) and (SubStr(_@4, 0, 1) = _Literal) and (_@4 := SubStr(_@4, 2, -1))
				StringReplace, _@4, _@4, %_Literal%%_Literal%, %_Literal%, All
			_%_@3% := _@4
		} Else
			_%_@3% := _@2 = "+" ? True : _@2 = "-" ? False : _%_@3%_user
	If (_IniFile = "") {
		If !FileExist(_IniFile := SubStr(A_ScriptFullPath, 1, InStr(A_ScriptFullPath, ".", 0, 0)) "ini") {
			If InStr(_e, "f")
				MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, The IniFile parameter was omitted or blank, which the function interprets as an ini file with the same name as the script and in the same dir, i.e.:`n`n%_IniFile%`n`nThis file does not exist.
			Return
		}
	} Else If (IniFile = "*") {
		Loop, *.ini
		{
			_IniFile := A_LoopFileFullPath
			Break
		}
		If (_IniFile = "*") {
			If InStr(_e, "f")
				MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, No .ini file found in working directory.`n`not avoid this error, specify an explicit .ini file path in the first parameter of the function.
			Return
		}
	} Else If !FileExist(_IniFile) {
		If InStr(_e, "f")
			MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, File "%_IniFile%" not found or does not exist.
		Return
	}
	If RegExMatch(_r, "[^\w#@$?]") or RegExMatch(_p, "[^\w*#@$?]") {
		MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, Neither the p nor r options may contain characters that are not alloewd in AutoHotkey variable names.
		Return
	}
	_Entries := _d = "" ? 0 : _d
	If !InStr(_p, "*")
		_Prepend := _p
	If (_sl <> "") {
		If (_sr <> "") {
			MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, Please enter either a sl (Section - Literal) or sr (Section - RegEx) value, not both.
			Return
		}
	} Else If (_sr = "")
		_Reading := True
	If (_sa <> "") {
		If RegExMatch(_sa, "[^\w#@$?*]")
			_sa := RegExReplace(_sa, "[^\w#@$?*]")
		If !InStr(_sa, "*")
			_sa .= "*"
	}
	If (_ka <> "") {
		If RegExMatch(_ka, "[^\w#@$?*]")
			_ka := RegExReplace(_ka, "[^\w#@$?*]")
		If !InStr(_ka, "*")
			_ka .= "*"
		If (_ka = _sa) {
			MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, The sa (Section Output Array) and ka (Key Output Array) options cannot be the same.
			Return
		}
	}
	Loop, Read, %_IniFile%
		If RegExMatch(A_LoopReadLine, "^[^=]*\[\K[^\]]+(?=\])", _@) {
			If _t
				_@ = %_@%
			If (_sr <> "")
				_Reading := RegExMatch(_@, _sr) ? True : False
			Else If (_sl <> "")
				If _Reading
					Break
				Else If (_@ = _sl) or (_sl = "*")
					_Reading := True
			If !_Reading
				Continue
			If InStr(_p, "*") {
				StringReplace, _Prepend, _p, *, % RegExReplace(_@, "[^\w#_t$?]+", _r, _@2), All
				If _@2 and InStr(_e, "r") {
					MsgBox, 262420, %A_ScriptName% - %A_ThisFunc%(): Error, The section "%_@%" contains characters not allowed in AutoHotkey variable names. Replace these characters with "%_r%"?`n`nTo change the replacement character, use the r option.
					IfMsgBox NO
						Return
				}
			}
			If _sa {
				_nSec += 1
				StringReplace, _@1, _sa, *, %_nSec%, All
				%_@1% := _@
			}
		} Else If _Reading and (_sl="ML") and (RL:=strreplace(SubStr(A_LoopReadLine, InStr(A_LoopReadLine,"=") + 1),",","=`r`n")) AND (RLL:=1)
while (RLL := RegExMatch(RL, "i)([[:print:]]*)=([[:print:]]*)",_@,RLL+StrLen(_@))){
if (a:=(%_@1%)) and  !(_@2) and instr(_@1,"a_") ;RegExMatch(_@1,"i)^a_",Maa)
vn:=_@1 " = " a,_@1:=vn
else,{
if instr(_@2,"%")
Transform, _@2, Deref, %_@2%
_@1:=_@1 " = " _@2
}If (_d <> "") {
StringReplace, _Entries, _Entries, %_d%%_Prepend%%_@1%%_d%, %_d%, All
_Entries .= _Prepend _@1 _d
} Else, _Entries += 1
			If _ka {
				_nKey += 1
				StringReplace, _@, _ka, *, %_nKey%, All
				%_@% := _Prepend _@1
			}
}
Return _d = "" ? _Entries : SubStr(_Entries, 2, -1)
}
; _@ := SubStr(RL, 1, InStr(RL, "=") - 1), _@2 := SubStr(RL, InStr(RL, "=") + 1)
			; _@ := SubStr(RL, 1, InStr(RL, "=") - 1), _@2 := SubStr(RL, InStr(RL, "=") + 1)
			; If _t {
			; 	_@ = %_@%
			; 	_@2 = %_@2%
			; }
			; If _c
			; 	_@2 := RegExReplace(_@2, "(?:\s+|^);.*")
			; _@1 := RegExReplace(_@, "[^\w#_t$?]+", _r)
;  Else If _Reading and InStr((RL:=A_LoopReadLine), "=") {
; ; if (_sl="ML")
; ; RL:=sr(RL,",","=`n")
; 			_@ := SubStr(RL, 1, InStr(RL, "=") - 1), _@2 := SubStr(RL, InStr(RL, "=") + 1)
; 			If _t {
; 				_@ = %_@%
; 				_@2 = %_@2%
; 			}
; 			If _c
; 				_@2 := RegExReplace(_@2, "(?:\s+|^);.*")
; 			_@1 := RegExReplace(_@, "[^\w#_t$?]+", _r)
; if (a:=(%_@1%)) and  !(_@2) and RegExMatch(_@1,"i)^a_",Maa)
; vn:=_@1 " = " a,_@1:=vn
; else,{
; if instr(_@2,"%")
; Transform, _@2, Deref, %_@2%
; _@1:=_@1 " = " _@2
; }
; 			If (_d <> "") {
; StringReplace, _Entries, _Entries, %_d%%_Prepend%%_@1%%_d%, %_d%, All
; _Entries .= _Prepend _@1 _d
; } Else, _Entries += 1
; 			If _ka {
; 				_nKey += 1
; 				StringReplace, _@, _ka, *, %_nKey%, All
; 				%_@% := _Prepend _@1
; 			}
; 		}
; 	If (_sl <> "") and !_Reading and InStr(_e, "s")
; 		MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, Section "%_sl%" was not found in ini file "%_IniFile%", therefore no variables were assigned.`n`nTo avoid this error, use the sr (Section Name - RegEx) option instead of sl (Section Name - Literal), or omit both options.
; 	If _sa {
; 		StringReplace, _@, _sa, *, 0, All
; 		%_@% := _nSec
; 	}
; 	If _ka {
; 		StringReplace, _@, _ka, *, 0, All
; 		%_@% := _nKey
; 	}
