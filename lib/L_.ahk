#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
L_(){
return true
}
L_cutcsv(file="E:\AH\icmg_.txt",endfile="E:\AH\tst.txt",TransLimit=10000,startD=20150101){
SetFormat, Float, 0.2
delete(endfile)
P:=splitpath(file),endP:=splitpath(endfile)
txt:=r(sr(read(file),","),"`r`n","`n")
; append(r(txt,"sm)([\d]{0,15}\.\d\d)([^ ]{2})","$2$1 "),"E:\AH\minus.txt")
loop {
if !RegExmatch(txt,"sm)LAST STATEMENT \.{2,} \d\d\/\d\d\/\d\d (?P<lastbal>[\d]{0,15}\.\d\d)(?P<in>[^ ])?",m)
break
lastbal:=(min?"-":"")mlastbal
RegExmatch(txt,"sm)" m "(?P<Trans>..+?)BALANCE THIS STATEMENT \.{2,} (?P<Date>\d\d\/\d\d\/\d\d) (?P<end_Bal>[\,\d]+\.\d\d)(?P<min>[^ ])?..+?(?P<etc>TOTAL CREDITS..+?TOTAL DEBITS..+?)[-=\*]",_)
_end_Bal:=(_min?"-":"")_end_Bal,txt:=sr(txt,_),_trans:=r(_trans,"sm)(\d{0,15}\.\d\d)([^ ])","$2$1 ")
_Date:=r(_Date,"([\d][\d])/([\d][\d])/([\d][\d])","20$3$1$2")
if (_date<startd)
continue
info.="E:\AH\" sr(_Date,"/","-") " (" lastbal ") - (" _end_bal ")`n" _etc "`n"
ninfo.="`n"_trans "`n" lastbal "`n" _end_bal
toapp.=trans(_trans,lastbal,_end_Bal,endfile,TransLimit)
}
RegExMatch(toapp,"sm)^..*<FITID>\d+000(?P<num>[\d]+)",fit)
HD:=read("E:\AH\QBO\HD.qbo") "`n"
FT:=read("E:\AH\QBO\FT.qbo")
FT:=r(FT,"<BALAMT>\K(.*)",_end_bal)
_Date:=r(_Date,"([\d][\d])\/([\d][\d])\/([\d][\d])","20$3$1$2")
FT:=r(FT,"<DTASOF>\K(.*)",_Date)
append(info ninfo,"info.txt")
endfile:=endp.dir "\" endp.nno "(" fitnum " Trans)(" _end_Bal ")." endp.ext
append(HD "`n" toapp FT,endfile)
}