#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
if !hwndEdit {
dhw:=A_DetectHiddenWindows
DetectHiddenWindows,On
Process,Exist
ControlGet,hwndEdit,Hwnd,,Edit1,ahk_class AutoHotkey ahk_pid %ErrorLevel%
DetectHiddenWindows,%dhw%
astr:=A_IsUnicode?"astr":"str",ptr:=A_PtrSize=8 ? "ptr":"uint",hmod:=DllCall("GetModuleHandle","str","user32.dll",ptr)
pSFW:=DllCall("GetProcAddress",ptr,hmod,astr,"SetForegroundWindow",ptr),pSW:=DllCall("GetProcAddress",ptr,hmod,astr,"ShowWindow",ptr)
DllCall("VirtualProtect",ptr,pSFW,ptr,8,"uint",0x40,"uint*",0),DllCall("VirtualProtect",ptr,pSW,ptr,8,"uint",0x40,"uint*",0)
bkpSFW:=NumGet(pSFW+0,0,"int64"),bkpSW:=NumGet(pSW+0,0,"int64")
}
if (A_PtrSize=8)
NumPut(0x0000C300000001B8,pSFW+0,0,"int64"),NumPut(0x0000C300000001B8,pSW+0,0,"int64")
else,NumPut(0x0004C200000001B8,pSFW+0,0,"int64"),NumPut(0x0008C200000001B8,pSW+0,0,"int64")