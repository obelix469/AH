#IfWinExist,
; #a::t((A_PriorHotkey=A_ThisHotkey)?clip(clips(),true):clip(chosen,true))
; #d::t(chosen:=clips())
; #s::t(clips("ALL"))
#v::clip(t()) ;sendit(t(),1)
#b::clip(ClipChanged("LastPath"),1)
#g::clip(ClipChanged("LCLIP"),1)
#h::clip(ClipChanged("Iteminfo"),1)
#t::SENDINPUT % clipboard
!SC029::DSwitch()

return
; #a::exit()
#c::kwait(),(A_TimesincethisHotkey>1000)?exitapp("full",0):reload()
#x::pause
return
Joy10::
#z::
runclose("joymouse.ahk"),exit() ;Right STICK CLICK
Joy5::GKS("Joy7")?DSwitch():(Keydown("alt"),send("{Browser_Back}")) ;LB Select
Joy6::Keydown("ctrl"),send("{Browser_Forward}")  				; RB      
Joy9::soundtoggle()         						; LEFT STICK CLICK      down up
Joy3::Space           						
Joy7::kwait(),A_TimesincethisHotkey>1000?"":t(send("{ESC}"))	; Select
Joy8::GKS("JOY7")?(winflip(),exit()):kwait(),(A_TimesincethisHotkey>1000?exitapp("full",0):send("{enter}"))
#If !WinActive("ahk_class PX_WINDOW_CLASS")
^SC029::winflip()
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
return
#ifwinactive Calculator
~delete::presses>0?(presses+=1,exit()):presses:=1,ST("KeyWinC")
KeyWinC:
ST("KeyWinC",-250),(presses>1?send("^+{d}"):),presses:=0
return
#ifwinactive ahk_class MediaPlayerClassicW
Joy4:: send d ;Y
#If winactive("ahk_exe chrome.exe")
!a::TIDY()
#ifwinexist ;====================
return
#if winactive("ahk_class Dragon Age") && !PS(,,950,1045,970,1070) && !PS(,,170,905,175,915,0xF2F4E9,10)
1::
2::send("LBUTTON",35),exit() ; else,send(strreplace((a_thishotkey),"*"),35)
#IfWinActive, DUELYST
Enter::mm(.80*win().width, .80*win().height,"c")
#if winactive("ahk_class Dragon Age: Inquisition")
SC029::8
~r::send("y",35) ; r::send("y",20),sleep(150),send("r",35)
XButton1::f
XButton2::v
#ifwinexist,