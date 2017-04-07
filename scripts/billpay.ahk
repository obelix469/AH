SetWorkingDir %A_ScriptDir%
SetBatchLines,-1
SetTitleMatchMode,2
Tags:=["TRNTYPE","DTPOSTED","DTUSER","DTAVAIL","TRNAMT","FITID","CORRECTFITID","CORRECTACTION","SRVRTID","CHECKNUM","REFNUM","SIC","PAYEEID","NAME","NAME"]
#INCLUDE %A_ScriptDir%\lib\Include.ahk
CSVTOCONVERT=E:\Downloads\csv.csv
NEWCSV=E:\Downloads\csv.qbo
FileDELETE, %NEWCSV%
FileReadLine, H, %CSVTOCONVERT%, 1
H:=regexreplace(H,"TotalPayment")
H:=regexreplace(H,"Payment Type","<CHECKNUM>") ; Payment
H:=RegExReplace(H,"<?Amount>?","<TRNAMT>")
H:=RegExReplace(H,"<?Category>?","<MEMO>")
H:=regexreplace(H,"<?To>?","<NAME>")
Loop, Parse, H, CSV
Col%A_index%:=A_LoopField
FileRead, V, %CSVTOCONVERT%
regexmatch(v,".*",m),v:=sr(v,m)
V:=regexreplace(V,"\$?([\d]+)`,?([\d])","$1$2") ; $ and , from Amount if exist
V:=trim(V," `t`r`n"),i:=5432100000
Loop, Parse, V,`n
{
a.="<STMTTRN>`n"
if instr(A_LoopField,"Check#")
a.="<TRNTYPE>CHECK`n"
else,if instr(A_LoopField,"""-")
a.="<TRNTYPE>DEBIT`n"
else, ;if instr(A_LoopField,"""-")
a.="<TRNTYPE>CREDIT`n"
if d:=R(A_LoopField,".*([\d]{2})\/([\d]{2})\/([\d]{4}).*","$3$1$2")
a.="<DTPOSTED>" d "`n"
    Loop, Parse, A_LoopField, CSV
    {
    if !(A_LoopField AND Col%A_index%)
		continue
		if (Col%A_index% ="<TRNAMT>")
		a.="<FITID>" i++ "`n" ; O[Col%A_index%]:=A_LoopField
		else,a.= Col%A_index%  A_LoopField "`n"
    }
a.="</STMTTRN> `n`n"
}v:=a,V:=R(V,"<?(DeliveryOn|MEMO|Status|TotalPayment)>?.+?\R") ;
V:=sr(V,"Check#"),v:=r(v,"<CHECKNUM>PMT\R+")
t(append(v,newcsv))
sleep 2000
exitapp
esc::
exitapp

; V:=regexreplace(V,"<.+>PMT\R") ; Invalid Fields
; V:=regexreplace(V,"<?Payment Type>?","<CHECKNUM>")
; V:=regexreplace(V,"<?DeliveryOn>?","<DTPOSTED>")
; V:=regexreplace(V,"<?DeliveryOn>?.+?\R")
; V:=regexreplace(V,"<?(Status|TotalPayment)>?.+?\R")
; V:=regexreplace(V,"<.+>PMT\R") ; Invalid Fields



; CSVTOCONVERT=E:\Downloads\csv.csv
; NEWCSV=E:\Downloads\csv.qbo
; FileDELETE, %NEWCSV%
; FileReadLine, Header, %CSVTOCONVERT%, 1
; Loop, Parse, Header, CSV
; Col%A_index%:=A_LoopField
; FileRead, V, %CSVTOCONVERT%
; V:=regexreplace(V,Header)
; V:=regexreplace(V,"\$?([\d]+)`,?([\d])","$1$2") ; Clean $ and , from Amount if exist
; V:=trim(V," `t`r`n")
; V:=RegExReplace(V,"<?Category>?","<MEMO>")
; V:=RegExReplace(V,"<?Amount>?","<TRNAMT>")
; V:=RegExReplace(V,"([\d]{2})\/([\d]{2})\/([\d]{4})","$3$1$2") ;Date Format
; V:=regexreplace(V,"<?Payment Type>?","<CHECKNUM>")
; V:=regexreplace(V,"<?DeliveryOn>?","<DTPOSTED>")
; V:=regexreplace(V,"<To>","<NAME>")
; Loop, Parse, V, `n
; {
; line:=A_index
; a.="<STMTTRN>`n"
; if instr(A_LoopField,"Check#")
; a.="<TRNTYPE>CHECK`n"
; else,if instr(A_LoopField,"""-")
; a.="<TRNTYPE>DEBIT`n"
; else,if instr(A_LoopField,"""-")
; a.="<TRNTYPE>CREDIT`n"
;     Loop, Parse, A_LoopField, CSV
;     {
;     if (A_LoopField AND Col%A_index%){
; O[Col%A_index%]:=A_LoopField
; a.= Col%A_index%  A_LoopField "`n"
;     ; a.="% "<" Col%A_index% ">" A_LoopField "`n""

; 		}
;     }
; for k,v in Tags:=["TRNTYPE","DTPOSTED","DTUSER","DTAVAIL","TRNMT","FITID","CORRECTFITID","CORRECTACTION","SRVRTID","CHECKNUM","REFNUM","SIC","PAYEEID","NAME"]
; a:=r(a,"[<>]")
; msg(a)
; if O.str(v,""
; a.="</STMTTRN> `n`n"
; }
; FileRead, V, %NEWCSV%
; FileDELETE, %NEWCSV%
; V:=RegExReplace(V,"Check#")
; V:=RegExReplace(V,"<?Category>?","<MEMO>")
; V:=RegExReplace(V,"<?Amount>?","<TRNAMT>")
; V:=RegExReplace(V,"([\d]{2})\/([\d]{2})\/([\d]{4})","$3$1$2") ;Date Format
; V:=regexreplace(V,"<?Payment Type>?","<CHECKNUM>")
; V:=regexreplace(V,"<?DeliveryOn>?","<DTPOSTED>")
; V:=regexreplace(V,"<To>","<NAME>")
; V:=regexreplace(V,"<(Status|TotalPayment)>.+?\R") ; Invalid Fields
; V:=regexreplace(V,"<.+>PMT\R") ; Invalid Fields
; a.="% V"
