ReportF(Directory,Changes){
	return WFF(Directory,Changes)
 static O:={}
 For Each,C In Changes {
 Action:=C.Action,Name:=C.Name,OldName:=C.oldname,isdir:=C.isdirC
 If(Action=4&&instr(Name,"videoplayback")&&instr(Name,"crdownload")){
 NewName:=CleanFileName(SR(WGAT()," - YouTube - Google Chrome")) ".mp4"
 WorkingDir:="C:\Users\Brett\Videos"
 Target:= WorkingDir "\" Newname

 LinkFile:=Directory "\" CleanFileName(SR(WGAT()," - YouTube - Google Chrome")) ".lnk"
 FCS:=Func("FileCreateShortcut"),RunState:=1
 O[T:=filegettime(name,"C")]:=Obj:=%FCS%(Target,LinkFile,WorkingDir,Args,Description,IconFile,ShortcutKey,IconNumber,RunState)
 IniWrite,% r(r(strobj(Obj),"(`r?`n){1,}","`n"),"(`r|`n)$","`r`n"),Download.ini,% T  ; O[Obj[Time]:=filegettime(name,"C")]:=OBJ
 }
 else if !regexmatch(name,"\.(crdownload|tmp|temp)")&&action=4
  CO:={T:=filegettime(name,"C"):C},CO:=r(r(strobj(CO),"(`r?`n){1,}","`n"),"(`r|`n)$","`r`n"),t(IniWrite(RemoveEmptyDash(co),"Download.ini",T?T++:"FAIL"))
 If(Action=4&&instr(Name,"xvideos")&&instr(oldName,"crdownload")){
 atitle:=r(wgt("XVID")," *?-? ?XVID.*"),t(MoveTo:="E:\ANIME\" (atitle?atitle:a_now) "." spath(name).ext),FileCopy(Name,MoveTo,1) ;append("`n","log.txt","n"))
 t(FileMove(Name,"E:\ANIME\xvid",1))
 }
 If(Action=4&&instr(Name,"videoplayback")&&instr(OldName,"crdownload")){
 Obj:=O[filegettime(name,"C")],t(FileMove(Name,obj.target,1))
	R:="mklink /H """ name """ """ obj.LinkFile """"
	}
	If(Action=4&&instr(Name,".mp4")&&instr(OldName,"crdownload"))
 t(FileMove(Name,"C:\Users\Brett\Videos",1))
 If regexmatch(name,"[.]m?html?")
 t(FileMove(Name,A_MyDocuments "\HTML",1))
 If instr(name,".pdf")
 t(FileMove(Name,A_MyDocuments "\HTML",1))
 if instr(name,"session_buddy_export_")&&action=4&&!instr(name,"crdownload")
  t(Filecopy(Name,A_MyDocuments "\txt\Session_buddy\",1))
 }}
E:\Downloads\videoplayback -> E:\Videos\LNK\Never Come Down [PRESIDENTIAL REMASTER].mp4  ErrorLevel=1
