#noenv
#SingleInstance force
SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\V.ico
SetFormat, Float, 03
SetKeyDelay, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0 ; Move the mouse instantly.
SetWinDelay, 1
SetControlDelay, 1
SetTitleMatchMode,2 ; SetBatchLines,-1
SendMode, Input
; pToken:=gdip_all() ; #include E:\AH\lib\Gdip_All.ahk
#INCLUDE E:\AH\lib\Classes.ahk
; #INCLUDE %A_ScriptDir%\inc\IncludeM.ahk
CSV_(),onexit("exitapp") ; ,q(),q("END")
#INCLUDE <Functions>
; #include E:\AH\lib\Misc Functions.ahk
; #include E:\AH\lib\Hotstring.ahk
; #INCLUDE <MiscFunctions>
cmode("All","Screen"),Strobj.indent:=" "
; Client.Y Mouse 20>
; between(20,44)

POVADD:=MWADD:=""
JoyMultiplier:=1.00,JThresh:=25,InvertYAxis:=false
JThresUP:=50+JThresh,JThresLOW:=50-JThresh,YAxisMult:=InvertYAxis?-1:1
"".base.__set:=func("Set_Obj"),"".base.__Get :=func("Get_Prop")
bc.allfuncs(),append(biv(),"BIV.txt","DEL")
GroupAdd, Browser, ahk_exe chrome.exe
GroupAdd, Browser, ahk_exe torch.exe
GroupAdd, Browser, ahk_class Chrome_WidgetWin_1
GroupAdd, Browser, ahk_exe chrome.exe
GroupAdd, Browser, ahk_class MozillaWindowClass
GroupAdd, Browser, ahk_exe firefox.exe

; CList:=t2:=T1:=-250, A.=AutoDate("Y"), st("Timer1",t1:=-t1)
if !Fileexist("env.txt")||elapsed(FileGetTime("ENV.txt"),"Hours")>3
append(sort(Runwaitone("Set")),"ENV.txt","DEL"),a.="ENV.txt " iteminfo("ENV.txt",3)
datecreated(".lnk",A_now,"Seconds")[""]

A.=FileMove("E:\Downloads\*.jpg-large","E:\JPG\*.JPG")
a.=Filemove("E:\Downloads\*.JPG", "E:\JPG ",1)
FileCopy, E:\Downloads\*.JPG, E:\Pictures\*.JPG
MyTaskbar("ThrottleStop",5),MGP(X,Y)

ST("Joy_Trigger_Watch",60),ST("WatchJoystickSub",5)
ST("MouseWheel",50),ST("POV_Watch",25)
ST("WordTimer",25)
ST("AutoClose",200)
tog(at1,-10,2000) ; ST("AutoTimer",tog(at1,-10,2000)),sleep(30)

if W:=win("E:\Downloads\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\")
WinSetTitle, % sr(W.title,"E:\Downloads\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\")

WatchFolder("E:\Downloads","WatchDownloads") ; WatchFolder("E:\Downloads","WFF")
OnClipboardChange("ClipChanged")

T((a_cursor?"a_cursor=" a_cursor "`n":"") a strobj([win(),FileGetTime("env.txt"),BIV("hotkey")]),1500,700,,-3000) ;,X+25,Y+50,,-4000)

RETURN ;============ * End of Auto * ================

	; run "C:\Program Files (x86)\ThrottleStop_840\ThrottleStop.exe"

	; Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\joymouse.ahk"

	; t([ttog("Tvar",23,34),tvar])
	; SetTimer, POV_Watch,% tog(POV_Watch_P,50,75)

	; MoveFiles("C:\Users\Brett\Documents\HTML\*.PDF","E:\PDF")
	; MoveFiles("C:\users\brett\videos\*.*","E:\Videos")
	; MoveFiles("C:\users\brett\documents","E:\documents")
	; a.=CopyFiles("E:\Downloads\*.JPG", "E:\JPG\")
	; FileCopy, E:\Downloads\*.MP4, E:\Videos

	; if winexist("ahk_exe ThrottleStop.exe")

	; if winactive("ahk_group browser"){
	; send("!d"),send("!{enter}") ; send("!d!{enter}") send("{F6}!{enter}")
	; Send {Esc}
	; MouseGetPos, X, Y
	; MouseClick, M, 75, 45,,0
	; MouseMove, X, Y, 0
	; run E:\AH\middle duplicate.ahk
	; }
#If
XButton2::ST("AutoTimer",tog(AT1))
AutoTimer:
t(strobj(MGP(,,,,,"Client")),mgp().x+25,MGP().Y+50,2,-1500)
RETURN
AutoClose:
if winactive("Sponsored session ahk_class #32770 ahk_exe TeamViewer.exe")
ControlClick, OK
RETURN
#INCLUDE %A_ScriptDir%\hotkeys.ahk
return ; run("C:\Windows\System32\taskmgr.exe")
#if ;============================================
#Hotstring EndChars -'"/\,.?!`n`t ;`t\{enter\}-: ; ()[]{}'"/\,.?!`n
#Hotstring C R O
#IfWinNotActive,ahk_exe sublime_text.exe
return

; windows login.live
; Obelix469@gmail.com
; idspispopd469
::gen::Generus1895!
::irs::Reticule469!
::ob::Obelix469@gmail.com
::lazz::lazjonsucks@yahoo.com`tidspispopd469
::laz::lazjonsucks@yahoo.com
::ret::reticule469
::Ret::Reticule469
::Vent::Ventricle469!
::vent::ventricle469
::lic::Licorice8
::Lic::Licorice8
::ids::idspispopd469
::lac::Lacivious1!
; Faustianburgler@gmail.com
; pass lac
; Gaming Youtube Account
Return
