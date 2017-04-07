#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
Win(win="A",text="",extitle="",extext="") {
; if RegExMatch(win,"[\dABCDEF]") and (win.length!=1)
; win=ahk_id %win%
WinGet, count, Count, %win%, %text%, %extitle%, %extext%
if  !Count
return errorlevel
WinGetTitle, t, %win%, %text%, %extitle%, %extext%
WinGetPos, x, y, width, h, %win%, %text%, %extitle%, %extext%
WinGetText, txt, %win%, %text%, %extitle%, %extext%
WinGetClass, class, %win%, %text%, %extitle%, %extext%
res:={base:w,"Win":"Title":t,"Class":class,"Text":trim(txt,":`n`r`t ")}
res.insert("CMD",ftrim(cmd(win)))
res.insert("ID_Hwnd",WinExist(win))

For attr, val in WinGetAttr(win,text,extitle,extext,["PID","ProcessName"])
IF (val)
res.Insert(attr,val)
; for k,v in ["Title","Class","ProcessName","CMD","ID_Hwnd","PID","Text","X","Y","Height","Width","Style","ExStyle"]
; swlist.=ftrim(v (k>7 and k<12?"=":" : ") Res[v] (k>7 and k<11?" , ":"`n"))
; wlist:={wlist:wlist}
; res.wlist:=trim(swlist,":`n`r`t ")
return res
}

WinGetAttr(win="A",text="",extitle="",extext="",attri="un") {
	static Def_array:=["PID","ProcessName","MinMax","Transparent","TransColor","Style","ExStyle"]
    res :=  {base:w}
    if (attri="un")
array:=Def_array
else,array:=attri
    
    For each, attr in array
    {
        WinGet, out, %attr%, %win%, %text%, %extitle%, %extext%
        res.Insert(attr,out)
    }
    return  res
}


;     wlist :=    Object()
;     WinGet, id, List, %win%, %text%, %extitle%, %extext%
;     Loop %  id
;         wlist.Insert(id%A_Index%)
;     res :=  Object()
; For each, hWnd in wlist
; {
; WinGetTitle, t, ahk_id %hWnd%, %text%, %extitle%, %extext%
; WinGetPos, x, y, w, h, ahk_id %hWnd%, %text%, %extitle%, %extext%
; WinGetText, txt, ahk_id %hWnd%, %text%, %extitle%, %extext%
; WinGetClass, class, ahk_id %hWnd%, %text%, %extitle%, %extext%
; o :=  {Title:t, Width:w, Height:h, x:x, y:y, Text:txt, Class:class, hWnd:hWnd}
;     For attr, val in WinGetAttr(win,text,extitle,extext)
;     o.Insert(attr,val)
; res.Insert(o)
; }
;     return  res

