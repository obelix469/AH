return
#IfWinExist,
class BC {
static Hotstring:={}
static IV_path:="E:\AH\inc\IncludeVar.ahk"
static funcs:=
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
ML:=ML?ML:"Hotkey,GUI,MENU,Misc,Settings,Script,path,Timedate,loop"
for each,var in ss(ML)
ret.=IR("ML",var) ","
if (f="R")
return ret
for k,v in ss(ret)
(%v%)?a.=v "=" (%v%) "`n"
return a
}

}
; funcs:={}
; fcount(file="",prop=""){
; static Funcs:={},thres:=10,comm1:=";[[:print:]]*?\n",comm2:="m)\/\*.*\*\/"
; if isfunc(file) and funcs.haskey(file)
; return prop?funcs[file][prop]:funcs[file]
; if !file
; return funcs
; if !(at:=FileExist(File) && !InStr(FileExist(File), "D"))
; RETURN file "`nfailed"
; RF:=read(file),fnum:=0,p:=1,O:={},ma:=strip(rf,"m)\/\*.*\*\/",";[[:print:]]*\R*"),bra:="{{"
; WHILE F:=MatchBalance(rf,"{","}","miO)^\}?\s*\K(?P<FL>(?P<N>[\w_]+)[(](?P<Params>[^)]*)[)])\s*[{][^}]*?[}]")
; Funcs[F.N]:=F,O[F.FL]:=F.FL
; return O.GetCapacity()?O:""
; }

; allfuncs(FilePattern=""){
; NL:="`r`n",FilePattern:=FilePattern=""?"E:\AH\lib\*.ahk":FilePattern
; loop Files,% FilePattern
; ap.=A_LoopFileFullPath "`n" join("`n",fcount(A_LoopFileFullPath)*)
; append(ap,"AllFuncs.txt","DEL")
; }

BIV(ML="",f=""){
return BC.BIV(ML,F)
}
HS(k="",v="",opt="O"){
return BC.Hotstrings(k,v,opt)
}
return
#IfWinExist,
#Hotstring EndChars `t ; -()[]{}:;'"/\,.?!`n
:O:exec::
#INCLUDE E:\AH\inc\O_HS.ahk
#if winactive("Form 1095-")
:O:BCBS::
:O:NHP::
#ifwinexist
:*B0:itunes::
:*B0:exec::
#INCLUDE E:\AH\inc\T_HS.ahk
#if winactive("Form 1095-")
:*B0:BCBS::
:*B0:NHP::
sendinput % HS().isbiv
return
#if
; :O:exec::
; #INCLUDE E:\AH\inc\O_HS.ahk
; #if winactive("Form 1095-")
; :O:BCBS::
; :O:NHP::winexist
; :*B0:itunes::
; :*B0:exec::
; #INCLUDE E:\AH\inc\T_HS.ahk
; #if winactive("Form 1095-")
; :*B0:BCBS::
; :*B0:NHP::
; if winactive("ahk_exe sublime_text.exe")
; t(HS().isbiv)
; else,sendinput % HS().isbiv

; if !instr(TF,(toapp:=":*B0:" k "::"))
; fileappend % "`n" toapp,% T_PATH
; ; if !HS.haskey(k) and !instr(TF,(toapp:=":*B0:" k "::")){
; if !instr(OF,(toapp:=":" opt ":" k "::"))
; fileappend % "`n" toapp ,% O_PATH
; }
; else,if m(IV,k "=\K[[print]]*",match)
; IV:=sr(iv,k "=" match),append("`n" IV,IV_path),IV:=read(IV_path)

; HSs(f=""){
; HS:=HS()
; RegExMatch(a_thisHotkey,":([^:]*):([^:]*)",M), t(f  m1 " : " m2 " = " HS[M2])
; if (m1~="O") ;(m1~="\*B0")
; clip(hs[m2])
; }
; #ifwinexist
; #If !WinActive("ahk_class PX_WINDOW_CLASS")
; :O:Ret::Reticule469
; :O:lic::licorice8
; :O:vent::ventricle469
; :O:Vent::Ventricle469
; :O:pass::Klavius123
; :O:ups::abcDQS132#  ; adobe acrobat sign in
; :O:ob::obelix469@gmail.com
; :O:bert::bertram.arnold@yahoo.com
; :O:ids::idspispopd469
; :O:pp::tuckernuck!
; :O:itunes::Reticule469!

; HS("Ret","Reticule469")
; HS("lic","licorice8")
; HS("vent","ventricle469")
; HS("Vent","Ventricle469")
; HS("pass","Klavius123")
; HS("ups","abcDQS132#")  ; adobe acrobat sign in
; HS("ob","obelix469@gmail.com")
; HS("bert","bertram.arnold@yahoo.com")
; HS("ids","idspispopd469")
; HS("pp","tuckernuck!")
; HS("itunes","Reticule469!")

