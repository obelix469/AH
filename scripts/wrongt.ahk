#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
t(VAR="",Delay=-8000,x="",y="",Tnum=1,Mode="Screen",store=""){
CoordMode,tooltip,% Mode
static This,LTip, tool
if var!=""
This[(Tnum)]:={"Var":var,"Delay":delay,"Tnum":Tnum,"Adj":(a_now+(abs(delay))}
; to(strobj(This[Tnum],2200,700,12))
if var=LTIP
return ltip
(var="OFF")?(tool:=(tool="OFF"?"":"OFF")):
if winactive("Fallout: Tactics (TM)") OR (tool="OFF")
return to("",,Tnum)
RemoveToolFunc:=func("to").bind("",x,y,tnum)
; (a_thislabel!="onclipboardchange"?(LTip:=t,to(a_thislabel "`n" v(ltip,tf:=a_thisfunc),2200,150,5)):"")
((t:=trim(SubStr(isobject(var)?strobj(var):var,1,1000),":`n`r`t "))?((store=""?ltip:=t:""),O("LTIP",ltip),ST(RemoveToolFunc,delay)):""),to(t,x,y,Tnum)
return LTip
}to(Text="",x="",y="",Tnum=""){
ToolTip,% Text,% X,% Y,% Tnum
}
