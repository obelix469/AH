#INCLUDE <_struct>
#Include <AHKStructures>
a:=1
b:=2
c:=3
MsgBox % ShowVars(a,b,c)
ShowVars(ByRef _1="",ByRef _2="",ByRef _3="",ByRef _4="",ByRef _5="",ByRef _6="",ByRef _7="",ByRef _8="",ByRef _9="",ByRef _10=""){
func:=new _Struct("_AHKFunc",FindFunc(A_ThisFunc))
sep:="`n"
param:=new _Struct("_AHKFuncparam[10]",func.param[""])
loop 10 {
if in(_%A_Index%,"`n,`t,`r, ,|,  ,   ") AND _%A_Index%.length<5
sep:=_%A_Index%
else,if param[A_Index].var.type=0 && var:=new _Struct("_AHKVar",param[A_Index].var.AliasFor[""]) ;alias
 str .= sep var.name (_%A_Index%.length>150 AND instr(_%A_Index%,"`n")?":`n":" = ") _%A_Index%
}Return SubStr(str, 2)
}