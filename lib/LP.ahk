#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

LP(file*){
Loop %0% {  ; For each file dropped onto the script (or passed as a parameter).
Path:= %A_Index%  ; Retrieve the next command line parameter.
Loop %Path%, 1
tool.=Path " --> " LP:= A_LoopFileLongPath "`n"  ;,T:=A_LoopFileTimeModified
}for I,P in file {
Path:=P,LP:=""
Loop %Path%, 1
tool.=Path " --> " LP:= A_LoopFileLongPath "`n"  ;,T:=A_LoopFileTimeModified
}if file.maxindex()
tool:=Now("HH:mm:ss tt") " [LongPath] E:\AH\lib\LP.Ahk LP(" file.maxindex() ")`n" tool
else, tooltip % (tool:="[LongPath] Run `n" tool)
fileappend % tool, log.log
return tool
}


; funcs()
; #INCLUDE <Functions>
; #INCLUDE E:\AH\lib\Funcs.ahk
; #INCLUDE E:\AH\lib\Functions.ahk

	; Loop %0% { ; For each file dropped onto the script (or passed as a parameter).
	; GivenPath:= %A_Index%  ; Retrieve the next command line parameter.
	; Loop %GivenPath%, 1
	; T:=A_LoopFileTimeModified, LP:= A_LoopFileLongPath
	; tool=%tool%%T% %GivenPath% --> %LP%`n
	; }
