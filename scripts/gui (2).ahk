#NoEnv
#InstallKeybdHook
#InstallmouseHook
#SingleInstance force
#Persistent
SetBatchLines, -1
listlines off
DetectHiddenWindows, on
settitlematchmode, 2
SendMode, Input
#INCLUDE E:\AH\Include.ahk
hWnd := Winactive("Egal")
Gui +LastFound
Gui mygui:+hwndGH
hWnd := WinExist("A")
gui, show
; Gui +LastFound  ; Avoids the need to specify WinTitle below.
; hWnd := WinExist("A")
; Gui +HwndGH
; Gui, %GuiHwnd%:Default
GUIv:="A_DefaultGui,A_DefaultListView,A_DefaultTreeView,A_Gui,A_GuiEvent,A_GuiControl,A_GuiControlEvent,A_GuiHeight,A_GuiWidth,A_GuiX,A_GuiY",t:=""
for k,v in strsplit(guiv,",")
t.=v " = " (%v%) "`n"
t(t)
; st("timer1",(tog:=(tog=200?-200:200)))
return
~#c::reload
GuiClose:
esc::exitapp