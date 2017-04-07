#NoEnv
#Warn
#NoTrayIcon
; #SingleInstance force
; Menu, Tray, Icon, E:\Pictures\Icons\Black\Folder Searches.ico
SetWorkingDir %A_ScriptDir%
; #Include WatchFolder.ahk
SetBatchLines, -1
; ----------------------------------------------------------------------------------------------------------
Gui, Margin, 15,15
Gui, Add, Text, , Watch Folder:
Gui, Add, Edit, xm y+3 w730 vWatchedFolder, C:\Users\Brett\Downloads
Gui, Add, Button, x+m yp w50 hp +Default vSelect gSelectFolder, ...
Gui, Add, Text, xm y+5, Watch Changes:
Gui, Add, Checkbox, xm y+3 vSubTree Checked, In Sub-Tree
Gui, Add, Checkbox, x+5 yp vFiles Checked, Files
Gui, Add, Checkbox, x+5 yp vFolders Checked, Folders

Gui, Add, Checkbox, x+5 yp vAttr ,Attributes
Gui, Add, Checkbox, x+5 yp vSize , Size
Gui, Add, Checkbox, x+5 yp vSecurity , Security

Gui, Add, Checkbox, x+5 yp vWrite , Last Write
Gui, Add, Checkbox, x+5 yp vAccess Checked, Last Access
Gui, Add, Checkbox, x+5 yp vCreation Checked, Creation

Gui, Add, ListView, xm w800 r15 vLV, TickCount|Action|Folder|Name|OldName|IsDir|%A_Space%
Gui, Add, Button, xm w100 gStartStop vAction , Start
Gui, Add, Button, x+m yp wp gPauseResume vPause +Disabled, Pause
Gui, Add, Button, x+m yp wp gCLear, Clear
Gui, Show, AutoSize, Watch Folder
GuiControl, Focus, Select
; GuiControl, +Redraw, LV
gosub startstop
Return
; ----------------------------------------------------------------------------------------------------------------------------------
GuiClose:
ExitApp
; ----------------------------------------------------------------------------------------------------------------------------------
Clear:
   LV_Delete()
Return
; ----------------------------------------------------------------------------------------------------------------------------------
PauseResume:
   GuiControlGet, Caption, , Pause
   If (Caption = "Pause") {
      WatchFolder("**PAUSE", True)
      GuiControl, Disable, Action
      GuiControl, , Pause, Resume
   }
   ELse {
      WatchFolder("**PAUSE", False)
      GuiControl, Enable, Action
      GuiControl, , Pause, Pause
   }
Return
; ----------------------------------------------------------------------------------------------------------------------------------
StartStop:
   Gui, +resize +OwnDialogs
   Gui, Submit, NoHide
   If !InStr(FileExist(WatchedFolder), "D") {
      MsgBox, 0, Error, "%WatchedFolder%" isn't a valid folder name!
      Return
   }
   GuiControlGet, Caption, , Action
   If (Caption = "Start") {
      Watch := 0
      Watch |= Files ? 1 : 0
      Watch |= Folders ? 2 : 0
      Watch |= Attr ? 4 : 0
      Watch |= Size ? 8 : 0
      Watch |= Write ? 16 : 0
      Watch |= Access ? 32 : 0
      Watch |= Creation ? 64 : 0
      Watch |= Security ? 256 : 0
      If (Watch = 0) {
         GuiControl, , Files, 1
         GuiControl, , Folders, 1
         Watch := 3
      }
      If !WatchFolder(WatchedFolder, "MyUserFunc", SubTree, Watch) {
         MsgBox, 0, Error, Call of WatchFolder() failed!
         Return
      }
      GuiControl, , Action, Stop
      GuiControl, Disable, Select
      GuiControl, Enable, Pause
   }
   Else {
      WatchFolder(WatchedFolder, "**DEL")
      GuiControl, , Action, Start
      GuiControl, Enable, Select
      GuiControl, Disable, Pause
   }
Return
; ----------------------------------------------------------------------------------------------------------------------------------
SelectFolder:
   FileSelectFolder, WatchedFolder
   If !(ErrorLevel) {
      GuiControl, +cDefault, WatchedFolder
      GuiControl, , WatchedFolder, %WatchedFolder%
      GuiControl, Enable, Action
   }
Return
; ----------------------------------------------------------------------------------------------------------------------------------
MyUserFunc(Folder, Changes) {
   Static Actions := ["1 (added)", "2 (removed)", "3 (modified)", "4 (renamed)"]
   TickCount := A_TickCount
   GuiControl, -ReDraw, LV
   For Each, Change In Changes
{

Name:=StrReplace(Change.Name,Folder "\")
; NewDir:=StrReplace(Change.Name,Name)
OldName:=StrReplace(Change.OldName,Folder "\")

; TickCount|Action|Folder|Name|OldName|IsDir|%A_Space%
      LV_Modify(LV_Add("", TickCount, Actions[Change.Action],Folder , Name,  OldName,Change.IsDir, ""), "Vis")
}
   Loop, % LV_GetCount("Columns")
      LV_ModifyCol(A_Index, "AutoHdr")
   GuiControl, +Redraw, LV
; gui, +resize
}
