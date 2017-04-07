#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Taskbar(Window="A",Opt=""){
;   Example: Temporarily remove the  window from the taskbar by using COM.
;   Methods in ITaskbarList's VTable:
; IUnknown:
;  0 QueryInterface  -- use ComObjQuery instead
;  1 AddRef     -- use ObjAddRef instead
;  2 Release    -- use ObjRelease instead
; ITaskbarList:
;  3 HrInit
;  4 AddTab
;  5 DeleteTab
;  6 ActivateTab
;  7 SetAlt
IID_ITaskbarList :="{56FDF342-FD6D-11d0-958A-006097C9A090}"
CLSID_TaskbarList:="{56FDF344-FD6D-11d0-958A-006097C9A090}"
; Create the TaskbarList object and store its address in tbl.
tbl:=ComObjCreate(CLSID_TaskbarList, IID_ITaskbarList)
static LastAction:=""
if !(Hwnd:=WinExist(Window))
return "error"

DllCall(vtable(tbl,3),"ptr",tbl) ; tbl.HrInit()
if (lastaction:=opt)
DllCall(vtable(tbl,&opt),"ptr",tbl,"ptr",Hwnd)
else,if (LastAction=5)
DllCall(vtable(tbl,4),"ptr",tbl,"ptr",Hwnd),LastAction:=4  ; tbl.AddTab(Hwnd)
else,if (LastAction=4)
DllCall(vtable(tbl,5),"ptr",tbl,"ptr",Hwnd),LastAction:=5  ; tbl.DeleteTab(Hwnd)
else
; Non-dispatch objects must always be manually freed.
ObjRelease(tbl)
return LastAction
}
