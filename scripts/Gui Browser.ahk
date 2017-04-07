#NoEnv 
#InstallKeybdHook
#InstallmouseHook
DetectHiddenWindows, on
listlines on
SendMode, Input
#INCLUDE E:\AH\functions.ahk
Gui Add, Edit, w930 r1 vURL, https://www.google.com/
Gui Add, Button, x+6 yp w44 Default, Go
Gui Add, ActiveX, xm w980 h640 vWB, Shell.Explorer
ComObjConnect(WB, WB_events)  ; Connect WB's events to the WB_events class object.
settimer ti, 500
Gui Show
; Continue on to load the initial page:

Gui Add, Edit, w930 r1 vURL, https://www.google.com/
Gui Add, Button, x+6 yp w44 Default, Go
Gui Add, ActiveX, xm w980 h640 vWB, Shell.Explorer
ComObjConnect(WB, WB_events) ;Connect WB'sevents to the WB_events class object.
Gui Show
return

ButtonGo:
Gui Submit, NoHide
WB.Navigate(URL)
return
Ti:
b:=biv("GUI")
tooltip hi
return

class WB_events
{
    NavigateComplete2(wb, NewURL)
    {
        GuiControl,, URL, %NewURL%  ; Update the URL edit control.
    }
}
return
Esc::
GuiClose:
gui,destroy
Exitapp

