#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
Process, Priority,, High

#INCLUDE E:\AH\Functions.ahk
#INCLUDE E:\AH\polyfunc.ahk

Gui +LastFound
hWnd := WinExist()


DllCall( "RegisterShellHookWindow", UInt,hWnd )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage" )
Return


ShellMessage( wParam,lParam ) {
  ; If ( wParam = 32772 or WParam = 4) ;  HSHELL_WINDOWACTIVATED := 4 or 32772

       WinGetActiveTitle, Title
  If  ( Title = "Change Icon" ){
tt("D:\Documents\Icons `n" biv())
       WinGetText, OutputVar

if A_CaretX and !instr(win(title).text,"D:\Documents\Icons")
clip("D:\Documents\Icons")
}
    ; else SetCapsLockState, off
}
Esc::
^F1::
exitapp
return