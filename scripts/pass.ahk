  myvar := "george"
  passit(myvar)
return

passit(whatvar){
  msgbox % GetOriginalVariableNameForSingleArgumentOfCurrentCall(A_ThisFunc)
}

GetOriginalVariableNameForSingleArgumentOfCurrentCall(callerFuncName)
  {
  lines := ListLines()
  pattern = O)%callerFuncName%\((.*?)\).*?%A_ThisFunc%\(.*?\)
  RegExMatch(lines, pattern, match)
  return match[1]
  }

; Originally written by Lexikos / Copy of ListGlobalVars http://www.autohotkey.com/board/topic/20925-listvars/#entry156570
; with modifications from here http://www.autohotkey.com/board/topic/58110-printing-listlines-into-a-file/#entry365156
; Tested/Modified for AHK Unicode 64bit v1.1.14.03
ListLines()
{
    static hwndEdit, pSFW, pSW, bkpSFW, bkpSW
    ListLines Off

    if !hwndEdit
    {
        dhw := A_DetectHiddenWindows
        DetectHiddenWindows, On
        Process, Exist
        ControlGet, hwndEdit, Hwnd,, Edit1, ahk_class AutoHotkey ahk_pid %ErrorLevel%
        DetectHiddenWindows, %dhw%

        astr := A_IsUnicode ? "astr":"str"
        ptr := A_PtrSize=8 ? "ptr":"uint"
        hmod := DllCall("GetModuleHandle", "str", "user32.dll")
        pSFW := DllCall("GetProcAddress", ptr, hmod, astr, "SetForegroundWindow")
        pSW := DllCall("GetProcAddress", ptr, hmod, astr, "ShowWindow")
        DllCall("VirtualProtect", ptr, pSFW, ptr, 8, "uint", 0x40, "uint*", 0)
        DllCall("VirtualProtect", ptr, pSW, ptr, 8, "uint", 0x40, "uint*", 0)
        bkpSFW := NumGet(pSFW+0, 0, "int64")
        bkpSW := NumGet(pSW+0, 0, "int64")
    }

    if (A_PtrSize=8) {
        NumPut(0x0000C300000001B8, pSFW+0, 0, "int64")  ; return TRUE
        NumPut(0x0000C300000001B8, pSW+0, 0, "int64")   ; return TRUE
    } else {
        NumPut(0x0004C200000001B8, pSFW+0, 0, "int64")  ; return TRUE
        NumPut(0x0008C200000001B8, pSW+0, 0, "int64")   ; return TRUE
    }

    ListLines

    NumPut(bkpSFW, pSFW+0, 0, "int64")
    NumPut(bkpSW, pSW+0, 0, "int64")

    ; Retrieve ListLines text and strip out some unnecessary stuff:
    ControlGetText, ListLinesText,, ahk_id %hwndEdit%
    RegExMatch(ListLinesText, ".*`r`n`r`n\K[\s\S]*(?=`r`n`r`n.*$)", ListLinesText)
    StringReplace, ListLinesText, ListLinesText, `r`n, `n, All

    ListLines On
    return ListLinesText  ; This line appears in ListLines if we're called more than once.
}