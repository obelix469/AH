
#noenv
#SingleInstance force



Loop %0% {  ; For each file dropped onto the script (or passed as a parameter).
Path:= %A_Index%  ; Retrieve the next command line parameter.
Loop %Path%, 1
{
FilePath:= A_LoopFileLongPath
run %comspec% /C takeown /f %FilePath% && cacls %FilePath% /G %A_UserName%:F

; tool.=Path " --> " LP:= A_LoopFileLongPath "`n"  ;,T:=A_LoopFileTimeModified
}
}
exitapp
; Fileappend % tool, log.log
; exitapp

