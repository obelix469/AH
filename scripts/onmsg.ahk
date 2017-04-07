
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#INCLUDE E:\AH\functions.ahk
; Menu, Tray, NoStandard
Menu, Tray, Add, Toggle AOT, ToggleAOT
Menu, Tray, Add,
Menu, Tray, Add, Reload, ExitScript
Menu, Tray, Add, Exit  , ExitScript
Menu, Tray, Tip, Toggle AOT
Menu, Tray, Default, Toggle AOT

Gui +LastFound
DllCall( "RegisterShellHookWindow", UInt,WinExist() )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage" )
LastActiveWindowID := WinActive("A")
initActiveWindowID := WinActive("A")

Return ;                                          // End of Auto-Execute Section //

ShellMessage( wParam, lParam )  {
  Global LastActiveWindowID
  If ( wParam = 4 And WinExist( "ahk_id " lParam ) ) { ; HSHELL_WINDOWACTIVATED = 4
       LastActiveWindowID := lParam
              MouseGetPos, x, Y
tt(strobj(win("ahk_id " lParam)) "mouse " x " y " y)
; WinGetTitle, title, ahk_id %LastActiveWindowID%
; tooltip % LastActiveWindowID ":=" lParam "`n" title ":=" ahk_id %AWinID%
  }
}

ToggleAOT:
; kk:=win("ahk_id "LastActiveWindowID)
; for k,v in kk
; tt.=k " " v "`n"
; tooltip %tt%
  ; WinSet, AlwaysOnTop, Toggle, ahk_id %LastActiveWindowID%
Return
Esc::
ExitScript:
  DllCall( "DeregisterShellHookWindow", UInt,hWnd ) ; Redundant, I guess!
  IfEqual, A_ThisMenuItem, Reload, Reload
  ExitApp
Return       MouseGetPos, x, Y