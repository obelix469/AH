#INCLUDE <_struct>
#Include <AHKStructures>
Functions(){
 return true
}
Set_Obj(ByRef var, key, value){
(var=""?var:=Object(key,value):"")
}Get_Prop(byref nonobj, key){
if (key = "length")
return StrLen(nonobj)
if (key = "vname")
return substr(v(nonobj),1,-(nonobj.length+1))
if in(key,"x,y,Control,Win"){
; t(m.control?m.control:"no ctrl under mouse")
MGP(X,Y,Win,Control,mode,"Screen")
return (key="Win")?strobj(win("AHK_id " win)):(%Key%)
}if (key = "s"){ ; take out f from byref and returns all the f's
ret:=r(nonobj,"f","$0"),nonobj:=r(nonobj,"f")

}
if isfunc(key)
return %key%(nonobj)
}
MGP(ByRef X="",ByRef Y="",ByRef Win="",ByRef C="",Mode="",coord=""){
CoordMode,Mouse,%coord%
MouseGetPos, X, Y, Win, C, %Mode%
}
O(key="",value="",byref Obj_opt=""){
static O:={}
O[key]:=value
return O
}
SysGet(Subcommand, Param3 = "") {
 SysGet, v, %Subcommand%, %Param3%
 Return, v
}TW(v="VirtualWidth"){
 return sysget(78)
}TH(v="VirtualHeight"){
 return sysget(79)
}
CMD(win="A"){
WinGet pid, PID, %win%
wmi := ComObjGet("winmgmts:") ; Get WMI service object.
; Run query to retrieve matching process(es).
queryEnum:=wmi.ExecQuery("Select * from Win32_Process where ProcessId=" . pid)._NewEnum()
if queryEnum[process] ; Get first matching process.
    return process.commandline
return false
}
iteminfo(_Path="E:\AH\scripts\backup\GetActiveBrowserURL.ahk"){
P:=splitpath(_Path),FileName:=P.name,Dir:=P.dir
objShell:= ComObjCreate("Shell.Application")
objFolder:=objShell.NameSpace(Dir)     ;set the directry path
objFolderItem:=objFolder.ParseName(FileName)   ;set the file name
Loop 283    
    if  propertyitem := objFolder.GetDetailsOf(objFolderItem, A_Index)
        properties .=   A_Index . " " .  objFolder.GetDetailsOf(objFolder.Items, A_Index) . ":`t " . propertyitem . "`n "
return properties?_path "`n" properties:""
}
PS(ByRef foundX="",ByRef foundY="",X1="",Y1="",X2="",Y2="",ColorID=0,Variation=0,Mode="fast"){
(X2=""?X2:=X1+15:""),(Y2=""?Y2:=Y1+15:"")
pixelsearch, foundX, foundY, %X1%, %Y1%, %X2%, %Y2%, %ColorID%, %Variation%, %Mode%
return errorlevel
}
; UnderMouse Bitmap From HWND
SS(HWND="",SaveFileName="NP",Ext="bmp",Width=50,Length=50){
pToken := gdip_startup()
WinGetActiveStats, Title, W, H, X, Y
WinGetClass, class, A
MouseGetPos, MX, MY
left:=MX,right:=W-MX-Width,UP:=MY,down:=H-MY-Length
SaveFileName:=(SaveFileName="NP"?class "." ext:SaveFileName),HWND:=(HWND=""?WinExist("A"):HWND)
Gdip_SaveBitmapToFile(pBitmap := Gdip_CropBitmap(Gdip_BitmapFromHWND(HWND), left, right, up, down), SaveFileName)
ImageSearch, FoundX, FoundY, 0, 0, W, H, %SaveFileName%
t(v(Width,"  ",Length,HWND,"`n",SavedFile:=A_scriptdir "\" SaveFileName) " - " (ErrorLevel=2?"failure to open the image file or prevention":(ErrorLevel=1)?"could not be found ":"was found at x " FoundX ",y " FoundY "`n"),,foundx,foundy,2)
mousemove %foundx%,%foundy%
Gdip_DisposeImage(pBitmap),Gdip_Shutdown(pToken)
return
}
GKS(KEY){
return GetKeyState(key)
}kwait(HK=""){
static modi:={"#":"LWIN","^":"Ctrl","!":"Alt","+":"Shift"}
(HK=""?HK:=A_ThisHotkey:),ret:=r(HK,"i)[#!^+&<>*~$@]|LControl|RControl|LAlt|RAlt|AppsKey|Lwin|Rwin")
mod:=r(hk,"i)[^(LControl|RControl|LAlt|RAlt|AppsKey|Lwin|Rwin)]","$1")
Sym:=(r(HK,"i)[^#!^+<>*~$@]")),t(showvars(HK,ret,Sym,mod))
for k, v in strsplit(Sym){
if modi.haskey(v)
v:=modi[v]
keywait(v,"L")
}keywait(mod,"L"),keywait(ret)
}keywait(KeyName,opt=""){
KeyWait,% KeyName ,% Opt
}send(hk,sleep="",mode="InputThenPlay"){
SendMode, %mode%
(sleep=""?(sendi(hk,mode),exit()):"")
send {%hk% down}
sleep(sleep)
send {%hk% up}
}sendi(hk,mode="InputThenPlay"){
SendMode, %mode%
Sendmode, input
send %hk%
return hk
}
SR(Haystack, SearchText , ReplaceText="", OutputVarCount="", Limit=-1){
return StrReplace(Haystack, SearchText , ReplaceText, OutputVarCount, Limit)
}R(Haystack,RegEx="",replace="",OutVarCount="",Limit=-1,StartingPos = 1){
static O:={}
RET:=RegExReplace(Haystack, RegEx, replace, OutVarCount, Limit, StartingPos)
; O[RegEx]:={Haystack, RegEx, replace, OutVarCount, Limit, StartingPos
return ret
}
keydown(HK,M=""){
IF (m="up"){ ; (m="up")?send("{" . HK . "up}")
send {%HK% up}
return
}t(hk)
send {%hk% down}
keywait(a_thishotkey)
send {%HK% up}
}BIV(ML="Hotkey,GUI,MENU,Misc",f:=""){
for each,var in StrSplit(ML,",")
ret.=IR(,var) ","
return ret
for k,v in StrSplit(IR(,var),",")
(%v%)?((r.=v " = " (%v%) "`n"),IW(V,(%v%),"BIV")):""
return append(r,"biv.txt")
}
timer(sub){
static k,ltimer
if islabel(ltimer) and (sub!=ltimer)
k:=250,st(ltimer,"off"),st(sub,k),ltimer:=sub
else, st(sub,k:=k=250?-100:250),ltimer:=(k>100)?sub:""
}ST(label,period="",priority=""){
SetTimer, % label, % period,% priority
}
IR(Section:="ML",Key:="",Filename:="ini.ini",Def=""){
IniRead, Out, %Filename%, %Section%, %Key%, %Def%
return Out
}IW(K="",V="",Section="",Filename="ini.ini"){
IniWrite, %V%, %Filename%, %Section%, %K%
}Read(Filename){
fileread, out, %filename%
return out
}Append(str,filename,delete=""){
; str:=isobject(str)?strobj(str):str
FileExist(filename)?(FileAppend(read(filename),strreplace(filename,".","(last).")),(!delete?delete(filename):"")):""
fileappend((!delete?trim(str,"`n`r`t "):str),filename)
return str
}FileAppend(text="", Filename=""){
	if !text
	msg("failed : text or Filename Not Valid"),exit()
	FileAppend, % Text, % Filename
}Delete(filename){
FileDelete % Filename
}MSG(var){
msgBox,3,, % var
IfmsgBox, yes
return
exit
}
winflip(p1="A"){
t(w:=win(p1),100,50),Move("x"(m.x<1919?250:2150) "y25") ; t(w:=win(p1),,100,50),Move("x"(w.x>1500?250:2150) "y25")
}DSwitch(){
static sw
run("DisplaySwitch.exe " sw:=(sw="/extend"?"/clone":"/extend"))
}
Hearth(){
WinGetActiveStats, Title, WinW, WinH, WinX, WinY
mousegetpos MX, MY
ETurnRX:=.77,ETurnRY:=.47
t({"MouseX":MX,"MouseY":MY,"MouseXratio":(MX/WinW),"MouseYratio":MY/WinH},-2000,0,0,2)
loop 3 {
mouseclick,,% (ETurnRX+=.04)*WinW,% ETurnRY*WinH
sleep 50
}t({"Title":Title,"WinW":WinW,"WinHeight":WinH,"EndTurnRatioX":ETurnRX,"EndTurnRatioY":ETurnRY},-2000)
sleep(150)
MOUSEMOVE 300, 500
}
tidy(){
if winexist("Tidy Sidebar")
winclose Tidy Sidebar
WinWaitClose Tidy Sidebar
if WinExist("A")
Move("x"(m.x>1800?1950:0) " y25 w1900 h975")
send("!q")
}
;=============== Sublime AddFunc FCOUNT
; support_function:="ims)i:\Kabs.+?(?=\))"
; Keyword_keys:="ims)i:ws\Kshift.+?(?=\))"
; addfunc(Keyword_keys,"|hi")
; addfunc(support_function,fcount())
fcount(file="functions.ahk"){
f:=fileopen(file,"r"),O:={},fnum:=0
while !F.AtEOF {
line:=f.ReadLine()
RegExMatch(line,"^}?\K(?P<name>\s*\w+)(\()(?P<Param>.*)(\))\s*({)\s*(;?.*)",_)
if isfunc(_name)
O[(_name)]:=_param, fnum++ ; msg(v(_,_name,_Param,%_name%,_1,_2,_3,_4,_5,_6))
}f.close()
for Func, Param in O
ap.="`n" Func "(" param ")"
append(substr(ap,2),"funcs-" fnum "(" file ").txt")
return O
}
addfunc(byref name="",app="",file="C:\Users\Brett\AppData\Roaming\Sublime Text 3\Packages\AutoHotkey\AutoHotkey.tmLanguage"){
f:=read(file),support_function:="ims)i:\Kabs.+?(?=\))",Keyword_keys:="ims)i:\Kshift.+?(?=\))"
section:=name,RegExMatch(f,section,_)
if isobject(app){
for k,v in app
app.=!instr(f,k)?"|" k:""
}append(strreplace(f,_,_ app),a_desktop "\AutoHotkey" name.vname ".tmLanguage") ; tmlanguage saved to desktop
return append(_ app,name.vname ".txt")
}
ShowVars(ByRef _1="",ByRef _2="",ByRef _3="",ByRef _4="",ByRef _5="",ByRef _6="",ByRef _7="",ByRef _8="",ByRef _9="",ByRef _10=""){
func:=new _Struct("_AHKFunc",FindFunc(A_ThisFunc)),
sep:="`n"
param:=new _Struct("_AHKFuncparam[10]",func.param[""])
loop 10 {
if in(_%A_Index%,"`n,`t,`r, ,|,  ,   ") AND _%A_Index%.length<5
sep:=_%A_Index%
else,if param[A_Index].var.type=0 && var:=new _Struct("_AHKVar",param[A_Index].var.AliasFor[""]) ;alias
 str .= sep var.name (_%A_Index%.length>150 AND instr(_%A_Index%,"`n")?":`n":" = ") _%A_Index%
}Return SubStr(str, 2)
}v(ByRef _1="",ByRef _2="",ByRef _3="",ByRef _4="",ByRef _5="",ByRef _6="",ByRef _7="",ByRef _8="",ByRef _9="",ByRef _10=""){
return showvars(_1?_1:"",_2?_2:"",_3?_3:"",_4?_4:"",_5?_5:"",_6?_6:"",_7?_7:"",_8?_8:"",_9?_9:"",_10?_10:"")
}
SplitPath(InputPath,ByRef name="name",ByRef dir="dir",ByRef ext="ext", ByRef name_no_ext="name_no_ext",ByRef Drive="Drive") {
 SplitPath, InputPath, name, dir, ext, name_no_ext, drive
 return {"name":name,"dir":dir,"ext":ext,"name_no_ext":name_no_ext,"drive":drive}
}

exitapp(ExitReason, ExitCode){
; iw("ExitReason",ExitReason,a_thisfunc),iw("ExitCode",ExitCode,a_thisfunc),h:=HS("exitapp")
; if (h.GetCapacity()!=0){
; append("#If !WinActive(""ahk_class PX_WINDOW_CLASS"")","Hotstrings.ahk"),delete("HS_call.ahk")
; for _,long in h
; append("`n:O:" _ "::","Hotstrings.ahk","no"),append("HS(""" _ """,""" long """)`n","HS_call.ahk","no")
; }
if (exitreason="full")
run E:\AH\onexitapp.ahk
exitapp
}
; HS("pp","tuck","D")
HS(_="",long="",del=""){
static HS:={}
if (_="exitapp")
return HS
if (HS.haskey(_)) AND (del)
HS.delete(_),exit()
if (long=""){
if HS.haskey(_)
clip(HS[_]),t(_ " = " HS[_])
else,t(v(_,long,HS[_],_) "failed"),exit()
return HS[_]
}if !HS.haskey(_)
HS[_]:=long,IW(_,long,a_thisfunc)
}