
; Loop %0%  ; For each parameter (or file dropped onto a script):
; {
;     GivenPath := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
;     Loop %GivenPath%, 1
;         filepath = %A_LoopFileLongPath%
;     ; MsgBox The case-corrected long path name of file`n%GivenPath%`nis:`n%LongPath%
; }
if %0%
filepath=%1%
else,filepath := "E:\AH\TakeOwnership.exe"	;set the target full file path
; if !filepath
; filepath := "E:\AH\TakeOwnership.exe"	;set the target full file path
; filepath=%1%
; else,
StringReplace, filepath, filepath, \, \\, All	;double backslashes
objWMIService := ComObjGet("winmgmts:{impersonationLevel=impersonate}!\\" . A_ComputerName . "\root\cimv2")
WQLQuery = SELECT * FROM CIM_Datafile WHERE Name = '%filepath%'		;CIM_Datafile
colFiles := objWMIService.ExecQuery(WQLQuery)._NewEnum

While colFiles[objFile] {
	FileProperties := "Access mask:`t`t" . objFile.AccessMask . "`n"
	. "Archive:`t`t`t" . objFile.Archive . "`n"
	. "Compressed:`t`t" . objFile.Compressed . "`n"
	. "Compression method:`t`t" . objFile.CompressionMethod . "`n"
	. "Creation date:`t`t" . objFile.CreationDate . "`n"
	. "Computer system name:`t" . objFile.CSName . "`n"
	. "Drive:`t`t`t" . objFile.Drive . "`n"
	. "8.3 file name:`t`t" . objFile.EightDotThreeFileName . "`n"
	. "Encrypted:`t`t" . objFile.Encrypted . "`n"
	. "Encryption method:`t" . objFile.EncryptionMethod . "`n"
	. "Extension:`t`t`t" . objFile.Extension . "`n"
	. "File Name:`t`t" . objFile.FileName . "`n"
	. "File Size:`t`t`t" . objFile.FileSize . "`n"
	. "File Type:`t`t`t" . objFile.FileType . "`n"
	. "File system name:`t`t" . objFile.FSName . "`n"
	. "Hidden:`t`t`t" . objFile.Hidden . "`n"
	. "Last accessed:`t`t" . objFile.LastAccessed . "`n"
	. "Last modified:`t`t" . objFile.LastModified . "`n"
	. "Manufacturer:`t`t" . objFile.Manufacturer . "`n"
	. "Name:`t`t`t" . objFile.Name . "`n"
	. "Path:`t`t`t" . objFile.Path . "`n"
	. "Readable:`t`t`t" . objFile.Readable . "`n"
	. "System:`t`t`t" . objFile.System . "`n"
	. "Version:`t`t`t" . objFile.Version . "`n"
	. "Writeable:`t`t`t" . objFile.Writeable
}
msgbox % FileProperties
exitapp
