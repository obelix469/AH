#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
<STMTTRN>
<TRNTYPE>
<DTPOSTED>
<TRNMT>
<FITID>
<CHECKNUM>
<REFNUM>
<NAME>
QBO.Tags:=["TRNTYPE","DTPOSTED","DTUSER","DTAVAIL","TRNMT","FITID","CORRECTFITID","CORRECTACTION","SRVRTID","CHECKNUM","REFNUM","SIC","PAYEEID","NAME"]
QBO.TRNTYPES:="CREDIT,DEBIT,INT,DIV,FEE,SRVCHG,DEP,ATM,POS,XFER,CHECK,PAYMENT,CASH,DIRECTDEP,DIRECTDEBIT,REPEATPMT,OTHER"

new_csv(file="E:\AH\icmg_.txt",endfile="E:\AH\tst.txt",TransLimit=10000,startD=20150101){
Transnum:=0
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

;==================================
loop {
if (!RegExMatch(_trans,"sm)(?P<NAME>[a-zA-Z][\w\d- #]+) \n?(?P<TRNAMT>[\,\d]{0,10}\.\d\d) (?P<DTPOSTED>\d\d\/\d\d\/\d\d) (?P<bal>[\d]+\.\d\d)(?P<min>[^ ])?",T_)) OR (transnum==TransLimit)
break
name:="<PAYEEID>",T_bal:=(T_min?"-":"")T_bal,name:="<NAME>"
if (lastbal>T_bal)
T_TRNAMT:="-" T_TRNAMT,T_TRNTYPE:="DEBIT"
else,T_TRNTYPE:="CREDIT",name:="<NAME>"
T_DTPOSTED:=r(T_DTPOSTED,"([\d][\d])/([\d][\d])/([\d][\d])","20$3$1$2"),rem:=strreplace(rem,T_)
lastbal:=T_bal,FITID:="`n<FITID>" a_now "000" Transnum "`n"
if instr(T_name,"CHECK # ")
name:="<NAME>",Checknum:="<CHECKNUM>" r(T_name,"[^0-9]*","") "`n"
else,Checknum:=""
if instr(T_name,"CHECK # ")
continue
Transnum++,toApp.="<STMTTRN>`n<TRNTYPE>" T_TRNTYPE "`n<DTPOSTED>" T_DTPOSTED "`n<TRNAMT>" T_TRNAMT FITID Checknum name substr(T_NAME,1,31) "`n</STMTTRN>`n"
}
; toapp.=trans(_trans,lastbal,_end_Bal,endfile,TransLimit) ==================================

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


cutcsv(file="E:\AH\icmg_.txt",endfile="E:\AH\tst.txt",TransLimit=10000,startD=20150101){
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

Trans(rem,lbal,endbal,EndFile="E:\AH\tst.txt",TransLimit=10,INTUBID=19074){
static Transnum:=0
lastbal:=lbal
loop {
if (!RegExMatch(rem,"sm)(?P<NAME>[a-zA-Z][\w\d- #]+) \n?(?P<TRNAMT>[\,\d]{0,10}\.\d\d) (?P<DTPOSTED>\d\d\/\d\d\/\d\d) (?P<bal>[\d]+\.\d\d)(?P<min>[^ ])?",_)) OR (transnum==TransLimit)
break
name:="<PAYEEID>",_bal:=(_min?"-":"")_bal,name:="<NAME>"
if (lastbal>_bal)
_TRNAMT:="-" _TRNAMT,_TRNTYPE:="DEBIT"
else,_TRNTYPE:="CREDIT",name:="<NAME>"
_DTPOSTED:=r(_DTPOSTED,"([\d][\d])/([\d][\d])/([\d][\d])","20$3$1$2"),rem:=strreplace(rem,_)
lastbal:=_bal,FITID:="`n<FITID>" a_now "000" Transnum "`n"
if instr(_name,"CHECK # ")
name:="<NAME>",Checknum:="<CHECKNUM>" r(_name,"[^0-9]*","") "`n"
else,Checknum:=""
if instr(_name,"CHECK # ")
continue
Transnum++,toApp.="<STMTTRN>`n<TRNTYPE>" _TRNTYPE "`n<DTPOSTED>" _DTPOSTED "`n<TRNAMT>" _TRNAMT FITID Checknum name substr(_NAME,1,31) "`n</STMTTRN>`n"
}return toapp
}