Soundtoggle()
SOUNDTOGGLE(){
SetKeyDelay, 10
SetMouseDelay, 10
settitlematchmode, 2
CoordMode, Mouse , Screen
MouseGetPos, X, Y
if ID:=winexist("Sound ahk_exe rundll32.exe"){
WinActivate, Ahk_ID %ID% ; WinActivate("Ahk_ID " ID)
WinWaitActive, Ahk_ID %ID%
}else,{
Run, RunDll32.exe shell32.dll`,Control_RunDLL mmsys.cpl`,`,0,,,dllpid
WinWaitActive ahk_pid %dllpid%,,2
}ControlSend,SysListView321,{Up}
send {Up}
ControlGet, isEnabled, Enabled,,&Set Default
if(!isEnabled)
ControlSend,SysListView321,{Down}

SetControlDelay -1
ControlClick,&Set Default,Sound,,,,NA
ControlClick,OK,Sound,,,,NA
; DllCall("SetCursorPos", int, &x, int, &y)
MouseMove, % X,% Y
SoundPlay *48 ; hitone
}
exitapp


; Soundtoggle()
; SOUNDTOGGLE(){
; SetKeyDelay, 10
; SetMouseDelay, 10
; settitlematchmode, 2
; ; if ID:=winexist("Sound ahk_exe rundll32.exe"){
; ; winclose
; ; WinWaitClose
; ; }
; if ID:=winexist("Sound ahk_exe rundll32.exe"){
; ; WinActivate("Ahk_ID " ID)
; WinActivate, Ahk_ID %ID%
; WinWaitActive, Ahk_ID %ID%
; }
; else,{
; Run, RunDll32.exe shell32.dll`,Control_RunDLL mmsys.cpl`,`,0,,,dllpid
; WinWaitActive ahk_pid %dllpid%,,2
; }ControlSend,SysListView321,{Up}
; send {Up}
; ControlGet, isEnabled, Enabled,,&Set Default
; if(!isEnabled)
; ControlSend,SysListView321,{Down}
; SoundPlay *48 ; hitone
; SetControlDelay -1
; ControlClick,&Set Default,Sound,,,,NA
; ControlClick,OK,Sound,,,,NA
; }
; ; a_mouse
; exitapp
