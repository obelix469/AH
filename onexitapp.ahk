#NoEnv
; #InstallKeybdHook
; #InstallmouseHook
; #NoTrayIcon
DetectHiddenWindows, on
settitlematchmode, 2
SendMode, Input
SetWorkingDir %A_ScriptDir%
#INCLUDE E:\AH\lib\Classes.ahk
#INCLUDE <Functions>
; #INCLUDE %A_ScriptDir%\lib\Include.ahk
t("exile.ahk closed`n" a_scriptname " running")
return
 ;kwait(),(A_TimesincethisHotkey>1000?exitapp("full",0):t(send("{ESC}")))	; Select
Joy10::
DetectHiddenWindows, On
if WinExist("E:\AH\joymouse.ahk ahk_class AutoHotkey")
close()
else,Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\joymouse.ahk"
; Else,	ST("POV_Watch","off"),ST("MouseWheel","off"),ST("Joy_Trigger_Watch","off")
DetectHiddenWindows, OFF
; runclose("joymouse.ahk"),exit()
return
Joy8::
Joy7::
kwait()
if (A_TimesincethisHotkey<900)
return
#c::
kwait()
Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\exile.ahk"
^esc::
exitapp
