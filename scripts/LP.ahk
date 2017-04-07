#noenv
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%
funcs()
#INCLUDE <Functions>

tool:=Now("HH:mm:ss tt")" [LongPath] Run E:\AH\LP.Exe `n"
Loop %0% {  ; For each file dropped onto the script (or passed as a parameter).
Path:= %A_Index%  ; Retrieve the next command line parameter.
Loop %Path%, 1
tool.=Path " --> " LP:= A_LoopFileLongPath "`n"  ;,T:=A_LoopFileTimeModified
}Fileappend % tool, log.log
exitapp






; LP:= A_LoopFileLongPath ;,T:=A_LoopFileTimeModified
; LP=%A_LoopFileTimeModified% %A_LoopFileLongPath%
; tool=%tool%%T% %Path% --> %LP%`n
; tool=%tool%%Path% --> %LP%`n
; LP(file*){

; if file.MaxIndex()
; 	tool:= "[LongPath] LP(""" file* """)`n"
; 	; tool:= "[LongPath] LP(""" join("""`,""",file*) """)`n"
; 	else, tool=[LongPath] Run `n
; 	Loop %0%  ; For each file dropped onto the script (or passed as a parameter).
; 	{
; 	Path:= %A_Index%  ; Retrieve the next command line parameter.
; 	Loop %Path%, 1
; 	T:=A_LoopFileTimeModified, LP:= A_LoopFileLongPath
; 	 ; LP=%A_LoopFileTimeModified% %A_LoopFileLongPath%
; 	tool=%tool%%T% %Path% --> %LP%`n
; 	}
; 	for I,P in file {
; 	Path:=p,LP:=""
; 	Loop %Path%, 1
; 	T:=A_LoopFileTimeModified, LP:= A_LoopFileLongPath
; 	tool.=t " " Path " --> " LP "`n"
; 	}
; 	fileappend % tool, log.log
; if file[1]
; 	return tool
; exit
; 	}
; exitapp
