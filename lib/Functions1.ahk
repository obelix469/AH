ST(F,p="",priority=""){
static O:={},LASTP:=-150
O[F]:=P:=(P="") and (lastp:=O[F])?-lastp:P
if !isobject(F) and isfunc(F)
F:=func(F)
SetTimer, % F, % p,% priority
}stats(timer="",v=""){
global t2
for k,v in ["Screen","Window","Client"]
sep:=(v="Client"?"     ":v="Screen"?"    ":" "),cmode("all",v),n:=mgp(),mm.=v " : " sep N.X ", " N.Y (A_CaretX?" A_CaretX : " (A_CaretX):"")(A_CaretY?" A_CaretY  : " A_CaretY:"") "`n"
cmode("all","Screen"),to(instr(t2,"-")?"":win().list "`n" mm)
}
Get_Prop(byref K,P){
static failed,lastP,LastR
; if  regexmatch(LL:=Listlines(3,1),"[.]" P "[.](\w+)",m)
; lastP:=m1,m1:=%m1%?%m1%:m1,lastR:=%p%(k,m1)
; if (P=lastP) and (R:=lastR,lastP:=lastR:="")
; return R
if (P="length") OR (P="l")
return StrLen(K)
if (p="IsBIV")
return in(k,biv(,"R"))?(%k%):k
if (p="Odd")
return mod(k,2)
if (p="Even")
return mod(k,2)=0?k " is even":""
if (p="Lines")
return r(ltrim(k,"`n"),"`n",,cnt) or k?cnt+1:""
; if (p="Maxindex")
if (p="IsURL")
  Return RegExMatch(k, "^(?<Protocol>https?|ftp)://(?<Domain>(?:[\w-]+\.)+\w\w+)(?::(?<Port>\d+))?/?(?<Path>(?:[^:/?# ]*/?)+)(?:\?(?<Query>[^#]+)?)?(?:\#(?<Hash>.+)?)?$")
if (%p%) ;(p="failed")
return (%p%)
failed.=(LL?LL:"") "Get_Prop( " K "," P ")`n"
}
Set_Obj(ByRef Obj,k,v){
static set:=""""".base.__set " a_thisfunc
if (k="set")
return set
set.= "K " K ", V " V "`n"
if (Obj="") ; obj.base.Name:=m1, ;obj:=object(k,v)
Obj:={Base:Classlist},OBJ[K]:=V
}

Ctrllist(Window="A"){
WinGet, ControlList, ControlList,% window
w:=win()
for I,ControlNN in ss(ControlList,"`n"){
Controltxt:="",VarSetCapacity(Controltxt,200)
WM_GETTEXT:=0x0D,TxtLen:=SendMsg("WM_GETTEXT",100,Controltxt,ControlNN,"ahk_class " w.class)
ControlGet, Selected,list, Selected,% ControlNN
ControlGet, Focused, list, Focused,% ControlNN
ControlGet, Count, list,Count,% ControlNN
ControlGet, Count_Selected, list,Count Selected,,% ControlNN
ControlGet, Count_Focused, list,Count Focused,,% ControlNN
ControlGet, Count_Col, list,Count Col,% ControlNN
; Count,Col4,Count Selected, Count Focused, Count Col
; ControlGet, Visible, list, Visible,% ControlNN
; ControlGet, Focused, Focused,,% ControlNN
;== ListBox, ComboBox, DropDownList
ControlGet, Checked, Checked,,% ControlNN
ControlGet, Enabled, Enabled,,% ControlNN
ControlGet, Visible, Visible,,% ControlNN
ControlGet, Tab, Tab,,% ControlNN
ControlGet, Choice, Choice,,% ControlNN
Choice:=SubStr(Choice,1,30) ; LineCount,CurrentLine,CurrentCol,Line, N,Selected,Style,ExStyle,Hwnd
ControlGet, List, List,,% ControlNN
List:=SubStr(List,1,100)
SendMessage, 0x1304,,,% ControlNN ; 0x1304 is TCM_GETITEMCOUNT.
TabCount = %ErrorLevel%
SendMessage, 0x188, 0, 0,% ControlNN  ; 0x188 is LB_GETCURSEL (for a ListBox).
SendMessage, 0x147, 0, 0,% ControlNN ; 0x147 is CB_GETCURSEL (for a DropDownList or ComboBox).
ChoicePos = %ErrorLevel%  ; It will be -1 if there is no item selected.
ChoicePos += 1  ; Convert from 0-based to 1-based, i.e. so that the first item is known as 1, not 0.
ControlGet, CtrlHwnd, Hwnd,,% ControlNN
ControlO:={base:CLASSLIST,ControlNN:ControlNN,Controltxt:Controltxt,TabCount:TabCount,CtrlHwnd:CtrlHwnd,Choice:Choice,ChoicePos:ChoicePos}
if (choice)
t(strobj(controlO) "`n`n" list)
}}
MGP(ByRef X="",ByRef Y="",ByRef ID="",ByRef control="",Mode=0){
MouseGetPos,X,Y ; MouseGetPos,X,Y,ID,control,%Mode%
MouseGetPos,,,ID,control
RETURN {X:X,Y:Y,ID:ID,control:control,MODE:MODE,A_CaretX:A_CaretX,A_CaretY:A_CaretY}
}
t(VAR="",x="",y="",Tnum=1,Delay=4000,store=""){
static This:={},LTip ; sdelay:=delay//1000
if (var!="" AND Delay)
M:=MGP(),This[(Tnum)]:={"x":(x?x:m.x),"y":(y?y:m.y),"then":(a_now),"Delay":delay,"Tnum":Tnum,"Adj":(a_now+abs(delay//1000))}
else,if (store="RTT") AND !(this[tnum].adj>a_now)
return to("",x,y,Tnum),this.removekey(Tnum)
if var.base.haskey("txt")
v:=var.txt
else,if var.haskey("LIST")
v:=var.LIST
else,if isobject(var)
v:=strobj(var)
; var:=var.haskey("List")?Var.list:var.haskey("Text")?Var.text:isobject(var)?strobj(var):var
if (v:=trim(SubStr(var,1,1500),":`n`r`t "))!=""
to(v,x,y,Tnum),RTF:=func("t").bind("",x,y,tnum,delay,"RTT"),ST(RTF,(delay>0?"-":"") delay),(store=""?(ltip:=v):"")
return LTip
}
tt(Text="",x="",y="",Tnum="",DELAY=""){
ToolTip,% TEXT ,% X,% Y,% Tnum
}
to(Text="",x="",y="",Tnum="",DELAY=""){
if !x and !y
{
M:=MGP(),X:=X?X:M.X,X+=50,Y:=Y?Y:M.Y
if sr(text,"`n",,c) and (NY:=Y+(c+1)*16) ; 15 Y per line
(Y-=NY>1025?(NY-1025):"")
}
tt(TEXT,X,Y,Tnum,DELAY)
}

MSG(V){
if var.base.haskey("txt")
v:=var.txt
else,if var.haskey("LIST")
v:=var.LIST
else,if isobject(var)
v:=strobj(var)
; if v.base.haskey("txt")
; v:=v.txt
; if v.haskey("LIST")
; v:=v.LIST
; V:=IsObject(V)?STROBJ(V):V
try msgBox,3, ,% V
IfmsgBox, yes
return true
exit
}
ExitApp(ExitReason, ExitCode){
if (exitreason="full"){
run E:\AH\onexitapp.ahk
exitapp
}
return 0
}

AutoDate(){
w:=win() ; t(tt.=(w:=win()).list)
if w.class="#32770" and a_caretx and VarSetCapacity(Txt, 200) {
; and (w.title="Select a filename to save" or w.title="System Protection" or w.title="Save As"){
WM_GETTEXT:=0x0D,TxtLen:=SendMsg("WM_GETTEXT",100,Txt,"Edit1","ahk_class #32770")
; sendMessage,0x0D,100,&Txt,Edit1,ahk_class #32770
ControlFocus, Edit1, ahk_class #32770
if (w.title="System Protection")
Append:=C_Time:=now("H:mm tt M-dd-y")
; else,if (w.title="Select a filename to save")
; Append:=C_Time:=now("H.mm tt M-dd-y") " " w.processname
; else,if (w.title="Save As")
; Append:=C_Time:=now("H.mm tt M-dd-y") " " w.processname
else,Append:=C_Time:=now()  " " w.processname
append:=r(append,"[.]...$")
if !(Txt)
clip(Append,true)
else,if m(txt,"^RAIDMAX\..+$") ; else,if (txt="RAIDMAX.speccy")
clip(now() " " txt,true)
return tt:="`nText  = " Txt "`nNow = " C_Time
}}

; if (w.title="System Protection")
; Append:=C_Time:=now("H:mm tt M-dd-y") " " w.processname
; else,if (w.title="Select a filename to save")
; Append:=C_Time:=now("H.mm tt M-dd-y") " " w.processname
; else,if (w.title="Save As")
; Append:=C_Time:=now("H.mm tt M-dd-y") " " w.processname
; else, Append:=C_Time:=now("H.mm tt M-dd-y")  " " w.processname

; now(format="HH:mm:ss tt MM-dd-yyyy",date=""){
now(format="yyyy-MM-d_HH;mm tt",date=""){
; now(format="",date=""){
; FormatTime, OutputVar [, YYYYMMDDHH24MISS, Format]
FormatTime, Out , % date,% Format
return out
}
Asort(O,p*){
NO:=[]
for k,v in p
if O.haskey(v)
; return {(v):O[v]}
NO.push({(v):O[v]})
return strobj(NO)
}
sort(byref v,op=""){
sort, v, %op%
return v
}
vsort(v,op=""){
sort, v, %op%
return v
}
SS(str,delim="," ,omit="`r"){
return StrSplit(str, delim, omit)
}SR(In,SearchText,Replace="",Byref Count="", Limit=-1){
return StrReplace(In, SearchText, Replace,Count, Limit)
}
SSR(byref In,SearchText,Replace="",Byref Count="", Limit=-1){
In:=ret[1]:=ret[0]:=New:=StrReplace(In, SearchText, Replace,Count, Limit)
; In:=StrReplace(In, SearchText, Replace,Count, Limit)
ret["Count"]:=Count
ret.limit:=limit
ret.Search:=SearchText
ret.Replace:=Replace
return ret
}
R(In,RegEx="",Replace="",Byref Count="",Limit=-1,Pos = 1){
return RegExReplace(In,RegEx,replace,Count,Limit,Pos)
}
M(Hay,Needle,byref Match="",Pos=1){
return FoundPos:=RegExMatch(Hay, Needle ,Match, Pos)
}

Run(Target, WorkingDir = "", Mode = "") {
 Run, %Target%, %WorkingDir%, %Mode%, v
 Return, v
}Runwait(Target, WorkingDir = "", Mode = "") {
 Runwait, %Target%, %WorkingDir%, %Mode%, v
 Return, v
}
FileAppend(t="", Filename="FOOBAR.txt",extra=""){
FileAppend, % t:=r(t,"(`r?`n){3,}","`r`n`r`n"), % Filename
return !errorlevel?READ(FILENAME):errorlevel
}
Append(str,filename,AT="",readb="Y"){
if !AT
delete(filename,AT)
else,if AT=DEL
FileDelete,% FileName
return fileappend(str,filename)
}Delete(filename,AT="D"){
if !FileExist(filename)
return errorlevel
if AT=D
FileDelete(FileName)
else,FileRecycle(filename)
}FileRecycle(FileName){
FileRecycle,% FileName
}FileDelete(FileName){
FileDelete,% FileName
}FileMove(Source,Dest,Flag=""){
FileMove,% Source,% Dest,% Flag
return Source " -> " Dest " " ErrorLevel?errorlevel:"Success"
}FileCopy(Source,Dest,Flag=""){
FileCopy,% Source,% Dest,% Flag
return Source " -> " Dest " " ErrorLevel?errorlevel:"Success"
}

CMD(win="A"){
WinGet pid, PID, %win%
queryEnum:=ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where ProcessId=" . pid)._NewEnum()
if queryEnum[process] ; Get first matching process.
return process.commandline
}iteminfo(_Path=""){ ; E:\AH\scripts\backup\GetActiveBrowserURL.ahk
P:=splitpath(_Path),Shell:=ComObjCreate("Shell.Application")
OFolder:=Shell.NameSpace(P.dir),FileName:=OFolder.ParseName(P.name)
Loop 283
    if  propertyitem := OFolder.GetDetailsOf(FileName, A_Index)
        properties.=A_Index " " OFolder.GetDetailsOf(OFolder.Items, A_Index) ":`t " propertyitem "`n "
return FileName and OFolder and properties?_path "`n" properties:""
}
Explorer_GetSelection(hwnd="") {
   WinGet, process, processName, % "ahk_id" hwnd := hwnd? hwnd:WinExist("A")
   WinGetClass class, ahk_id %hwnd%
   if (process = "explorer.exe")
      if (class ~= "Progman|WorkerW") {
         ControlGet, files, List, Selected Col1, SysListView321, ahk_class %class%
         Loop, Parse, files, `n, `r
            ToReturn .= A_Desktop "\" A_LoopField "`n"
      }      else if (class ~= "(Cabinet|Explore)WClass") {
         for window in ComObjCreate("Shell.Application").Windows
            if (window.hwnd==hwnd)
               sel := window.Document.SelectedItems
         for item in sel
            ToReturn .= item.path "`n"
      } return Trim(ToReturn,"`n")
}

; DllCall("EnumWindows", Ptr,(EnumAddress:=RegisterCallback("EnumWindowsProc", "Fast")), Ptr, 0)
EnumWindowsProc(hwnd, lParam){
global Output
WinGetTitle, title, ahk_id %hwnd%
WinGetClass, class, ahk_id %hwnd%
    Output .=title? "HWND: " . hwnd . "`tTitle: " . title . "`tClass: " . class . "`n":""
return true  ; Tell EnumWindows() to continue until all windows have been enumerated.
}

Monitor(){
SysGet, MouseButtonCount, 43
SysGet, VirtualScreenWidth, 78
SysGet, VirtualScreenHeight, 79
SysGet, MonitorCount, MonitorCount
SysGet, MonitorPrimary, MonitorPrimary
a=Primary Monitor:`t%MonitorPrimary%`nMonitor Count:`t%MonitorCount%
Loop, % MonitorCount {
    SysGet, MonitorName, MonitorName, %A_Index%
    SysGet, Monitor, Monitor, %A_Index%
    SysGet, MonitorWorkArea, MonitorWorkArea, %A_Index%
a=%a%`n`n Monitor:`t#%A_Index%`nName:`t%MonitorName%`nLeft:`t%MonitorLeft% (%MonitorWorkAreaLeft% work)`nTop:`t%MonitorTop% (%MonitorWorkAreaTop% work)`nRight:`t%MonitorRight% (%MonitorWorkAreaRight% work)`nBottom:`t%MonitorBottom% (%MonitorWorkAreaBottom% work)
} return a
}

MO(Hay,Needle,Pos=1){
if !FPos:=RegExMatch(Hay,Needle:=R(Needle,"^((\w*)\))?","O$2)"),M,Pos)
return
O:={BASE:CLASSLIST,"Hay":Hay,"Needle":Needle,0:M.0},T:="RegEx:  " Hay " , " Needle " , " pos "  .FPOS:=" FPOS "`n[0] " M.0 "`n"
Loop % M.Count()
O[A_Index]:=M[A_Index],(M.Name[A_Index]?O[M.Name[A_Index]]:=M[A_Index]:""),T.="[" A_Index (M.Name[A_Index]=""?"":""""  M.Name[A_Index] """") "] " M[A_Index] "`n"
O.Spos:=Pos,O.pos:=O.FPos:=FPos,O.base.text:=T
return O
}
MAOBJ(Hay,Reg,array*){
for K,V in array
regexmatch(Hay,sr(reg,"V",V),M),r.=m
return r
}
MObj(Hay,N,byref Match="",Pos=1){
for k,v in N.2
regexmatch(Hay,N.1 v N.3,M,Pos),RetO.=m ; Hay,N.1 v N.3,%v%,Pos),retO[v]:=%v%
return RetO
}
OJ(p*){
for k,v in p
a.=isobject(v)?OJ(v*):k " : " v "`n"
return a
}
J(params*){
sep:="`n",Eq:=": "
for i,V in PARAMS
str.=isobject(v)?join(sep,V*):i Eq V . sep
return SubStr(str, 1, -StrLen(sep))
}
JOIN(sep="`n",params*){
sep:="`n",Eq:=": "
for i,V in PARAMS {
; if i is not Integer
str.=i Eq
str.= V . sep
}
return SubStr(str, 1, -StrLen(sep))
}


ClipChanged(Type){
static links:=read("links.txt"),p:=read("Paths.txt"),LCLIP,LastPath,ItemInfo
if (type=0) or (type=2) or (Clipboard == LCLIP)
return
if (type!=1) and (%TYPE%) ;and (%TYPE%) ;in(type,"LCLIP,LastPath,FileInfo")
return (%TYPE%)
LCLIP:=clipboard
; if !FileExist(LCLIP:=Clipboard)
; t(ItemInfo:=iteminfo(LastPath:=LCLIP),2100,100,5,3000,"no"),(!instr(p,lastpath)?append((p.=(p.l?"`n":"") lastpath),"Paths.txt"):"")
; else,
; LCLIP.isurl
if !instr(LCLIP,"`n") && instr(LCLIP,"youtu") AND RegExMatch(LCLIP, "^(?<Protocol>https?|ftp)://(?<Domain>(?:[\w-]+\.)+\w\w+)(?::(?<Port>\d+))?/?(?<Path>(?:[^:/?# ]*/?)+)(?:\?(?<Query>[^#]+)?)?(?:\#(?<Hash>.+)?)?$") AND !instr(links,LCLIP) and t(LCLIP.= " `; " r(WGAT()," - YouTube .*") "`n" ,,,6,3000,"no")
links.=fileappend(lclip,"links.txt","N")
}
winflip(p1="A"){
w:=win(p1),100,50,Move("x"(m.x<1919?250:2350) "y25")
}DSwitch(){
static sw
run("DisplaySwitch.exe " sw:=(sw="/extend"?"/clone":"/extend"))
}tidy(){
if winexist("Tidy Sidebar")
winclose Tidy Sidebar
WinWaitClose Tidy Sidebar
if WinExist("A")
cmode("Mouse","Screen"),screen:=mgp(),Move("x"(Screen.x>1800?2230:0) "y1 w1900 h990"),cmode("Mouse")
send("!q")
}
; O["SnapToDefault"]:=tog("HKCU\Control Panel\Mouse","SnapToDefaultButton")
tog(ROOT,key,Set="",VTYPE=""){
RegRead,V,% ROOT,%key%
RKType:=RegKeyType(ROOT,key) ; (v!=1 and v!=0?(t("FAILED " RKType " " key " " v),exit()):
new:=Set!=""?set:V=1?0:V=0?1:"" ; new:=Set!=""?set:V=1?0:V=0?1:(t("FAILED"),exit())
RegWrite,% RKType,% ROOT ,% key,% new
return RKType " " key "=" V " -> " new
}


MatchBalance(byref rf,p_1,p_2,regex=""){
if regex AND !RegExMatch(RF,"miO)^\}?\s*\K(?P<FL>(?P<N>[\w_]+)[(](?P<Params>[^)]*)[)])\s*[{][^}]*?[}]",F)
return ""
SPos:=RegExMatch(rf,"[^" p_1 "]*?[" p_1 "][^" p_2 "]*?[" p_2 "]",M)
if (RF:=sr(RF,M,,,1)) and (diff:=R(M,"[^" p_1 "]").l-R(M,"[^" p_2 "]").l)>0
LOOP
ps:=instr(rf,p_2,,,diff),add:=substr(rf,1,ps),M.=add,RF:=sr(RF,add,,,1),diff:=(R(M,"[^" p_1 "]").l) - (R(M,"[^" p_2 "]").l)
until (diff=0) or (a_index=10)
return (RET:=F)
}
strip(byref rf, p*){
for k,p in p
while RegExMatch(rf,p,M)
MA.=m,rf:=sr(rf,m,,,1)
return ma
}
Ftrim(var,length=60,sep="`n"){
SetFormat, Float, 0
if (var.length>length)
ls:=substr(var,1,(var.length//2)),var:=sr(var,ls,ls "`n")
return var
}

retf(var){
  F:=func(var), ret:="Var=" var "`nF: " F.name "`nBuildIn? " Asc(f.IsBuiltIn)
  . "`nMinParams: " f.MinParams "`nParamCount: " f.ParamCount
  return ret
  }
allfuncs(FileP=""){
  loop Files,% (FileP:=FileP=""?"E:\AH\lib\*.ahk":FileP)
  ap.="`n[" A_LoopFileFullPath "]" ((F:=join("`n",fcount(A_LoopFileFullPath)*))?"`n" F:" * FAILED *") "`n"
  append(ltrim(ap,"`n"),"AllFuncs.txt","DEL")
  return ap
  }

;===================== CLASSES ===================
fcount(file="",prop=""){
  return BC.fcount(File,Prop)
  }
BIV(ML="",f=""){
return BC.BIV(ML,F)
}
HS(k="",v="",opt="O"){
return BC.Hotstrings(k,v,opt)
}

#IfWinExist,
CLASS BC {
static Hotstring:={},funcs:={}
fcount(file="",prop=""){
thres:=10,comm1:=";[[:print:]]*?\n",comm2:="m)\/\*.*\*\/"
if isfunc(file) and This.Funcs.haskey(file)
return prop?This.Funcs[file][prop]:This.Funcs[file]
if !file
return This.Funcs
if !(at:=FileExist(File) && !InStr(FileExist(File), "D"))
RETURN file "`nfailed"
RF:=read(file),fnum:=0,p:=1,O:={},ma:=strip(rf,"m)\/\*.*\*\/",";[[:print:]]*\R*"),bra:="{{"
WHILE F:=MatchBalance(rf,"{","}","miO)^\}?\s*\K(?P<FL>(?P<N>[\w_]+)[(](?P<Params>[^)]*)[)])\s*[{][^}]*?[}]")
This.Funcs[F.N]:=F,O[F.FL]:=F.FL
return O.GetCapacity()?O:""
}
static IV_path:="E:\AH\inc\IncludeVar.ahk"
Hotstrings(k="",v="",opt="O"){
static IV_path:=this.IV_path,T_PATH:="E:\AH\inc\T_HS.ahk",O_PATH:="E:\AH\inc\O_HS.ahk",TF:=read(T_PATH),OF:=read(O_PATH),IV:=read(IV_path)
sort, IV, U
IF A_THISHOTKEY && RegExMatch(a_thisHotkey,":([^:]*):([^:]*)",M) && t(m1 " : " m2 " = " This.Hotstring[M2]) && (m1!="*B0")
return This.Hotstring[m2]
else,if (k="" && v="")
return This.Hotstring
else,if (This.Hotstring.haskey(k) && v="")
return This.Hotstring[k]
else,if !This.Hotstring.haskey(k) && k!="" && v!=""
This.Hotstring[k]:=v
if !instr(IV,k "=" v){
if instr(IV,k "="){
RegExMatch(IV,k "=[[:print:]`t]*",M) ;,IV:=r(IV,k "=[[:print:]`t]*",k "=" v)
append(r(IV,k "=[[:print:]`t]*",k "=" v),IV_path)
}else, fileappend % k "=" v "`n" , % IV_path
IV:=read(iv_path)
}}
BIV(ML="",f=""){
for each,var in ss(ML:=ML?ML:"Hotkey,GUI,MENU,Misc,Settings,Script,path,Timedate,loop")
ret.=IR("ML",var) ","
if (f="R")
return ret
for k,v in ss(ret)
(%v%)?a.=v "=" (%v%) "`n"
return a
}
}
; BIV(ML="",f=""){
; ML:=ML?ML:"Hotkey,GUI,MENU,Misc,Settings,Script,path,Timedate,loop"
; for each,var in ss(ML)
; ret.=IR("ML",var) ","
; if (f="R")
; return ret
; for k,v in ss(ret)
; (%v%)?a.=v "=" (%v%) "`n"
; return a
; }