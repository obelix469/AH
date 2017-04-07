return
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
HS(k="",v="",opt="O"){
static HS:={},IV_path:="E:\AH\inc\IncludeVar.ahk",T_PATH:="E:\AH\inc\T_HS.ahk",O_PATH:="E:\AH\inc\O_HS.ahk",TF:=read(T_PATH),OF:=read(O_PATH),IV:=read(IV_path)
sort, IV, U
IF A_THISHOTKEY && RegExMatch(a_thisHotkey,":([^:]*):([^:]*)",M) && t(m1 " : " m2 " = " HS[M2]) && (m1!="*B0")
return hs[m2]
else,if (k="" && v="")
return HS
else,if (HS.haskey(k) && v="")
return HS[k]
else,if !HS.haskey(k) && k!="" && v!=""
HS[k]:=v
if !instr(IV,k "=" v){
if instr(IV,k "="){
RegExMatch(IV,k "=[[:print:]`t]*",M) ;,IV:=r(IV,k "=[[:print:]`t]*",k "=" v)
append(r(IV,k "=[[:print:]`t]*",k "=" v),IV_path)
}
else, fileappend % k "=" v "`n" , % IV_path
IV:=read(iv_path)
}

; if !instr(IV,app:=k "=" sr(v,"`t")){
; IV.=app "`n"
; sort, IV, U
; fileappend % app "`n" , % IV_path
; }
if !instr(TF,(toapp:=":*B0:" k "::"))
fileappend % "`n" toapp,% T_PATH
; if !HS.haskey(k) and !instr(TF,(toapp:=":*B0:" k "::")){
if !instr(OF,(toapp:=":" opt ":" k "::"))
fileappend % "`n" toapp ,% O_PATH
}
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

