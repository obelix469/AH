return
#Hotstring EndChars `t ; -()[]{}:;'"/\,.?!`n 
:O:exec::
#INCLUDE *i E:\AH\inc\O_HS.ahk
#if winactive("Form 1095-")
:O:BCBS::
:O:NHP::
; (a:=HSS())?(SENDI(a,true),a:=""):"" ; sendinput % (a:=HSs())?%a%:exec
; RETURN
#ifwinexist
:*B0:itunes::
:*B0:exec::
#INCLUDE *i E:\AH\inc\T_HS.ahk
#if winactive("Form 1095-")
:*B0:BCBS::
:*B0:NHP::
HSS()
RETURN
#ifwinexist
#If !WinActive("ahk_class PX_WINDOW_CLASS")
:O:Ret::Reticule469
:O:lic::licorice8
:O:vent::ventricle469
:O:Vent::Ventricle469
:O:pass::Klavius123
:O:ups::abcDQS132#
:O:ob::obelix469@gmail.com
:O:bert::bertram.arnold@yahoo.com
:O:ids::idspispopd469
:O:pp::tuckernuck!
:O:itunes::Reticule469!

return
HSs(f=""){
RegExMatch(a_thisHotkey,":(.*):(.*)$",M), t(f  m1 " : " m2 " = " SR(%m2%,"`t"," | "))
if (m1~="O") ;(m1~="\*B0")
sendi(%M2%)
}
HS(k,v=""){
static HS:={},IV_path:="E:\AH\inc\IncludeVar.ahk",T_PATH:="E:\AH\inc\T_HS.ahk",O_PATH:="E:\AH\inc\O_HS.ahk",TF:=read(T_PATH),OF:=read(O_PATH),IV:=read(IV_path)
if HS.haskey(k)
t(k " = " HS[k])
else,if !HS.haskey(k)
HS[k]:=v
if !instr(IV,k "=")
fileappend % "`n" k "=" v , % IV_path
else,if !m(IV,k "=\K(.*)",match)
IV:=sr(iv,k "=" match),append("`n" IV,IV_path),IV:=read(IV_path)
if !instr(TF,(toapp:=":*B0:" k "::"))
fileappend % "`n" toapp,% T_PATH
; if !HS.haskey(k) and !instr(TF,(toapp:=":*B0:" k "::")){
if !instr(OF,(toapp:=":O:" k "::"))
fileappend % "`n" toapp ,% O_PATH
}

oldHS(_="",long="",del=""){
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
return
