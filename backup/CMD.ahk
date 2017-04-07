
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CMD(win="A"){
    WinGet pid, PID, %win%
    ; Get WMI service object.
    wmi := ComObjGet("winmgmts:")
    ; Run query to retrieve matching process(es).
    queryEnum := wmi.ExecQuery(""
        . "Select * from Win32_Process where ProcessId=" . pid)
        ._NewEnum()
    ; Get first matching process.
    if queryEnum[process]
        return process.commandline
    else
return false
    ; Free all global objects (not necessary when using local vars).
    wmi := queryEnum := process := ""
}