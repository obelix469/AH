#If
#v::clip(VTT?VTT:t())
!SC029::DSwitch()
^SC029::winflip()
; ^#Esc::Exitapp("full",0)


; #if RT_DOWN&&!GKS("Joy7")
#if GKS("JoyZ")<49&&!GKS("Joy7")
; &&winactive("ahk_exe chrome.exe"))
Joy3::Tab
Joy4::
If winactive("ahk_group browser")||Winactive("Ahk_exe sublime_Text.exe")
send("^w")
else, if WinExist("A")
WinClose
return
^F4::
#If winactive(" - YouTube - ahk_class Chrome_WidgetWin_1")&&!GKS("Joy7")&&(a_cursor!="Ibeam")
Joy3::
If t(Kwait())<200
t(send("K") "`n" (A_CaretX?"A_Caretx = " A_Caretx "`n":"") "A_Cursor = " A_Cursor)
Return
Joy4::
If t(kwait())<200
send("c{BackSpace}"),t((A_CaretX?"A_Caretx = " A_Caretx "`n":"") "A_Cursor = " A_Cursor)
Return

#if GKS("Joy7")&&winactive("Ahk_exe sublime_Text.exe")
Joy3::Send("^{End}")
Joy4::Send("^{Home}")

; #If GKS("JoyZ")=50

#if GKS("JoyPOV")=-1
Joy8::
if between(GKS("JoyZ"),0,49)
	Send("{F5}"),exit()
If GKS("JOY7")
	winflip(),exit()
PoV_Pressed:=False,KW:=Kwait() ; if KW<200&&(KW-A_TimeIdle)<20
If(KW<200&&key=""&&GKS("JoyPOV")=-1)
	send("{Enter}"),t(hk(),,,,-1000)
Else, if(KW>1200&&!PoV_Pressed)
	Exitapp("full",0)
return

#If
Joy5::GKS("Joy7")?DSwitch():((W:=Keydown("Shift")),(NW:=Kwait()+W)<250?t(NW " " send("{Browser_Back}")):"")	; L
Joy6::(JoyDis:=Kwait())<110?send("{Browser_Forward}"):JoyDis>200?send("{tab}	"):"" ; RB

Joy7::Kwait()<200?t(send("{ESC}")):"" ;Select

Joy9::soundtoggle(),t(A_KeyDelay)	; LEFT STICK CLICK down up
#c::kwait()>900?Exitapp("full",0):reload()
^#x::pause
Joy10:: ; Right STICK CLIC
If GKS("Joy7")
Send("!q"),exit()
#z:: ; LWin & z::
; E:\AH\joymouse.ahk - AutoHotkey v1.1.24.05
; ahk_class AutoHotkey
; ahk_exe AutoHotkeyU64_UIA.exe
Tidy(),t("hi"),exit()
DetectHiddenWindows, On
if WinExist("E:\AH\joymouse.ahk ahk_class AutoHotkey")
t("exists"),close(),ST("POV_Watch","off"),ST("MouseWheel","off"),ST("Joy_Trigger_Watch","off")
else,{
ST("Joy_Trigger_Watch",60),ST("MouseWheel",50),ST("POV_Watch",25)
Tidy(),t("hi")
Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\joymouse.ahk"
; Run E:\AH\joymouse.ahk 64 UIA.lnk"

}DetectHiddenWindows, OFF
Exit() ;Right STICK CLICK
return

#IfWinExist,
WatchJoystickSub:
GetKeyState, joyx, JoyX
GetKeyState, joyy, JoyY
DeltaX:=(joyx>JThresUP)?joyx-JThresUP:(joyx<JThresLOW)?joyx-JThresLOW:0
DeltaY:=(joyY>JThresUP)?joyY-JThresUP:(joyY<JThresLOW)?joyY-JThresLOW:0
if MouseNeedsToBeMoved:=DeltaY||DeltaX?true:false
MouseMove, DeltaX * JoyMultiplier, DeltaY * JoyMultiplier * YAxisMult, 0, R
return

Joy1:: ;A BUTTON
SetMouseDelay, -1
Click Left Down
SetTimer, WaitForLeftUp, 10
return
#if
Joy2:: ;B button
If GKS("Joy5")&&Send("{MButton}") ; If between(GKS("JoyZ"),0,40)&&Send("{MButton}")
return
Click Right Down ; MouseClick, right,,, 1, 0, D
SetTimer, WaitForRightUp, 10
Return
Joy_Trigger_Watch: ; L2 R2 Triggers
	LastKey:=Key
	If (JoyZ_Down:=getkeystate("JoyZ"))=50
		Key:=""
	Else,	If RT_Down:=between(GKS("JoyZ"),0,49) ; IS JOYZ 0-49
	Key=LCtrl
	Else,	If LT_Down:=between(GKS("JoyZ"),51,100) ; LTRIGGER IS JOYZ 0-49
	Key=LAlt
	If (Key=LastKey)
		Return
	If LastKey
	 send("{ " LastKey " Up}")
	If Key
			t(Joyz_DOWN " " send("{ " Key " Down}"))
	Return
#If (JoyZ_Down=50)
Joy3::GKS("Joy7")?send("{End}"):(Kwait()<200?send("{Space}"):"")  ; X
Joy4::GKS("Joy7")?send("{Home}"):(Kwait()<200?send("{BackSpace}"):"")  ; Y Button


#if
POV_Watch:
	If(POV:=GKS("JoyPOV"))>=0{
	PoV_Pressed:=True
	If(POV=0||POV=4500||POV=31500)
	Send(POVADD "{Up}")
	If(POV=22500||POV=27000||POV=31500)
		If GKS("Joy8")
			SendInput("#{Left}"),Sleep(200)
		Else,	t(	Send(POVADD "{Left}"),,,,2000)
	If(POV=13500||POV=18000||POV=22500)
		If GKS("Joy8")
			WS("Bottom"),Sleep(200) ; WinSet, Bottom,,% Win().title
		Else,	Send(POVADD "{Down}")
	If(POV=4500||POV=9000||POV=13500)
		If GKS("Joy8")&&winactive("ahk_group browser")
		 send("!+d"),sleep(200)	; send("{SC029}") SendInput("#{Right}"),Sleep(200)
		Else,Send(POVADD "{Right}")
	}Return

; send("{F6}!{enter}") send("!d"),send("!{enter}")send("!d!{enter}")
MouseWheel: ; RSTICK X-AXIS=JoyU 0-100, Y-AXIS=JoyR 0-100
	If between(GKS("JoyR"),0,30)
	Send(MWadd "{WheelUp}")
	Else	If between(GKS("JoyR"),70,100)
	Send(MWadd "{WheelDown}")
	If between(GKS("JoyU"),0,20)
	Send(MWadd "{WheelLeft}")
	Else	If between(GKS("JoyU"),80,100)
	Send(MWadd "{WheelRight}")
	Return

WaitForLeftUp:
	if GetKeyState("Joy1")
		return  ; The  is still, down, so keep waiting.
	SetTimer, WaitForLeftUp, off
	Click Left Up
	return
WaitForRightUp:
	if GetKeyState("Joy2")
		return  ; The  is still, down, so keep waiting.
	SetTimer, WaitForRightUp, off
	Click Right Up
	return
WordTimer:
	If !WinActive("WordPad")
	Return
	; t(HK("A_LineNumber =" A_LineNumber) "`n" q("End")),q() ;,st("",5000)
	t(HK("A_LineNumber =" A_LineNumber) "`n" ) ;,st("",5000)
	; else ST("",1000)
	Return

#If winactive("ahk_group browser")
; #If winactive("Ahk_Exe chrome.exe")
!a::TIDY() ;,t(taskbar("Tidy Sidebar",5))
#IfWinActive ahk_class ConsoleWindowClass
^C::send !{Space}ek
^v::send !{Space}ep
#ifwinactive ahk_class MediaPlayerClassicW
Joy4::
If GKS("JOY7")
send !{L}  ; send d ;Y
Else send s ;Y
Return
#if
#IfWinExist, ahk_class iTunes
Media_Next::
Media_Play_Pause::
Media_Prev::
Media_Stop::
^Numpad0::
^Numpad1::
^Numpad2::
^Numpad3::
^Numpad4::
^Numpad5::
; ^Numpad6::
; ^Numpad7::
^NumpadAdd::
^NumpadSub::
ratesong()
Return
#ifwinactive Calculator
~delete::presses>0?(presses+=1,exit()):presses:=1,ST("KeyWinC")
KeyWinC:
ST("KeyWinC",-250),(presses>1?send("^+{d}"):),presses:=0
Return
#If
; +^v::
; IllegalFileChar=\\/:?"<>|*
; t(clip:=r(clipboard,"[" IllegalFileChar "]","."))
; clip(clip)
; Return
