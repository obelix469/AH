;===================== CLASSES ===================
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

#If
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
; PTMM:=A_TitleMatchMode
; SCC:=A_StringCaseSense
; SetTitleMatchMode,3
; StringCaseSense, On
static IV_path:=this.IV_path,T_PATH:="E:\AH\inc\T_HS.ahk",O_PATH:="E:\AH\inc\O_HS.ahk",TF:=read(T_PATH),OF:=read(O_PATH),IV:=read(IV_path)
sort, IV, U
IF A_THISHOTKEY && RegExMatch(a_thisHotkey,":([^:]*):([^:]*)",M) && t(m1 " : " m2 "=" This.Hotstring[M2]) && (m1!="*B0")
{
; SetTitleMatchMode,% PTMM
; StringCaseSense, % SCC
return This.Hotstring[m2]
}
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
}
; SetTitleMatchMode,% PTMM
; StringCaseSense, % SCC
}
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
fcount(file="",prop=""){
  return BC.fcount(File,Prop)
  }
BIV(ML="",f=""){
	return BC.BIV(ML,F)
	}
HS(k="",v="",opt="O"){
	return BC.Hotstrings(k,v,opt)
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
class ClassList { ; array()
__set(k,v){
if !this.GetCapacity()
this.base.array:="",this.base.array:=k,this.base.A:=[]
else,this.base.array:=this.base.array "," k
this.base.A[(this.A.length()+1)]:=v
; this.base.A[(this.A.length()+1)].keyname:=k
(!this.GetCapacity()?this.base.list:="":""),this.base.list:=this.list k (k=""?"":": ")(isobject(v)?strobj(v):v) "`n"
}}

class BL {
__set(k,v){
if !this.GetCapacity()
this.base.i:=0
Index:=this.base.i+=1
}}

Oset(byref this,k,v){
if !this.haskey("Array")
this["Array"]
this["Array"]:=[]
this.ObjMaxIndex := Object.MaxIndex()
objrawset(this,"Array",[])
objrawset(this,"Array",[])
O.array.push
}
class Mouse {
__New(coordmode=""){
cmode("all",coordmode)
MouseGetPos,X,Y
this["X"]:=X,this["Y"]:=Y
MouseGetPos,,,id,control
WinGetTitle,title,ahk_id %id%
WinGetClass,class,ahk_id %id%
this.title:=title,this.class:=class
(id?this.id:=id:""),(control?this.control:=control:"")
for k,v in ss(biv("misc,menu,gui","R"))
(%v%)?this[v]:=(%v%):""
return THIS
}}
class aa
{
__set(k,v){
if this.haskey(k) and (this[k]!=v)
append(k ":= " this[k] "--->" v,"change.log")
}}

#If
