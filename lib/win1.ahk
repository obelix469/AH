#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
Win1(win="A",text="",extitle="",extext="") {
    WinGet, count, Count, %win%, %text%, %extitle%, %extext%
    if  !Count
return "The window parameter is invalid"
    if  (Count=1)
    {
        WinGetTitle, t, %win%, %text%, %extitle%, %extext%
        WinGetPos, x, y, w, h, %win%, %text%, %extitle%, %extext%
        WinGetText, txt, %win%, %text%, %extitle%, %extext%
        WinGetClass, class, %win%, %text%, %extitle%, %extext%
        res :=  {Title:t,Width:w,Height:h,x:x,y:y,Text:txt,Class:class,hWnd:WinExist(win)}
        For attr, val in WinGetAttr(win,text,extitle,extext)
        res.Insert(attr,val)
        return   res
    }
    wlist :=    Object()
    WinGet, id, List, %win%, %text%, %extitle%, %extext%
    Loop %  id
        wlist.Insert(id%A_Index%)
    res :=  Object()
    For each, hWnd in wlist
    {
        WinGetTitle, t, ahk_id %hWnd%, %text%, %extitle%, %extext%
        WinGetPos, x, y, w, h, ahk_id %hWnd%, %text%, %extitle%, %extext%
        WinGetText, txt, ahk_id %hWnd%, %text%, %extitle%, %extext%
        WinGetClass, class, ahk_id %hWnd%, %text%, %extitle%, %extext%
        o :=  {Title:t, Width:w, Height:h, x:x, y:y, Text:txt, Class:class, hWnd:hWnd}
        For attr, val in WinGetAttr(win,text,extitle,extext)
        o.Insert(attr,val)
        res.Insert(o)
    }
    return  res
}

WinGetAttr(win="A",text="",extitle="",extext="") {
; helper function for Win()
    res :=  Object()
    For each, attr in ["PID","ProcessName","MinMax","Transparent","TransColor","Style","ExStyle"]
    {
        WinGet, out, %attr%, %win%, %text%, %extitle%, %extext%
        res.Insert(attr,out)
    }
    return  res
}