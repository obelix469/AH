#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; hwndChrome := WinExist("ahk_class Chrome_WidgetWin_1")
; AccChrome := Acc_ObjectFromWindow(WinExist("ahk_class Chrome_WidgetWin_1"))
; AccAddressBar := GetElementByName(Acc_ObjectFromWindow(WinExist("ahk_class Chrome_WidgetWin_1")), "Address and search bar")
; MsgBox % AccAddressBar.accValue(0)
AccAddressBar := GetElementByName(Acc_ObjectFromWindow(WinExist("ahk_class Chrome_WidgetWin_1")), "Address and search bar").accValue(0)
MsgBox % GetElementByName(Acc_ObjectFromWindow(WinExist("ahk_class Chrome_WidgetWin_1")), "Address and search bar").accValue(0)
GetElementByName(AccObj, name) {
DetectHiddenWindows, off
   if (AccObj.accName(0) = name)
      return AccObj
   for k, v in Acc_Children(AccObj)
      if IsObject(obj := GetElementByName(v, name))
         return obj
}