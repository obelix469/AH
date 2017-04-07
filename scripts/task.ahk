#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;   Example: Temporarily remove the active window from the taskbar by using COM.
;   Methods in ITaskbarList's VTable:
;     IUnknown:
;       0 QueryInterface  -- use ComObjQuery instead
;       1 AddRef          -- use ObjAddRef instead
;       2 Release         -- use ObjRelease instead
;     ITaskbarList:
;       3 HrInit
;       4 AddTab
;       5 DeleteTab
;       6 ActivateTab
;       7 SetActiveAlt
IID_ITaskbarList  := "{56FDF342-FD6D-11d0-958A-006097C9A090}"
CLSID_TaskbarList := "{56FDF344-FD6D-11d0-958A-006097C9A090}"
; Create the TaskbarList object and store its address in tbl.
tbl:=ComObjCreate(CLSID_TaskbarList, IID_ITaskbarList)
activeHwnd := WinExist("A")
DllCall(vtable(tbl,3),"ptr",tbl)                     ; tbl.HrInit()
DllCall(vtable(tbl,5),"ptr",tbl,"ptr", activeHwnd)  ; tbl.DeleteTab(activeHwnd)
Sleep 3000
DllCall(vtable(tbl,4),"ptr",tbl,"ptr", activeHwnd)  ; tbl.AddTab(activeHwnd)
; Non-dispatch objects must always be manually freed.
ObjRelease(tbl)

vtable(ptr, n) {
    ; NumGet(ptr+0) returns the address of the object's virtual function
    ; table (vtable for short). The remainder of the expression retrieves
    ; the address of the nth function's address from the vtable.
    return NumGet(NumGet(ptr+0), n*A_PtrSize)
}