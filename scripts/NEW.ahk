#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#c::reload
#v::pause
#z::joy()
Joy10::joy()    ; JOYMOUSE OPEN/CLOSE
Joy5::Keydown("alt"),send("{Browser_Back}")       ; LB
Joy6::Keydown("ctrl"),send("{Browser_Forward}")   ; RB      
Joy9::soundtoggle()            ; LEFT STICK CLICK     
Joy3::send("{Space}")                           ; X
Joy7::                                      ; Select
keywait %a_thishotkey%
(A_TimesincethisHotkey > 1000)? st("timer"):send("{ESC}")
return
Joy8::                                      ; Start
keywait %a_thishotkey%
tt(biv())
if (A_TimesincethisHotkey > 1000 and A_TimesincethisHotkey < 2000)
send("^v")
else, if (A_TimesincethisHotkey > 2000)
send("^z")
else,send("{enter}")                   
return

#If !WinActive("ahk_class PX_WINDOW_CLASS") and !Winactive("ahk_class MauiFrame")
:O:ret::
send("reticule469")
; :O:Ret::Reticule469
:O:lic::licorice8
:O:vent::ventricle469
:O:Vent::Ventricle469
:O:pass::Klavius123
:O:ob::obelix469@gmail.com
:O:bert::bertram.arnold@yahoo.com
:O:ids::idspispopd469
return

#if winactive("ahk_class PX_WINDOW_CLASS")
^f::^h
#If winactive("ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe")
!a::TIDY()
#If winactive("ahk_class MozillaWindowClass ahk_exe firefox.exe")
!a::^b
#ifwinexist ;====================