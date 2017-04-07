#noenv
#InstallKeybdHook
#InstallmouseHook
#SingleInstance force
#MaxThreadsPerHotkey 1
funcs()
settitlematchmode, 2
DetectHiddenWindows, on
SendMode, Input
SetWorkingDir %A_ScriptDir%
#INCLUDE E:\AH\Functions.ahk
#INCLUDE <_struct>
#include <AHKStructures>
"".base.__Get :=func("Get_Prop"),"".base.__set:=func("Set_Obj")
t1:=-500,t2:=-250,lasttip:=""
for k,v in StrSplit(BIV("Hotkey,GUI,MENU,Misc,script,settings"),",")
(%v%)?b.="`n" v " = " (%v%):""
append(b,"biv.txt")
PS(,,250,400)
onexit("exitapp")
; #include *i HS_call.ahk
listvars
return

esc::exitapp