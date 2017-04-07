#noenv
#SingleInstance force
SetWorkingDir %A_ScriptDir%
SendMode, Input
Menu, Tray, Icon, E:\AH\ddores_26.ico
SetFormat, Float, 03
SetBatchLines,-1
SetKeyDelay -1
SetMouseDelay, -1
SetTitleMatchMode,2
; MsgBox % GetElementByName(Acc_ObjectFromWindow(WinExist("ahk_class Chrome_WidgetWin_1")), "Address and search bar").accValue(0)

; full_command_line := DllCall("GetCommandLine", "str")
; if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
; {
;  try
;  {
;      if A_IsCompiled
;          Run *RunAs "%A_ScriptFullPath%" /restart
;      else
;          Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
;  }
;  ExitApp
; }
; a=A_IsAdmin: %A_IsAdmin%`nCommand line: %full_command_line%
#INCLUDE E:\AH\lib\Classes.ahk
#INCLUDE <Functions>
; #INCLUDE <MiscFunctions>
; t(a_caretX "a_caret(h) " a_caret("x") "`na_caret(w) " a_caret("y") "`n" AutoDate(),A_CaretX-50,A_CaretY-200),
; tidy()
; t(a_caretX "`n" AutoDate() "`n" tidy(),A_CaretX-50,A_CaretY-200) ;,tidy()
; SendMessage, 0x112, 0xF170, -1,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is
A:="Joy1", B:="Joy2", LTRIGGER:="JoyZ", RTRIGGER:="JoyZ"
JoyMultiplier:=1.00, JThresh:=25, InvertYAxis := false,
JThresUP:=50+JThresh,JThresLOW:=50-JThresh,YAxisMult:=InvertYAxis?-1:1



; SetTimer, WatchJoysticksub, 5  ; Label
; SetTimer, POV_Watch, 40   ; SetTimer, POVwatch, 50
; SetTimer, ZWATCH,60
; SetTimer, MouseWheelFunc, 40  ; Function MouseWheel
; Hotkey, KeyName [, Label, Options]
; sleep 2000
onexit,EXITSUB
return ;=========================Return======================
MouseWheelFunc(){
	Gosub MouseWheel
	; GetKeyState, RAxis, JoyR
	; GetKeyState, UAxis, JoyU     ; GetKeyState, ZAxis, JoyZ
	; if between(Raxis,0,30)
	;     Send {WheelUp}
	; if (RAxis<31) ;Mouse wheel
	; Send {WheelUp}
	; if (RAxis>69)
	; if(UAxis<20)
	; Send {WheelLeft}
	; if(UAxis>80)
	; Send {WheelRight}
	}
MouseWheel: ;RSTICK X-AXIS=JoyU 0-100, Y-AXIS=JoyR 0-100
	if between(GKS("JoyR"),0,30)
		Send {WheelUp}
	Else,	if between(GKS("JoyR"),70,100)
		Send {WheelDown}
	if between(GKS("JoyU"),0,20)
		Send {WheelLeft}
	Else,	if between(GKS("JoyU"),80,100)
		Send {WheelRight}
	return
POV_WatchFunc(){
	; POV_Arrows:
	; Joy_ArrowKeys()
	; return
	; GetKeyState, POV, JoyPOV
	gosub Pov_Watch
 }
POV_Watch:
; POV:=GKS("JoyPOV")
if(POV:=GKS("JoyPOV")>=0){
	if(POV=0||POV=4500||POV=31500)
	    Send {Up}
	if(POV=22500||POV=27000||POV=31500)
	    Send {Left}
	if(POV=13500||POV=18000||POV=22500)
	    Send {Down}
	if(POV=4500||POV=9000||POV=13500)
	    Send {Right}
	}
return

TTOFF:
; if(A_TimeSinceThisHotkey>=2000||A_TimeSincePriorHotkey>=2000||A_TimeIdle>=2000){
If(A_TimeIdle>1500){
settimer, ,off
VTT:="A_TimeSinceThisHotkey = " A_TimeSinceThisHotkey "`nA_TimeSincePriorHotkey = " A_TimeSincePriorHotkey "`nA_ThisHotkey = " A_ThisHotkey "`nA_PriorHotkey = " A_PriorHotkey "`nkey = " key "`nA_PriorKey = " A_PriorKey "`nA_TimeIdlePhysical = " A_TimeIdlePhysical "`nA_TimeIdle = " A_TimeIdle
; if(A_TimeSinceThisHotkey>=2000||A_TimeSincePriorHotkey>=2000||A_TimeIdle>=2000){
tooltip % VTT
sleep 2000
tooltip
}
Return
; !v::clip(v)
; ZWATCHfunc(){
; 	; Global
; 	static lastkey,Key
; 	joyz:=getkeystate("Joyz") ;,LastKey:=Key
; 	if JoyZ=50 ; No angle.
; 	Key=
; 	else if JoyZ between 0 and 49   ; LEFT TRIGGER
; 	Key=LCtrl
; 	else if JoyZ between 51 and 100 ; Right trigger
; 	Key=LAlt
; 	if (Key=lastkey)
; 	Return
; 	if Key
; 	{
; 	tooltip % send("{ " Key " Down}")
; 	Global Key
; 	}
; 	if LastKey
; 	{
; 	tooltip % send("{ " LastKey " Up}")
; 	settimer TTOFF,1000
; 	}
; 	LastKey:=Key
; 	}
ZWATCH:         ;L2 R2 LTRIGGER IS JOYZ 0-49, RTRIGGER IS JOYZ 51-100
joyz:=getkeystate("Joyz"),LastKey:=Key
if JoyZ=50 ; No angle.
Key=
else if JoyZ between 0 and 49   ; LEFT TRIGGERf
Key=LCtrl
else if JoyZ between 51 and 100 ; Right trigger
Key=LAlt
if (Key=LastKey)
Return
if LastKey
{
tooltip % send("{ " LastKey " Up}")
settimer TTOFF,1000
}
if Key
tooltip % send("{ " Key " Down}")
return
WatchJoystickFunc(){
	gosub WatchJoysticksub
	; global
	; GetKeyState, joyx, JoyX
	; GetKeyState, joyy, JoyY
	; DeltaX:=(joyx>JThresUP)?joyx-JThresUP:(joyx<JThresLOW)?joyx-JThresLOW:0
	; DeltaY:=(joyY>JThresUP)?joyY-JThresUP:(joyY<JThresLOW)?joyY-JThresLOW:0
	; if MouseNeedsToBeMoved:=DeltaY || DeltaX?true:false
	; MouseMove, DeltaX * JoyMultiplier, DeltaY * JoyMultiplier * YAxisMult, 0, R
	}
WatchJoysticksub:
GetKeyState, joyx, JoyX
GetKeyState, joyy, JoyY
DeltaX:=(joyx>JThresUP)?joyx-JThresUP:(joyx<JThresLOW)?joyx-JThresLOW:0
DeltaY:=(joyY>JThresUP)?joyY-JThresUP:(joyY<JThresLOW)?joyY-JThresLOW:0
if MouseNeedsToBeMoved:=DeltaY||DeltaX?true:false
MouseMove, DeltaX * JoyMultiplier, DeltaY * JoyMultiplier * YAxisMult, 0, R
return
CheckJoyStickFunc(){
	XAxis:=0,	YAxis:=0
	GetKeyState, XAxis, JoyX ;Get axis data
	GetKeyState, YAxis, JoyY
	; GetKeyState, RAxis, JoyR
	; GetKeyState, UAxis, JoyU     ; GetKeyState, ZAxis, JoyZ
	if(XAxis||YAxis){
		; if(RAxis<20) ;Mouse wheel
		;     Send {WheelUp}
		; if(RAxis>80)
		;     Send {WheelDown}
		; if(UAxis<20)
		;     Send {WheelLeft}
		; if(UAxis>80)
		; Send {WheelRight}
	 XAxis-=50,YAxis-=50  ;Mouse cursor
	 if(abs(XAxis)<10)
	     XAxis:=10*sign(XAxis)
	 if(abs(YAxis)<10)
	     YAxis:=10*sign(YAxis)
	 XAxis-=10*sign(XAxis)
	 YAxis-=10*sign(YAxis)
	 XAxis:=0.1*abs(Round(XAxis))**1.5*sign(XAxis)
	 YAxis:=0.1*abs(Round(YAxis))**1.5*sign(YAxis)	 ;TODO:
	 MouseMove, XAxis,YAxis,0,R
	}}
#if
; Joy1:: ;A BUTTON
; SetMouseDelay, -1
; Click Left Down
; SetTimer, WaitForLeftUp, 10
; return
; #if !GKS("Joy5")
; Joy2:: ;B button
; ; If GKS("Joy5")
; ; Click Middle
; ; else
; SetMouseDelay, -1
; Click Right Down

; ; MouseClick, right,,, 1, 0, D  ; Hold down the right mouse .
; SetTimer, WaitForRightUp, 10
; return

#if
WaitForLeftUp:
if GetKeyState("Joy1")
    return  ; The  is still, down, so keep waiting.
SetTimer, WaitForLeftUp, off
SetMouseDelay, -1
Click Left Up
; MouseClick, left,,, 1, 0, U  ; Release the mouse .
return
WaitForRightUp:
if GetKeyState("Joy2")
    return  ; The  is still, down, so keep waiting.
SetTimer, WaitForRightUp, off
SetMouseDelay, -1
Click Right Up
; MouseClick, right,,, 1, 0, U  ; Release the mouse .
return
WaitForMiddleUp:
if GKS("Joy2")
    return
SetTimer, WaitForMiddleUp, off
SetMouseDelay, -1
; Click m Down
MouseClick, middle,,, 1, 0, U
return
; #if GKS("Joy5")
; Joy2:: ;B button
; SetMouseDelay, -1
; MouseClick, middle,,, 1, 0, D  ; Hold down the right mouse .
; ; Click m Down
; SetTimer, WaitForMiddleUp, 10
; return
sign(xo){
	return xo < 0 ? -1 : 1
	}
S(var){
	Send,% var
	return var
	}

reload:
; send {WheelDown Up}
; send {WheelUp Up}
; Send {Alt Up}
; send {Ctrl Up}
; taskbar("Tidy Sidebar",4)
reload
return
; Joy10::
exitsub:
; taskbar("Tidy Sidebar",4)
; send {WheelDown Up}
; send {WheelUp Up}
; Send {Alt Up}
; send {Ctrl Up}
exitapp

return
; t("A_TimeSinceThisHotkey = " A_TimeSinceThisHotkey "`nA_TimeSincePriorHotkey = " A_TimeSincePriorHotkey "`nA_PriorKey = " A_PriorKey "`nA_TimeIdlePhysical = " A_TimeIdlePhysical "`nA_TimeIdle = " A_TimeIdle "`nA_ThisHotkey = " A_ThisHotkey "`n",,,2000)

; t("joyx=" joyx " joyy=" joyy "`ndeltax=" deltax "deltay=" deltay "`nNewDeltaX" NewDeltaX "`nNewDeltay" Deltay,,,,1000)
