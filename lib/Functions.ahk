ST(T="",p="",priority=""){
	static O:={},LASTP:=-150
	Global
	if !T&&A_ThisLabel
	T:=A_ThisLabel
	O[T]:=P:=(P="") and (lastp:=O[T])?-lastp:P
	if !isobject(T) and isfunc(T)
	T:=func(T)
	SetTimer, % T, % p,% priority
	}

HK(V=""){
	if V
	if IsObject(V)
	R:=strobj(V)
	else, R:=V "`n"
	R.="A_TimeSinceThisHotkey = " A_TimeSinceThisHotkey "`nA_TimeIdle = " A_TimeIdle "`nA_TimeSincePriorHotkey = " A_TimeSincePriorHotkey "`nA_ThisHotkey = " A_ThisHotkey "`nA_PriorHotkey = " A_PriorHotkey "`nkey = " key "`nA_PriorKey = " A_PriorKey "`nA_EndChar = " A_EndChar "`nA_TimeIdlePhysical = " A_TimeIdlePhysical "`nA_TimeIdle = " A_TimeIdle "`nA_now = " A_now
	return R ;	(V="Obj"?strobj(R):R)
	}
Get_Prop(byref K,P){
	static Last:={"HK":HK(),"foo":"Bar"},failed,lastP,LastR
	; if  regexmatch(LL:=Listlines(3,1),"[.]" P "[.](\w+)",m)
	; lastP:=m1,m1:=%m1%?%m1%:m1,lastR:=%p%(k,m1)
	; if (P=lastP) and (R:=lastR,lastP:=lastR:="")
	; return R
	; if (P="Hours")
	; return K//3600
	; if (p="LP")
	; return r(LP(K),".+--> ")
	if (p="IsBIV")
	return in(k,biv(,"R"))?(%k%):k
	if (p="Odd")
	return mod(k,2)
	if (p="Even")
	return mod(k,2)=0?k " is even":""
	if (p="Lines")
	return r(ltrim(k,"`n"),"`n",,cnt) or k?cnt+1:""
	if p in name,dir,ext,name_no_ext,drive
	Return	Splitpath(k)[p]
	; if (p="Maxindex")
	if (p="IsURL")
	Return RegExMatch(k, "^(?<Protocol>https?|ftp)://(?<Domain>(?:[\w-]+\.)+\w\w+)(?::(?<Port>\d+))?/?(?<Path>(?:[^:/?# ]*/?)+)(?:\?(?<Query>[^#]+)?)?(?:\#(?<Hash>.+)?)?$")
	; if (%K%)&&isobject(%k%)&&(P="Store")
	; if(K="Last")&&(P="Store")
	if(P="Store")
	return strobj(Last)
	; if(K="Last")&&(P="Obj")
	if(last.haskey(P))
	return last[P]
	if (P="length") OR (P="l")
	return StrLen(K)
	; if (%p%)
	; return "(%" p "%) `n" %p%
	; failed.=(LL?LL:"") "Get_Prop( " K "," P ")`n"
	}
Set_Obj(ByRef Obj,k,v){
	Static Log:={}
	; static set:=""""".base.__set " a_thisfunc
	; if (k="set")
	; return set
	; set.= "K " K ", V " V "`n"
	if (Obj="") ; obj.base.Name:=m1, ;obj:=object(k,v)
	Obj:={Base:Classlist},OBJ[K]:=V
	; return V
	if !Log[Obj]
	Log[Obj]:={}
	if !Log[obj].HasKey(k)
	Log[obj][k]:=v
	if (k="log")
	return log
	if (k="log"){
	listvars
	pause
	return Log
	}}

PS(ByRef foundX="",ByRef foundY="",X1="",Y1="",X2="",Y2="",ColorID=0,Variation=0,Mode="fast"){
	(X2=""?X2:=X1+15:""),(Y2=""?Y2:=Y1+15:"")
	pixelsearch, foundX, foundY, %X1%, %Y1%, %X2%, %Y2%, %ColorID%, %Variation%, %Mode%
	return errorlevel
	}

ControlList(Window="A"){
	WinGet, ControlList, ControlList,% window
	return ControlList
	}
MGP(ByRef X="",ByRef Y="",ByRef ID="",ByRef control="",Mode=0,CMODE="Screen"){
	; if CMODE
	; CoordMode, Mouse,% CMODE
	cmode("Mouse",CMODE)
	; MouseGetPos,X,Y ; MouseGetPos,X,Y,ID,control,%Mode%
	MouseGetPos,X,Y,ID,control
	if !ClassNN:=Control
	MouseGetPos,,,,HWND,2
	NID:=ID?ID:HWND
	WinGetTitle, title, ahk_id %Nid%
	WinGetClass, class, ahk_id %Nid%
	RETURN {X:X,Y:Y,ID:ID,MODE:MODE,ClassNN:ClassNN,HWND:HWND,Title:Title,Class:Class,A_CaretX:A_CaretX,A_CaretY:A_CaretY,	A_CoordModeMouse:	A_CoordModeMouse}
	}

MWA(Ret=""){
	if MGP().X>1920
	SysGet, MWA, MonitorWorkArea,2
	else,SysGet, MWA, MonitorWorkArea,1
	; MWA:={Top:MWATop,Bottom:MWABottom,Left:MWALeft,Right:MWARight}
	return MWA%ret%?MWA%ret%:{Top:MWATop,Bottom:MWABottom,Left:MWALeft,Right:MWARight}  ; MWA[Ret]?MWA[Ret]:MWA
	}
winflip(p1="A"){
	if Win:=win(P1){
	M:=MGP(),MWA:=MWA(),NewX:=M.X,NewY:=M.Y
	if Win.H+M.Y>MWA.Bottom
	NewY:=clamp(MWA("Bottom")-Win.H,10,950)
	if Win.W+M.X>MWA.right
	newx:=M.x+MWA.right-(Win.W+M.X)
	NewX:=clamp(NewX,MWA.left,MWA.right),NewY:=clamp(NewY,MWA.Top,MWA.Bottom),Move("x" newx "y" newy)
	}}
	Clamp(value, min, max){
	if(value < min)
		value:=min
	else if(value > max)
		value:=max
	return value
	}
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
	res:={"Title":t,"Class":class,"Text":trim(txt,":`n`r`t ")}
	res.insert("CMD",ftrim(cmd(win)))
	res.insert("ID_Hwnd",WinExist(win))
	Res.ID:=WinExist(win)
	Res.H:=Res.Height:=H,Res.W:=Res.Width:=Width,Res.X:=X,Res.Y:=Y
	For attr, val in WinGetAttr(win,text,extitle,extext,["PID","ProcessName"])
		IF (val)
		res.Insert(attr,val)
	; for k,v in ["Title","Class","ProcessName","CMD","ID_Hwnd","PID","Text","X","Y","Height","Width","Style","ExStyle"]
	; swlist.=ftrim(v (k>7 and k<12?"=":" : ") Res[v] (k>7 and k<11?" , ":"`n"))
	; wlist:={wlist:wlist}
	; res.wlist:=trim(swlist,":`n`r`t ")
	return res
	}

Win_GetClassNN(HCtrl, HRoot="") {
	ifEqual, HRoot,, SetEnv, HRoot, % DllCall("GetAncestor", "Ptr", HCtrl, "Uint", 2, "Uint")
	WinGet, hlist, ControlListHwnd, ahk_id %HRoot%
    WinGetClass, tclass, ahk_id %HCtrl%
    Loop, Parse, hlist, `n
    {
        WinGetClass, lclass, ahk_id %A_LoopField%
        if (lclass == tclass)
        {
            nn += 1
            if A_LoopField = %hctl%
                return tclass nn
        }
    }
	}
GetFocusedControl(){
	guiThreadInfoSize := 8 + 6 * A_PtrSize + 16
	VarSetCapacity(guiThreadInfo, guiThreadInfoSize, 0)
	NumPut(GuiThreadInfoSize, GuiThreadInfo, 0)
	; DllCall("RtlFillMemory" , "PTR", &guiThreadInfo, "UInt", 1 , "UChar", guiThreadInfoSize)   ; Below 0xFF, one call only is needed
	If(DllCall("GetGUIThreadInfo" , "UInt", 0	, "PTR", &guiThreadInfo) = 0)   ; Foreground thread
	{
	ErrorLevel := A_LastError   ; Failure
	Return 0
	}
	focusedHwnd := NumGet(guiThreadInfo,8+A_PtrSize, "Ptr") ; *(addr + 12) + (*(addr + 13) << 8) +  (*(addr + 14) << 16) + (*(addr + 15) << 24)
	Return focusedHwnd
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

T(VAR="",X=1000,Y=850,Tnum=1,Delay=4000,store=""){
	; cmode("All","Screen")
	static O:={},LTip,add ; sdelay:=delay//1000
	if (var!="" AND Delay)
	M:=MGP(),O[Tnum]:={"x":(x?x:m.x),"y":(y?y:m.y),"then":(a_now),"Delay":delay,"Tnum":Tnum,"Adj":(a_now+abs(delay//1000))}
	else,if (store="RTT") AND !(O[tnum].adj>a_now)
	return to("",x,y,Tnum),O.removekey(Tnum)
	if var.base.haskey("txt")
	var:=var.txt
	else,if var.haskey("LIST")
	var:=var.LIST
	if var.haskey("")
	var:=var[""]
	if isobject(var)
	var:=strobj(var)
	; var:=var.haskey("List")?Var.list:var.haskey("Text")?Var.text:isobject(var)?strobj(var):var
	if ((v:=trim(SubStr(var,1,1500),":`n`r`t "))!=""){
		TO(v,x,y,Tnum),RTF:=func("t").bind("",x,y,tnum,delay,"RTT"),ST(RTF,(delay>0?"-":"") delay)	; ,(store=""?(ltip:=v):"")
		if (store="add")
			add.="`n" v "`n"
		else if (store="")
			LTip:=V
		}
	return LTip add
	}
To(Text="",x="",y="",Tnum=1,DELAY=""){
	if !x and !y
	M:=MGP(),X:=X?X:M.X,X+=50,Y:=Y?Y:M.Y
	if sr(text,"`n",,c) and (NY:=Y+(c+1)*16) ; 15 Y per line
	(Y-=NY>1025?(NY-1015):"")
	tt(TEXT,X,Y,Tnum,DELAY)
	}
TT(Text="",X="",Y="",Tnum=1,DELAY=""){
	ToolTip,% TEXT ,% X,% Y,% Tnum
	}

ExitApp(ExitReason, ExitCode){
	append(strobj("".log),"Base.log","Keep")
	if (exitreason="full"){

	run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\onexitapp.ahk"
	exitapp
	}
	return 0
	}

	reload(){
	reload
	}
pause(){
	pause
	}
exit(){
	exit
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
	}
SR(In,SearchText,Replace="",Byref Count="", Limit=-1){
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

wclose(){
	global
	winclose
	}
close(){
	global
	winclose
	}
WA(v=""){
	winactivate %v%
	winwaitactive %v%
	}
runclose(target,extitle=""){
	dhw:=A_DetectHiddenWindows,DHW("On")
	if contains(target,".ahk") AND !instr(target,"ahk_class")
	target:="""C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe"" """ target """" ,addtotarget:=" ahk_class AutoHotkey" ; extitle=Sublime
	if WinFound:=win(target addtotarget,,extitle) ; winexist(target addtotarget,,extitle)
	Ret:=True,close(),t("closing target : " target "`nwin found: '" WinFound.title "'")
	else,Ret:=False,t("run " target "  " "".PID:=run(target) )
	DHW(DHW)
	Return Ret
	}
Explore(Target, WorkingDir="", Mode=""){
 Run, Explore %Target%, %WorkingDir%, %Mode%, v
 Return, v
	}
Run(Target, WorkingDir="", Mode="") {
	if isobject(Target)
 Run,% Target.Target,% Target.WorkingDir,% Target.Mode, v
 else, Run, %Target%, %WorkingDir%, %Mode%, v
 Return, v
	}
Runwait(Target, WorkingDir="", Mode="") {
 Runwait, %Target%, %WorkingDir%, %Mode%, v
 Return, v
	}

Append(str,filename,AT="",readback="Y"){
	if !AT
	delete(filename,AT)
	else,if (AT="DEL") or (AT="D")
	FileDelete,% FileName
	if readback=Y
	return fileappend(str,filename)
	fileappend(str,filename)
	}
FileAppend(t="", Filename="FOOBAR.txt",extra=""){
	FileAppend, % t:=r(t,"(`r?`n){3,}","`r`n`r`n"), % Filename
	return !errorlevel?READ(FILENAME):errorlevel
	}
Delete(filename,AT="D"){
	if !FileExist(filename)
	return errorlevel
	if (AT="D") or (AT="DEL")
	FileDelete(FileName)
	else,FileRecycle(filename)
	}
FileRecycle(FileName){
	FileRecycle,% FileName
	}
FileDelete(FileName){
	FileDelete,% FileName
	}
FileMove(Source,Dest,Flag=""){
	FileMove,% Source,% Dest,% Flag


	RT:= Source " -> " Dest "  " (ErrorLevel?"ErrorLevel=" errorlevel:A_thisfunc  " - Success")
	; if RT.L>50
; RT:=SR(RT," -> "," -> `n")
	; return Source " -> " Dest "  " (ErrorLevel?"ErrorLevel=" errorlevel:A_thisfunc  " - Success")
	return  RT <>0?RT . "`n":0
	}

FileCopy(Source,Dest,Flag=""){
	FileCopy,% Source,% Dest,% Flag

	RT:= Source " -> " Dest "  " (ErrorLevel?"ErrorLevel=" errorlevel:A_thisfunc  " - Success")
		; if RT.L>50
	; RT:=SR(RT," -> "," -> `n")
	return  RT <>0?RT . "`n":0
	return  RT "`n"
	return Source " -> " Dest "  " (ErrorLevel?"ErrorLevel=" errorlevel:A_thisfunc  " - Success")
	; return Source " --> " Dest " " (ErrorLevel?errorlevel:"Success")
	}

IsFolder(File){
	if InStr(FileExist(File), "D")
	return "'" File "' is a Folder"
	}
AutoDate(OverWrite=""){
	static DefSaveAsDate:="MM-dd-yyyy hh",WM_GETTEXT:=0x0D,Wtitle:="Select a filename to save,System Protection,Save As"
 ; if contains(Wtitle,"Save As")
	if(w:=win())&&in(w.class,"#32770,AutoHotkeyGUI")&&a_caretx&&VarSetCapacity(Txt, 200){
	TxtLen:=SendMsg("WM_GETTEXT",100,Txt,"Edit1","ahk_class #32770")
	; sendMessage,0x0D,100,&Txt,Edit1,ahk_class #32770
	ControlFocus, Edit1, ahk_class #32770
	if(w.title="System Protection")
	Append:=C_Time:=now("h:mm tt M-dd-y")
	Else,Append:=C_Time:=r(w.processname,"\.\w{3}$") " " now(DefSaveAsDate)
	if(!Txt||OverWrite)	; append:=r(append,"[.]...$")
	clip(Append,true)
	Else,if m(txt,"^RAIDMAX\..+$") ; else,if (txt="RAIDMAX.speccy")
	clip(now() " " txt,true)
	return tt:="`nText =" Txt "`nNow=" C_Time
	}}
FileGetTime(Filename="",WhichTime=""){
	FileGetTime,V,% Filename,% WhichTime
	return V
	}
DateCreated(File,Compare="",Format=""){
	DC:=FileGetTime(File,"C"),now:=a_now
	if compare {
	envsub,DC,Compare,% format
	DC:=abs(DC)
	if (Format="Seconds")
	DC:=formatseconds(DC)
	}
	return DC
}

elapsed(prev,unit="Minutes"){
	if !is(prev,"number")
	return false
	now:=a_now
	envsub now,prev,% unit
	if (unit="Seconds")
	return formatseconds(now)
	; return now " " Unit
	return now
	}
FormatSeconds(NumberOfSeconds){
	time=0 ; *Midnight* of an arbitrary date.
	time+=%NumberOfSeconds%,seconds
	FormatTime, mmss, %time%, mm' minutes', ss' seconds'
	FormatTime, mmass, %time%, mm:ss
	Hours:=NumberOfSeconds//3600
	Days:=NumberOfSeconds/86400
	Minutes:=NumberOfSeconds//60
	O:={"":Hours " Hours, " mmss "`n" Hours ":" mmass,Hours:Hours,Days:days,NumberOfSeconds:NumberOfSeconds,Minutes:Minutes}
	; {"":Hours " Hours, " mmss "`n" Hours ":" mmass,Hours:Hours,Days:days,NumberOfSeconds:NumberOfSeconds,Minutes:Minutes}
	; O[""]:=Hours " Hours, " mmss "`n" Hours ":" mmass
	return O
	}
now(format="h.mm.s_tt",date=""){
	; now(format="HH:mm:ss tt MM-dd-yyyy",date=""){
	; MM/dd/yyyy HH:mm:ss tt YYYYMMDDHH24MISS
	FormatTime, Out , % date,% Format
	return out
	}

CMD(win="A"){
	WinGet pid, PID, %win%
	queryEnum:=ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where ProcessId=" . pid)._NewEnum()
	if queryEnum[process] ; Get first matching process.
	return process.commandline
	}
Explorer_GetSelection(hwnd="") {
 WinGet, process, processName, % "ahk_id " hwnd := hwnd? hwnd:WinExist("A")
 WinGetClass class, ahk_id %hwnd%
 if (process="explorer.exe")
  if (class ~= "Progman|WorkerW"){
   ControlGet, files, List, Selected Col1, SysListView321, ahk_class %class%
   Loop, Parse, files, `n, `r
      ToReturn .= A_Desktop "\" A_LoopField "`n"
  } else if (class ~= "(Cabinet|Explore)WClass") {
 for window in ComObjCreate("Shell.Application").Windows
  if (window.hwnd==hwnd)
   sel := window.Document.SelectedItems
			 for item in sel
  			ToReturn .= item.path "`n"
	} return Trim(ToReturn,"`n")
	}

iteminfo(_Path="",I=""){
	Loop %_Path%, 1 	; run E:\AH\LoopFile-Script.exe %_Path%
	_path:=LP:=A_LoopFileLongPath
	P:=splitpath(_Path),S:=ComObjCreate("Shell.Application"),	Dir:=S.NameSpace(P.dir),FileName:=Dir.ParseName(P.name)
	Loop 283
	if PropertyItem:=Dir.GetDetailsOf(FileName, A_Index){
	if (I=PropertyItem) or (I=A_index)
	return A_Index " " Dir.GetDetailsOf(Dir.Items, A_Index) ":`t " PropertyItem "`n"
	properties.=A_Index " " Dir.GetDetailsOf(Dir.Items, A_Index) ":`t " PropertyItem "`n"
	}	return (FileName and Dir and properties?_path "`n" properties:"")
	}

EnumWindowsProc(hwnd, lParam){
	; DllCall("EnumWindows", Ptr,(EnumAddress:=RegisterCallback("EnumWindowsProc", "Fast")), Ptr, 0)
	global Output
	WinGetTitle, title, ahk_id %hwnd%
	WinGetClass, class, ahk_id %hwnd%
	Output .=title? "HWND: " . hwnd . "`tTitle: " . title . "`tClass: " . class . "`n":""
	return true  ; Tell EnumWindows() to continue until all windows have been enumerated.
	}

ExecScript(Script, Wait:=true){
	shell := ComObjCreate("WScript.Shell")
	exec := shell.Exec("AutoHotkey.exe /ErrorStdOut *")
	exec.StdIn.Write(script)
	exec.StdIn.Close()
	if Wait
	return exec.StdOut.ReadAll()
	}
RunWaitOne(command){
	shell := ComObjCreate("WScript.Shell")  ; WshShell object: http://msdn.microsoft.com/en-us/library/aew9yb99
	; Shell.Run(ComSpec " /C " command, 1,true)
	exec := shell.Exec(ComSpec " /C " command)  ; Execute a single command via cmd.exe
	return exec.StdOut.ReadAll()  ; Read and return the command's output
	; RunWaitOne(command) {
	; WshShell object: http://msdn.microsoft.com/en-us/library/aew9yb99
	; shell := ComObjCreate("WScript.Shell")
	; Execute a single command via cmd.exe
	;exec := shell.Exec(ComSpec " /C " command)
	; Read and return the command's output
	;return exec.StdOut.ReadAll()
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
	for i,V in PARAMS {
	if i is not Integer
	str.=i ": "
	str.= V . sep
	}return SubStr(str,1,-StrLen(sep))
	}

ClipChanged(Type){
	static links:=read("links.txt"),p:=read("Paths.txt"),LCLIP,LastPath,ItemInfo
	if (type=0)||(type=2)||(Clipboard == LCLIP)
	return
	; if (type!=1)&&(%TYPE%) ;and (%TYPE%) ;in(type,"LCLIP,LastPath,FileInfo")
	; return (%TYPE%)
	LCLIP:=clipboard 	; if !FileExist(LCLIP:=Clipboard)
	; t(ItemInfo:=iteminfo(LastPath:=LCLIP),2100,100,5,3000,"no"),(!instr(p,lastpath)?append((p.=(p.l?"`n":"") lastpath),"Paths.txt"):"")
	; else,LCLIP.isurl
	; if (clipboard="%a_MyDocuments%")
 ; t(LCLIp:="C:\Users\Brett\Documents")
	; else,
	if !instr(LCLIP,"`n") && instr(LCLIP,"youtu") AND RegExMatch(LCLIP, "^(?<Protocol>https?|ftp)://(?<Domain>(?:[\w-]+\.)+\w\w+)(?::(?<Port>\d+))?/?(?<Path>(?:[^:/?# ]*/?)+)(?:\?(?<Query>[^#]+)?)?(?:\#(?<Hash>.+)?)?$") AND !instr(links,LCLIP) and t(LCLIP.= " `; " r(WGAT()," - YouTube .*") "`n" ,,,6,3000,"no")
	links.=fileappend(lclip,"links.txt","N")

	else,	if(lclip.l<1000&&lclip.l>3&&(a_priorhotkey!="#v")&&(a_thishotkey!="#v"))
	append("`n`n" LCLIP,"Clip.txt","N"),t(lclip,1200,850,6,2000)
	}

DSwitch(){
	static sw
	run("DisplaySwitch.exe " sw:=(sw="/extend"?"/clone":"/extend"))
	}

WS(CMD,Val="",WT="",WTxt="",ExcludeTitle="", ExcludeText=""){
	global
	if !WT
	WT:=win().title
	WinSet, % CMD,% val,% WT,% WTxt,% ExcludeTitle,% ExcludeText
}
tidy(TaskNum=5){
	global ;  SetTitleMatchMode, regex
	; if !winactive("ahk_exe chrome.exe")||
	if WinActive("Tidy Sidebar")||!winactive("ahk_group browser") ;ahk_class Chrome_WidgetWin_"
	return
	; if ID:=Winexist("A")
	if W:=Win(){
	if InStr(W.Title,"Twitter")	; if winactive("
		Move("x950	y10	w965	h961")
	else,	if InStr(W.Title,"Subscriptions")	;
		Move("x"(mgp().x>1800?1920:205) "y10 w1425 h975")
	else, Move("x"(mgp().x>1800?1920:205) "y10 w1300 h975")
	; cmode("All","Screen"),Move("x"(mgp().x>1800?1920:205) "y25 w1695 h960")
	}
	if !winexist("Tidy Sidebar"){
	send !q
	WinWaitActive, Tidy Sidebar, ,3
	if ErrorLevel
		t(a_thisfunc " Failed!"),exit()
	WinActivate,% "ahk_id " W.ID
	}MyTaskbar("Tidy Sidebar",TaskNum)
	WinHide, Tidy Sidebar
	WinShow, Tidy Sidebar
	; WS("AlwaysOnTop","on","Tidy Sidebar"),WS("AlwaysOnTop","off","Tidy Sidebar")
	}

MyTaskbar(Window="A",Opt=""){
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
	tbl:=ComObjCreate(CLSID_TaskbarList,IID_ITaskbarList)
	static LA:=""
	if !Hwnd:=WinExist(Window)
	return "error"
	DllCall(vtable(tbl,3),"ptr",tbl) ; tbl.HrInit()
	if opt
	DllCall(vtable(tbl,(LA:=opt)),"ptr",tbl,"ptr",Hwnd)
	else,if LA=5
	DllCall(vtable(tbl,4),"ptr",tbl,"ptr",Hwnd),LA:=4  ; tbl.AddTab(Hwnd)
	else,if !LA or LA=4
	DllCall(vtable(tbl,5),"ptr",tbl,"ptr",Hwnd),LA:=5  ; tbl.DeleteTab(Hwnd)
	return LA
	}

Move(v){
	For i, dim in (a := StrSplit(RegExReplace(v, "i)[^txywh]")))
	If !RegExMatch(v, "i)" dim "\s*\K[\d.-]+", _%dim%)
	_%dim% := 1
	WinMove,,,% _x,% _y,% _w,% _h
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

CoMode(p1,p2=""){
	static prev:={}
	(p2=""?p2:=prev["A_CoordMode" p1]:prev["A_CoordMode" p1]:=A_CoordMode%p1%)
	return CoordMode(p1,p2) prev["A_CoordMode" p1]
	}
CMODE(p1,p2=""){
	; t(cmode("tooltip","Screen")) t(cmode("all","Client"))
	static prev:={},last:={ToolTip:A_CoordModeToolTip,Pixel:A_CoordModePixel,Mouse:A_CoordModeMouse,Caret:A_CoordModeCaret,Menu:A_CoordModeMenu}
	if (p1="all") and ret:={} { ; Screen|Window|Client
	for k,v in ["Tooltip","Pixel","Mouse","Menu","Caret"]
	ret[(v)]:=cmode(v,p2)
	return ret
	}CM:="A_CoordMode" P1,!p2?(p2:=prev[CM],prev[CM]:=last[CM]):p2!=last[CM]?prev[CM]:=A_CoordMode%p1%:""
	return CoordMode(p1,p2) CM " : " prev[CM] " --> " (last[CM]:=A_CoordMode%p1%)
	}CoordMode(p1,p2=""){
	CoordMode, % p1, % p2
	}

Q(v=""){
	static Freq:=false,app,linenum,Q:={}
	Freq?"":DllCall("QueryPerformanceFrequency","Int64*",Freq)
	DllCall("QueryPerformanceCounter","Int64*",BEF),q.push(bef)
	if !(v="END")
	return
	el:="elapsed=" ((bef-(LB:=q.remove(1)))*1000)/Freq
	if q.MaxIndex()>1
	for k,bef in q
	a.=k " elapsed " ((bef-LB)*1000)/Freq "`n",LB:=bef
	q:=[],R:=a el,A:=EL:=""
	return R
	}

DHW(V=""){
	static DHW
	DHW:=A_DetectHiddenWindows,NDHW:=V="Off" or V="ON"?V:V="" AND DHW="Off"?"On":V="" AND DHW="On"?"Off":"Failed"
	if (NDHW!=DHW)
	DetectHiddenWindows, % NDHW
	return A_DetectHiddenWindows
	}

SplitPath(I,ByRef name="",ByRef dir="",ByRef ext="", ByRef name_no_ext="",ByRef Drive=""){
	SplitPath, I, name, dir, ext, name_no_ext, drive
	return {"I":I,"name":name,"dir":dir,"ext":ext,"NNO":name_no_ext,"drive":drive}
	}
SPath(I,name="name",dir="dir",ext="ext",name_no_ext="name_no_ext",Drive="Drive"){
	if !fileexist(I)
	return
	SplitPath,I, name, dir, ext, name_no_ext, drive
	return {"I":i,"name":name,"dir":dir,"ext":ext,"NNO":name_no_ext,"name_no_ext":name_no_ext,"drive":drive,"FullPath":i}
	}
RegKeyType(FullPathOfKey, ValueName) {
	Loop, Reg, %FullPathOfKey%
		if (A_LoopRegName = ValueName)
			return A_LoopRegType
	return "Error"
	}

sub(var){
	if islabel(var)
	gosub %var%
	else,t(var " is not a label")
	}
click(){
	click
	}
sleep(ms){
	sleep %ms%
	}

ifequal(x,y*){
	for k,v in y
	if (x=v)
	return true
	}
Between(ByRef var, LowerBound, UpperBound){
	If var between %LowerBound% and %UpperBound%
		Return, var " between " LowerBound " and " UpperBound
	}
NotBetween(ByRef var, LowerBound, UpperBound){
	If var not between %LowerBound% and %UpperBound%
	Return, true
	}
In(ByRef var, MatchList){
	If var in %MatchList%
	; {
		; t(var " in " Matchlist,1950,500,7)
		Return, Var
	; }
	}
NotIn(ByRef var, MatchList){
	If var not in %MatchList%
		Return, true
	}
Contains(ByRef var, MatchList){
	If var contains %MatchList%
		Return, true
	}
NotContains(ByRef var, MatchList){
	If var not contains %MatchList%
	Return, true
	}
Is(ByRef var, types*){
	for k,type in types
	if istype(var,type)
	ret.="is " type "`n"
	return ret?var " " trim(ret,"`n"):""
	}
IsType(ByRef var, type){
	If var is %type% ; "integer,float,number,digit,xdigit,alpha,upper,lower,alnum,space"
	Return, true
	}
oddeven(n){
	return mod(n,2)=0?"even":mod(n,2)=1?"odd":""
	}odd(n){
	return mod(n,2)
	}even(n){
	return mod(n,2)=0?"Even":""
	}
IsNot(ByRef var, type){
	If var is not %type%
		Return, true
	}
EnvGet(EnvVarName){
	EnvGet, v, %EnvVarName%
	Return, v
	}
Read(Filename){
	return FileRead(Filename)
	}
FileRead(Filename){
	FileRead, v, %Filename%
	Return, v
	}
FileGetAttrib(Filename=""){
	FileGetAttrib, v, %Filename%
	Return, v
	}

Empty(O){
	; NO:={}
	for k,v in O
	if v
	NO[k]:=v
	return NO
	}

CleanFileName(Targ){
	IllegalFileChar=\\/:?"<>|*
	return t(r(targ,"[" IllegalFileChar "]"," ")) ; [}*:?]\\\/
	}

FileCreateShortcut(Target, LinkFile="C:\My Shortcut.lnk", WorkingDir="", Args="", Description="", IconFile="", ShortcutKey="", IconNumber="", RunState=1){
	if !instr(LinkFile,".lnk") && !instr(LinkFile,".URL")
	LinkFile:=R(LinkFile,"[.].{3}$",".lnk")
	FileCreateShortcut,% Target,% LinkFile,% WorkingDir,% Args,% Description,% IconFile,% ShortcutKey,% IconNumber,% RunState
	obj:={Target:Target,LinkFile:LinkFile,WorkingDir:WorkingDir,Args:Args,Description:Description,IconFile:IconFile,ShortcutKey:ShortcutKey,IconNumber:IconNumber,RunState:RunState}
	return Empty(Obj)
	}
FileGetShortcut(LinkFile,ByRef OutTarget ="",ByRef OutDir="",ByRef OutArgs="",ByRef OutDescription="",ByRef OutIcon="",ByRef OutIconNum="",ByRef OutRunState=""){
	FileGetShortcut, %LinkFile%, OutTarget, OutDir, OutArgs, OutDescription, OutIcon, OutIconNum, OutRunState
	}FileGetSize(Filename="", Units="") {
	FileGetSize, v, %Filename%, %Units%
	Return, v
	}

FileGetVersion(Filename="") {
	FileGetVersion, v, %Filename%
	Return, v
	}
FileReadLine(Filename, LineNum){
	FileReadLine, v, %Filename%, %LineNum%
	Return, v
	}
FileSelectFile(Options="", RootDir="", Prompt="", Filter="") {
	FileSelectFile, v, %Options%, %RootDir%, %Prompt%, %Filter%
	Return, v
	}
FileSelectFolder(StartingFolder="", Options="", Prompt="") {
	FileSelectFolder, v, %StartingFolder%, %Options%, %Prompt%
	Return, v
	}

FormatTime(YYYYMMDDHH24MISS="", Format="") {
	FormatTime, v, %YYYYMMDDHH24MISS%, %Format%
	Return, v
	}GuiControlGet(Subcommand="", ControlID="", Param4="") {
		GuiControlGet, v, %Subcommand%, %ControlID%, %Param4%
		Return, v
	}ImageSearch(ByRef OutputVarX, ByRef OutputVarY, X1, Y1, X2, Y2, ImageFile) {
		ImageSearch, OutputVarX, OutputVarY, %X1%, %Y1%, %X2%, %Y2%, %ImageFile%
	}Input(Options="", EndKeys="", MatchList="") {
		Input, v, %Options%, %EndKeys%, %MatchList%
		Return, v
	}InputBox(Title="", Prompt="", HIDE="", Width="", Height="", X="", Y="", Font="", Timeout="", Default="") {
		InputBox, v, %Title%, %Prompt%, %HIDE%, %Width%, %Height%, %X%, %Y%, , %Timeout%, %Default%
		Return, v
	}PixelGetColor(X, Y, RGB="") {
		PixelGetColor, v, %X%, %Y%, %RGB%
		Return, v
	}Random(Min="", Max="") {
		Random, v, %Min%, %Max%
		Return, v
	}RegRead(RootKey, SubKey, ValueName="") {
		RegRead, v, %RootKey%, %SubKey%, %ValueName%
		Return, v
	}RegWrite(ValueType,rootkey,k,v){
		RegWrite,%ValueType%,%rootkey%,%k%,%Test%,%v%
		}SoundGet(ComponentType="", ControlType="", DeviceNumber="") {
		SoundGet, v, %ComponentType%, %ControlType%, %DeviceNumber%
		Return, v
	}SoundGetWaveVolume(DeviceNumber="") {
		SoundGetWaveVolume, v, %DeviceNumber%
		Return, v
	}StatusBarGetText(Part="", WinTitle="", WinText="", ExcludeTitle="", ExcludeText="") {
		StatusBarGetText, v, %Part%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
		Return, v
	}StringGetPos(ByRef InputVar, SearchText, Mode="", Offset="") {
		StringGetPos, v, InputVar, %SearchText%, %Mode%, %Offset%
		Return, v
	}StringLeft(ByRef InputVar, Count) {
		StringLeft, v, InputVar, %Count%
		Return, v
	}StringLen(ByRef InputVar) {
		StringLen, v, InputVar
		Return, v
	}StringLower(ByRef InputVar, T="") {
		StringLower, v, InputVar, %T%
		Return, v
	}StringMid(ByRef InputVar, StartChar, Count , L="") {
		StringMid, v, InputVar, %StartChar%, %Count%, %L%
		Return, v
	}StringReplace(ByRef InputVar, SearchText, ReplaceText="", All="") {
		StringReplace, v, InputVar, %SearchText%, %ReplaceText%, %All%
		Return, v
	}StringRight(ByRef InputVar, Count) {
		StringRight, v, InputVar, %Count%
		Return, v
	}StringTrimLeft(ByRef InputVar, Count) {
		StringTrimLeft, v, InputVar, %Count%
		Return, v
	}StringTrimRight(ByRef InputVar, Count) {
		StringTrimRight, v, InputVar, %Count%
		Return, v
	}StringUpper(ByRef InputVar, T="") {
		StringUpper, v, InputVar, %T%
		Return, v
		}

SysGet(Subcommand,Param3=""){
 SysGet, v, %Subcommand%, %Param3%
 Return, v
	}
Transform(Cmd,Value1,Value2=""){
	Transform, v, %Cmd%, %Value1%, %Value2%
	Return, v
	}

WinGet(Cmd="", WinTitle="", WinText="", ExcludeTitle="", ExcludeText="") {
	WinGet, v, %Cmd%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
	}
WinGetClass(WinTitle="A", WinText="", ExcludeTitle="", ExcludeText="") {
	WinGetClass, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
	}
WinGetText(WinTitle="A", WinText="", ExcludeTitle="", ExcludeText="") {
	WinGetText, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
	}
WinGetTitle(WinTitle="A", WinText="", ExcludeTitle="", ExcludeText="") {
	WinGetTitle, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
	}
WGT(WinTitle="A", WinText="", ExcludeTitle="", ExcludeText="") {
	WinGetTitle, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
	}
WGAT(byref Atitle=""){
	WinGetActiveTitle, v
	return Atitle and !(Atitle=v)?false:v
	}

R(In,RegEx="",Replace="",Byref Count="",Limit=-1,Pos=1){
	return RegExReplace(In,RegEx,replace,Count,Limit,Pos)
	}
M(Hay,Needle,byref Match="",Pos=1){
	return FoundPos:=RegExMatch(Hay, Needle ,Match, Pos)
	}

Msgbox(V){
	try msgBox,3, ,% V
	IfmsgBox, yes
	return true
	exit
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

MM(X,Y="",speed=1,P=""){
	MouseMove, %X%, %Y% , %Speed%, %p%
	speed=c?click():""
	}

GKS(KEY,mode=""){
	GetKeyState, Var, %KEY%, %mode%
	return (var="U")?"":var
	}
KeyDown(HK,M=""){
	HK:=R(HK,"\{|\}")
	IF !(M="Up"){
	t(hk)
	send {%hk% down}
	Wait:=keywait(a_thishotkey)
	send {%HK% up}
	}else,send {%HK% up}
	return Wait
	}
KeyWait(KeyName,Opt=""){
	KeyWait, % KeyName ,% Opt
	Return A_TimeSinceThisHotkey
	}
KWait(HK=""){
	static Modifier:={"#":"LWIN","^":"Ctrl","!":"Alt","+":"Shift"}
	(HK=""?HK:=A_ThisHotkey:""),ret:=r(HK,"i)[#!^+&<>*~$@]|LControl|RControl|LAlt|RAlt|AppsKey|Lwin|Rwin")
	mod:=r(hk,"i)[^(LControl|RControl|LAlt|RAlt|AppsKey|Lwin|Rwin)]","$1")
	Sym:=(r(HK,"i)[^#!^+<>*~$@]")) ;,t(showvars(HK,ret,Sym,mod))
	for K, V in strsplit(Sym)
	keywait((Modifier.HasKey(V)?Modifier[V]:V),"L")
	keywait(mod,"L"),keywait(ret)
	Return A_TimeSinceThisHotkey
	}

Callout(Match,CalloutNumber, FoundPos, Haystack, NeedleRegEx){
	version           := NumGet(A_EventInfo,  0, "Int")
	callout_number    := NumGet(A_EventInfo,  4, "Int")
	offset_vector     := NumGet(A_EventInfo,  8)
	subject           := NumGet(A_EventInfo,  8 + A_PtrSize)
	subject_length    := NumGet(A_EventInfo,  8 + A_PtrSize*2, "Int")
	start_match       := NumGet(A_EventInfo, 12 + A_PtrSize*2, "Int")
	current_position  := NumGet(A_EventInfo, 16 + A_PtrSize*2, "Int")
	capture_top       := NumGet(A_EventInfo, 20 + A_PtrSize*2, "Int")
	capture_last      := NumGet(A_EventInfo, 24 + A_PtrSize*2, "Int")
	pad := A_PtrSize=8 ? 4 : 0  ; Compensate for 64-bit data alignment.
	; callout_data      := NumGet(A_EventInfo, 28 + pad + A_PtrSize*2)
	pattern_position  := NumGet(A_EventInfo, 28 + pad + A_PtrSize*3, "Int")
	next_item_length  := NumGet(A_EventInfo, 32 + pad + A_PtrSize*3, "Int")
	if version >= 2
	mark   := StrGet(NumGet(A_EventInfo, 36 + pad + A_PtrSize*3, "Int"), "UTF-8")
	LV()
	LISTVARS
	for k,v in SS(LV2(),"`n"){
	V:=substr(V,1,instr(v,"[")-1)
	if ifequal(V,"O","k","v","") ; if (V="O") or (V="k") or (V="v")
	continue
	O[V]:=(%v%)
	}
	return 1
	}
GetAhkStats(Section=""){
	DetectHiddenWindows, On
	IfEqual Section,, SetEnv Section, Key
	HidWin := WinExist(A_ScriptFullPath " - AutoHotkey v")
	OldPar := DllCall("GetParent", UInt,HidWin)
	GUI +LastFound
	DllCall("SetParent", UInt,HidWin, UInt,WinExist())
	WinMenuSelectItem ahk_id %HidWin%,,View, %Section%
	Sleep 50
	ControlGetText Out1, Edit1, ahk_id %HidWin%
	WinHide ahk_id %HidWin%
	DllCall("SetParent", UInt,HidWin, UInt,OldPar)
	if (section="lines")
	m(out1, ".*`r`n`r`n\K[\s\S]*(?=----.*GetAhkStats.ahk.*)", out1)
	Return Out1
	}
IsNeg(v){
	return mod(v,2)!="" and abs(v)=-v?v " is negative":false
	}
FF_RetrievePageName(){
	DllCall("DdeInitializeW","UPtrP",idInst,"Uint",0,"Uint",0,"Uint",0) ; CP_WINANSI = 1004   CP_WINUNICODE = 1200
	hServer := DllCall("DdeCreateStringHandleW","UPtr",idInst,"Str","firefox","int",1200)
	hTopic  := DllCall("DdeCreateStringHandleW","UPtr",idInst,"Str","WWW_GetWindowInfo","int",1200)
	hItem   := DllCall("DdeCreateStringHandleW","UPtr",idInst,"Str","0xFFFFFFFF","int",1200)
	hConv := DllCall("DdeConnect","UPtr",idInst,"UPtr",hServer,"UPtr",hTopic,"Uint",0) ; CF_TEXT = 1 CF_UNICODETEXT = 13
	hData := DllCall("DdeClientTransaction","Uint",0,"Uint",0,"UPtr",hConv,"UPtr",hItem,"UInt",1,"Uint",0x20B0,"Uint",10000,"UPtrP",nResult)
	sData := DllCall("DdeAccessData","Uint",hData,"Uint",0,"str")
	DllCall("DdeFreeStringHandle","UPtr",idInst,"UPtr",hServer)
	DllCall("DdeFreeStringHandle","UPtr",idInst,"UPtr",hTopic)
	DllCall("DdeFreeStringHandle","UPtr",idInst,"UPtr",hItem)
	DllCall("DdeUnaccessData","UPtr",hData)
	DllCall("DdeFreeDataHandle","UPtr",hData)
	DllCall("DdeDisconnect","UPtr",hConv)
	DllCall("DdeUninitialize","UPtr",idInst)
	result:=StrGet(&sData,"cp0")
	return result
	}

OwnContext(FilePath){
	if !fileexist(FilePath) and !fileexist(FilePath:=Explorer_GetSelection())
	return t(clipboard " Isn't a file: Fail")
	; run %comspec% /C takeown /f %FilePath% && cacls %FilePath% /G %A_UserName%:F
	Info:=iteminfo(Filepath)
	return T(Info)
	; cacls C:\Windows\System32\en-US\winload.exe.mui /G geek:F
	}

CG(Cmd, Value="", Control="", WinTitle="", WinText="", ExcludeTitle="", ExcludeText=""){
	ControlGet, v, %Cmd%, %Value%, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
	}

vtable(ptr, n) {
	; NumGet(ptr+0) returns the address of the object's virtual function
	; table (vtable for short). The remainder of the expression retrieves
	; the address of the nth function's address from the vtable.
	return NumGet(NumGet(ptr+0), n*A_PtrSize)
	}

IsMouseOverTaskbar(){
	CoordMode, Mouse, Screen
	MouseGetPos, , , WindowUnderMouseID
	WinGetClass, winclass, ahk_id %WindowUnderMouseID%
	result := false
	if(winclass = "Shell_TrayWnd")
		result := true
	return result
	}
IsDoubleClick(HK=""){
	A:={"THK":A_ThisHotkey,"PHK":A_PriorHotkey,"HK":HK,"TSPH":A_TimeSincePriorHotkey,"DBCT":DllCall("GetDoubleClickTime")}
	return A.TSPH<DllCall("GetDoubleClickTime")&&A.TSPH>0&&in(A_PriorHotkey,A.THK "," HK)
	; return A_TimeSincePriorHotkey < DllCall("GetDoubleClickTime") && A_ThisHotkey=A_PriorHotkey
	}

iniwrite(Value,Filename="iniwrite.ini",section="",Key=""){
	IniWrite,% Value,% Filename,% Section,% Key
	return key?key " = " value:(section?"[" Section "]`n":"") value
	}
IR(Section="ML",Key="",Filename="ini.ini",Def=""){
	IniRead, Out, %Filename%, %Section%, %Key%, %Def%
	return Out
	}
IW(K="",V="",Section="",Filename="ini.ini"){
	IniWrite, %V%, %Filename%, %Section%, %K%
	return read(filename)
	}
ini(var,section,filename="ini.ini"){
	IniWrite, %var%,% filename,% section ; IniRead, var,% filename,% section
	return var
	}
RemoveEmptyDash(v){
	if isobject(v)
	v:=strobj(v)
	return r(v,"^-\s*`n")
	}

Gset(byref v="",setV=""){
	global
	local var:=v
	%v%:=setv
	return var " := " setv
	}
Glob(byref v){
	global
	return v
	}
Tog(byRef v,T1="",t2=""){
	if (V=T2)
	tt.=t2 " -> " V:=T1
	else, if (V=T1)
	tt.=t1 " -> " V:=T2
	else if !IsByRef(v)
	tt.=gset(v,t1)
	else if IsByRef(v)
	tt.="'" v "' -> "  V:=T1
	t(tt,300,300,4)
	return v
	}
; ==========UNUSED/NOT WORKING=============
Regtog(ROOT,key,Set="",VTYPE=""){
	; O["SnapToDefault"]:=tog("HKCU\Control Panel\Mouse","SnapToDefaultButton")
	RegRead,V,% ROOT,%key%
	RKType:=RegKeyType(ROOT,key) ; (v!=1 and v!=0?(t("FAILED " RKType " " key " " v),exit()):
	new:=Set!=""?set:V=1?0:V=0?1:"" ; new:=Set!=""?set:V=1?0:V=0?1:(t("FAILED"),exit())
	RegWrite,% RKType,% ROOT ,% key,% new
	return RKType " " key "=" V " -> " new
	}
WFF(Directory,Changes){ ; WatchFolder
 static O:={},WorkingDir:="E:\Videos"
	For Each,C In Changes {
	 Action:=C.Action,Name:=C.Name,OldName:=C.oldname,isdir:=C.isdirC

 If (Action=4){

 	If(Action=4&&instr(Name,"videoplayback")&&instr(Name,"download")){
		NewName:=CleanFileName(R(WGAT()," - YouTube -.*")) ".mp4"
	 Target:= WorkingDir "\" Newname 	; Target:= WorkingDir "\LNK\" Newname
		LinkFile:=Directory "\" CleanFileName(R(WGAT()," - YouTube -.*")) ".lnk",	FCS:=Func("FileCreateShortcut")
		O[T:=filegettime(name,"C")]:=Obj:=%FCS%(Target,LinkFile,WorkingDir,Args,Description,IconFile,ShortcutKey,IconNumber,RunState:=1)
		IniWrite,% r(r(strobj(Obj),"(`r?`n){1,}","`n"),"(`r|`n)$","`r`n"),Download.ini,% T  ; O[Obj[Time]:=filegettime(name,"C")]:=OBJ
		}
		ELSE IF !regexmatch(name,"\..*(download|tmp|temp)")&&action=4
  CO:={T:=filegettime(name,"C"):C},CO:=r(r(strobj(CO),"(`r?`n){1,}","`n"),"(`r|`n)$","`r`n"),t(IniWrite(RemoveEmptyDash(co),"Download.ini",T?T++:"FAIL"))

 	If(Action=4&&instr(Name,"xvideos")&&instr(oldName,"download"))
 	atitle:=r(wgt("XVID")," *?-? ?XVID.*"),t(MoveTo:="E:\ANIME\" (atitle?atitle:a_now) "." spath(name).ext),FileCopy(Name,MoveTo,1),t(FileMove(Name,"E:\ANIME\xvid",1))

 	If(Action=4&&instr(Name,"videoplayback")&&instr(OldName,"download"))
 	Obj:=O[filegettime(name,"C")],t(FileMove(Name,obj.target,1)),	R:="mklink /H """ name """ """ obj.LinkFile """"
		else,	If(Action=4&&instr(Name,".mp4")&&instr(OldName,"download"))
 	t(FileCopy(Name,WorkingDir,1))

		if instr(name,"session_buddy_export_")&&action=4&&!instr(name,"download")
 	t(Filecopy(Name,A_MyDocuments "\txt\Session_buddy\",1))

 	}

		if (Action!=2){
 		If regexmatch(name,"[.]m?html?")
 			t(FileCopy(Name,A_MyDocuments "\HTML",1))

 		If instr(name,".pdf")
 			t(FileCopy(Name,"E:\PDF\",1))
			}

		}
	}

WatchDownloads(Directory,Changes){ ; WatchFolder
 static O:={},WorkingDir:="E:\Videos"
	For Each,C In Changes{
		Action:=C.Action,Name:=C.Name,OldName:=C.oldname,isdir:=C.isdirC

 	If (Action=4){

	 	If(instr(Name,"videoplayback")&&instr(Name,"crdownload")){
			NewName:=CleanFileName(R(WGAT()," - YouTube -.*"))
		 Target:= WorkingDir "\" Newname ".mp4"
			LinkFile:=Directory "\LNK\" NewName ".lnk",	FCS:=Func("FileCreateShortcut")
			O[T:=CT(name)]:=%FCS%(Target,LinkFile,WorkingDir,Args,Description,IconFile,ShortcutKey,IconNumber,RunState:=1)
			O[CT(name)].NewName:=NewName
 t(IniWrite(RemoveEmptyDash(r(r(strobj(O[CT(name)]),"(`r?`n){1,}","`n"),"(`r|`n)$","`r`n")),"Download.ini",T?T++:"FAIL"))

			}
		ELSE IF !regexmatch(name,"i)\..*(download|tmp|temp)")
 			t(IniWrite(RemoveEmptyDash(r(r(strobj(O[CT(name)]),"(`r?`n){1,}","`n"),"(`r|`n)$","`r`n")),"Download.ini",T?T++:"FAIL"))

		If M(Name,"i)xvideos.*mp4$")
	 	T(filemove(name,"E:\ANIME\XVID\" r(wgt("XVID")," *?-? ?XVID.*") "." spath(name).ext,1),1400,850,5,7000,"add")

		else,	If instr(Name,"videoplayback")&&instr(OldName,"crdownload")
	 		t(FileMove(Name,O[CT(Name)].target,1))

		else,	If M(Name,".mp4$")&&instr(OldName,"crdownload")
	 		t(FileMove(Name,WorkingDir,1))

			}	if (Action!=2){
 		If regexmatch(name,"[.]m?html?")
 			t(FileCopy(Name,A_MyDocuments "\HTML",1))
 		If instr(name,".pdf")
 			t(FileCopy(Name,"E:\PDF\",1))
	; if instr(name,"session_buddy_export_")&&!instr(name,"download")
		; t(Filecopy(Name,A_MyDocuments "\txt\Session_buddy\",1))
			}
		}
	}

CT(file){
return filegettime(file,"C")
}
filegettime(name,"C")
FCall(p=""){
	static var:="local",addressA:=p,strA := StrGet(addressA)
	return "strA = "  strA "`n" (IsByRef(p)?"IsByRef(" p ")":"IsNotByRef(" p ")" ) "`np = " p "`n&p = " &p "`n%p% = " %p%
	a:="`na.getcapacity()" a.getcapacity() "`nisobject(a)" isobject(a) "`na.length()" a.length() "`na.MaxIndex()" a.MaxIndex() "`na.MinIndex()" a.MinIndex()
	}
Ctrllist(Window="A"){
	DHW("On") ;,DHT("On")
	WinGet, ControlList, ControlList,% window
	w:=win()
	ControlO:=new classlist
	for I,ControlNN in ss(ControlList,"`n"){
	Controltxt:="",VarSetCapacity(Controltxt,200)
	WM_GETTEXT:=0x0D,TxtLen:=SendMsg("WM_GETTEXT",100,Controltxt,ControlNN,"ahk_class " w.class)
	; Note: To retrieve text from a ListView, ListBox, or ComboBox, use ControlGet List instead.
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
	controlo.push({ControlNN:ControlNN,Controltxt:Controltxt,TabCount:TabCount,CtrlHwnd:CtrlHwnd,Choice:Choice,ChoicePos:ChoicePos})
	; ControlO:={base:CLASSLIST,ControlNN:ControlNN,Controltxt:Controltxt,TabCount:TabCount,CtrlHwnd:CtrlHwnd,Choice:Choice,ChoicePos:ChoicePos}
	; if (choice)
	; t(strobj(controlO))
	; msg(strobj(controlO))
	; return controlO
	; t(strobj(controlO) "`n`n" list)
	}
	return controlo
	}
MS(var*){ ;incomplete MSG W/ listline and Var
	if !var.MaxIndex() or !var.GetCapacity() or (var[1]="")
	return t(a_thisfunc "fail")
	for i,v in var {
	; if v.list
	; add:=v.list
	; else, if isobject(v)
	; add:=strobj(v)
	; else,{
	add:="",LL:=listlines(a_thisfunc,250),Pos:=1,Ass:="(:=|=|:)"
	RegExMatch(pat,"\((([^()]*+)(?:(?R)(?2))*)\)",M)
	if (Pos:=instr(LL,a_thisfunc "(",0,2)) && (Pos:=RegExMatch(LL,"i)" A_ThisFunc "\((.*)\)",M,pos))
	p:=ss(m1)	; if !instr(p[i],V) && instr(p[i],"(") && !m(K,Ass V)
	if instr(M1,V) && (regexmatch(m1,"i)([^,]*)" V "[^,]*",K))
	add.="`n" K1 " " (!m(K,Ass V)?":=" V:V)
	else,if !instr(p[i],"(")
	add.="`nP" i " " p[i] ":=" V
	if (foundv:=instr(LL,p[i],0,2)) and (regexmatch(LL,"i)[[:print:]]*" p[i] "[^,\n]*",vmatch,foundv))
	add.="`n" vmatch
	add:=trim(add,"`r`n")
	try msgBox,3, ,% instr(add,V)?ADD:ADD " " V
	IfmsgBox, yes
	continue
	exit
	}}
CGT(Control="", WinTitle="", WinText="", ExcludeTitle="", ExcludeText=""){
	return ControlGetText(Control, WinTitle, WinText, ExcludeTitle, ExcludeText)
	}
ControlGetText(Control="", WinTitle="", WinText="", ExcludeTitle="", ExcludeText="") {
	ControlGetText, v, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
 }
ControlGetFocus(WinTitle="", WinText="", ExcludeTitle="", ExcludeText="") {
	ControlGetFocus, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
	}
DriveGet(Cmd, Value=""){
	DriveGet, v, %Cmd%, %Value%
	Return, v
	}
DriveSpaceFree(Path){
	DriveSpaceFree, v, %Path%
	Return, v
	}

SendInput(Keys){
	global
	Sendinput % Keys
	return Keys
	}
Send(HK,sleep=""){
	global
	send % HK
	Return HK
	}
Log(Text,FileName="log.log"){
	FileAppend, % text, Filename
	}

IsControlActive(controlclass){
	; if(WinVer >= WIN_7)
		ControlGetFocus active, A
	; else
		; active := XPGetFocussed()
	if(InStr(active, controlclass))
		return true
	return false
	}
;Gets the visible window at a screen coordinate
GetVisibleWindowAtPoint(x, y, IgnoredWindow){
	DetectHiddenWindows,off
	WinGet, id, list,,,
	Loop, %id%
	{
	    this_id := id%A_Index%
	    ;WinActivate, ahk_id %this_id%
	    WinGetClass, this_class, ahk_id %this_id%
	    WinGetPos , WinX, WinY, Width, Height, ahk_id %this_id%
	    if(IsInArea(x, y, WinX, WinY, Width, Height) && this_class != IgnoredWindow)
	    {
	    	DetectHiddenWindows, on
	    	return this_class
	    }
	}
	DetectHiddenWindows,on
	}
;checks if a point is in a rectangle
IsInArea(px, py, x, y, w, h){
	return (px > x && py > y && px < x + w && py < y + h)
	}
;Checks if two rectangles overlap
RectsOverlap(x1, y1, w1, h1, x2, y2, w2, h2){
	Union := RectUnion(x1, y1, w1, h1, x2, y2, w2, h2)
	return Union.w && Union.h
	}
;Checks if two rectangles are separate
RectsSeparate(x1, y1, w1, h1, x2, y2, w2, h2){
	Union := RectUnion(x1, y1, w1, h1, x2, y2, w2, h2)
	return Union.w = 0 && Union.h = 0
	}
;Check if the first rectangle includes the second one
RectIncludesRect(x1, y1, w1, h1, ix, iy, iw, ih){
	Union := RectUnion(x1, y1, w1, h1, ix, iy, iw, ih)
	return Union.x = ix && Union.y = iy && Union.w = iw && Union.h = ih
	}
;Calculates the union of two rectangles
RectUnion(x1, y1, w1, h1, x2, y2, w2, h2){
	x3:=y3:=""
	;X Axis
	if(x1 > x2 && x1 < x2 + w2)
		x3 := x1
	else if(x2 > x1 && x2 < x1 + w1)
		x3 := x2

	if(y1 > y2 && y1 < y2 + h2)
		y3 := y1
	else if(y2 > y1 && y2 < y1 + h1)
		y3 := y2

	if(x3 != x1 && x3 != x2) ;Not overlapping
		w3 := 0
	else
		w3 := w1 - (x3 - x1) < w2 - (x3 - x2) ? w1 - (x3 - x1) : w2 - (x3 - x2) ;Choose the smaller width
	if(y3 != y1 && y3 != y2) ;Not overlapping
		h3 := 0
	else
		h3 := h1 - (y3 - y1) < h2 - (y3 - y2) ? h1 - (y3 - y1) : h2 - (y3 - y2) ;Choose the smaller height
	if(w3 = 0)
		h3 := 0
	else if(h3 = 0)
		w3 := 0
	return Object("x", x3, "y", y3, "w", w3, "h", h3)
	}
;Gets window position using workspace coordinates (-> no taskbar)
WinGetPlacement(hwnd, ByRef x="", ByRef y="", ByRef w="", ByRef h="", ByRef state=""){
	VarSetCapacity(wp, 44), NumPut(44, wp)
	DllCall("GetWindowPlacement", "Ptr", hwnd, "Ptr", &wp)
	x := NumGet(wp, 28, "int")
	y := NumGet(wp, 32, "int")
	w := NumGet(wp, 36, "int") - x
	h := NumGet(wp, 40, "int") - y
	state := NumGet(wp, 8, "UInt")
	;outputdebug get x%x% y%y% w%w% h%h% state%state%
	}
;Sets window position using workspace coordinates (-> no taskbar)
WinSetPlacement(hwnd, x="",y="",w="",h="",state=""){
	WinGetPlacement(hwnd, x1, y1, w1, h1, state1)
	if(x = "")
		x := x1
	if(y = "")
		y := y1
	if(w = "")
		w := w1
	if(h = "")
		h := h1
	if(state = "")
		state := state1
	VarSetCapacity(wp, 44), NumPut(44, wp)
	if(state = 6)
		NumPut(7, wp, 8) ;SW_SHOWMINNOACTIVE
	else if(state = 1)
		NumPut(4, wp, 8) ;SW_SHOWNOACTIVATE
	else if(state = 3)
		NumPut(3, wp, 8) ;SW_SHOWMAXIMIZED and/or SW_MAXIMIZE
	else
		NumPut(state, wp, 8)
	NumPut(x, wp, 28, "Int")
    NumPut(y, wp, 32, "Int")
    NumPut(x+w, wp, 36, "Int")
    NumPut(y+h, wp, 40, "Int")
	DllCall("SetWindowPlacement", "Ptr", hwnd, "Ptr", &wp)
	}
DynaRun(s, pn:="", pr:=""){ ; s=Script,pn=PipeName,n:=,pr=Parameters,p1+p2=hPipes,P=PID
	static AhkPath:="`"" A_AhkPath "`"" (A_IsCompiled||(A_IsDll&&DllCall(A_AhkPath "\ahkgetvar","Str","A_IsCompiled"))?" /E":"") " `"""
	if (-1=p1 := DllCall("CreateNamedPipe","str",pf:="\\.\pipe\" (pn!=""?pn:"AHK" A_TickCount),"uint",2,"uint",0,"uint",255,"uint",0,"uint",0,"Ptr",0,"Ptr",0))
	  || (-1=p2 := DllCall("CreateNamedPipe","str",pf,"uint",2,"uint",0,"uint",255,"uint",0,"uint",0,"Ptr",0,"Ptr",0))
	  Return 0
	; allow compiled executable to execute dynamic scripts. Requires AHK_H
	Run, % AhkPath pf "`"" " pr,,UseErrorLevel HIDE, P
	If ErrorLevel
	  return DllCall("CloseHandle","Ptr",p1),DllCall("CloseHandle","Ptr",p2),0
	DllCall("ConnectNamedPipe","Ptr",p1,"Ptr",0),DllCall("CloseHandle","Ptr",p1),DllCall("ConnectNamedPipe","Ptr",p2,"Ptr",0)
	if !DllCall("WriteFile","Ptr",p2,"Wstr",s:=(A_IsUnicode?chr(0xfeff):"﻿") s,"UInt",StrLen(s)*(A_IsUnicode?2:1)+(A_IsUnicode?4:6),"uint*",0,"Ptr",0)
	  P:=0
	DllCall("CloseHandle","Ptr",p2)
	Return P
	}

CopyFilesAndFolders(SourcePattern, DestinationFolder, DoOverwrite = false){
 FileCopy, %SourcePattern%, %DestinationFolder%, %DoOverwrite%
 ErrorCount := ErrorLevel  ; First copy all the files (but not the folders)
	Loop, %SourcePattern%, 2  ; 2 means "retrieve folders only".
		{
		FileCopyDir, %A_LoopFileFullPath%, %DestinationFolder%\%A_LoopFileName%, %DoOverwrite%
		ErrorCount += ErrorLevel
		if ErrorLevel  ; Report each problem folder by name.
		tool=%tool% `n %ErrorCount% files/folders Could not copy %A_LoopFileFullPath% into %DestinationFolder%. `n
		Else,
		tool=%tool% `n No Error %A_LoopFileFullPath% into %DestinationFolder%. `n
		; if ErrorLevel  ; Report each problem folder by name.
		; tool=%tool% Could not copy %A_LoopFileFullPath% into %DestinationFolder%.
		}
 return tool?tool:"No Error " SourcePattern "  ->  " DestinationFolder "`n" ; ErrorCount "`n" tool
	}
MoveFilesAndFolders(SourcePattern, DestinationFolder, DoOverwrite = false){
	; The following example moves all files and folders inside a folder to a different folder:
	; ErrorCount := MoveFilesAndFolders("C:\My Folder\*.*", "D:\Folder to receive all files & folders")
	; if ErrorCount <> 0
	;     MsgBox %ErrorCount% files/folders could not be moved.

	; Moves all files and folders matching SourcePattern into the folder named DestinationFolder and
	; returns the number of files/folders that could not be moved. This function requires v1.0.38+
	; because it uses FileMoveDir's mode 2.
	if DoOverwrite = 1
		   DoOverwrite = 2  ; See FileMoveDir for description of mode 2 vs. 1.
 ; First move all the files (but not the folders):
 FileMove, %SourcePattern%, %DestinationFolder%, %DoOverwrite%
 ErrorCount := ErrorLevel
 ; Now move all the folders:
 Loop, %SourcePattern%, 2  ; 2 means "retrieve folders only".
		{
					 FileMoveDir, %A_LoopFileFullPath%, %DestinationFolder%\%A_LoopFileName%, %DoOverwrite%
     ErrorCount += ErrorLevel
     if ErrorLevel  ; Report each problem folder by name.
         MsgBox Could not move %A_LoopFileFullPath% into %DestinationFolder%.
 	}
 return ErrorCount
	}

CopyFiles(SourcePattern, DestinationFolder, DoOverwrite = false){
	return CopyFilesAndFolders(SourcePattern, DestinationFolder, DoOverwrite = false)
	}
MoveFiles(SourcePattern, DestinationFolder, DoOverwrite = false){
	Return MoveFilesAndFolders(SourcePattern, DestinationFolder, DoOverwrite = false)
	}

FCD(Source, Dest="" , Flag=0){
	FileCopyDir,% Source,% Dest ,% Flag
	return ErrorLevel
	}
