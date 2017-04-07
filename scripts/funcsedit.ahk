#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
Funcs() {
	Return, true
}JOIN(sep, params*){
	for index,params in PARAMS
	str .= params . sep
	return SubStr(str, 1, -StrLen(sep))
}Run(Target, WorkingDir = "", Mode = "") {
    Run, %Target%, %WorkingDir%, %Mode%, v
    Return, v 
}Runwait(Target, WorkingDir = "", Mode = "") {
    Runwait, %Target%, %WorkingDir%, %Mode%, v
    Return, v 
}RunWaitOne(command) {
    ; WshShell object: http://msdn.microsoft.com/en-us/library/aew9yb99
    shell := ComObjCreate("WScript.Shell")
    ; Execute a single command via cmd.exe
    exec := shell.Exec(ComSpec " /C " command)
    ; Read and return the command's output
    return exec.StdOut.ReadAll()
}runclose(target,extitle=""){
	if target contains .ahk
	extitle=Sublime
	if winexist(target,,extitle)
	close()
	else,run(target)
	return ErrorLevel
}close(){
	winclose 
	winwaitclose
	return ErrorLevel
}WA(){
	winactivate
	winwaitactive
}sub(var){
	if islabel(var)
	gosub %var%
	else,t(var " is not a label")
}sleep(ms){
	sleep %ms%
}reload(){
	reload
}pause(){
	pause
}exit(){
	exit
}ExecScript(Script, Wait:=true){
    shell := ComObjCreate("WScript.Shell")
    exec := shell.Exec("AutoHotkey.exe /ErrorStdOut *")
    exec.StdIn.Write(script)
    exec.StdIn.Close()
    if Wait
        return exec.StdOut.ReadAll()
}Between(ByRef var, LowerBound, UpperBound){
	If var between %LowerBound% and %UpperBound%
		Return, true
}NotBetween(ByRef var, LowerBound, UpperBound){
	If var not between %LowerBound% and %UpperBound%
		Return, true
}In(ByRef var, MatchList){
	If var in %MatchList%
		Return, true
}NotIn(ByRef var, MatchList){
	If var not in %MatchList%
		Return, true
}Contains(ByRef var, MatchList) {
	If var contains %MatchList%
		Return, true
}NotContains(ByRef var, MatchList) {
    If var not contains %MatchList%
        Return, true
}Is(ByRef var, type) {
	If var is %type%
		Return, true
}IsNot(ByRef var, type) {
	If var is not %type%
		Return, true
}ControlGet(Cmd, Value = "", Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlGet, v, %Cmd%, %Value%, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}ControlGetFocus(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlGetFocus, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}ControlGetText(Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlGetText, v, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}DriveGet(Cmd, Value = ""){
	DriveGet, v, %Cmd%, %Value%
	Return, v
}DriveSpaceFree(Path){
	DriveSpaceFree, v, %Path%
	Return, v
}EnvGet(EnvVarName){
	EnvGet, v, %EnvVarName%
	Return, v
}FileGetAttrib(Filename = ""){
	FileGetAttrib, v, %Filename%
	Return, v
}FileGetShortcut(LinkFile, ByRef OutTarget = "", ByRef OutDir = "", ByRef OutArgs = "", ByRef OutDescription = "", ByRef OutIcon = "", ByRef OutIconNum = "", ByRef OutRunState = "") {
FileGetShortcut, %LinkFile%, OutTarget, OutDir, OutArgs, OutDescription, OutIcon, OutIconNum, OutRunState

}FileGetSize(Filename = "", Units = "") {
FileGetSize, v, %Filename%, %Units%
Return, v
}FileGetTime(Filename = "", WhichTime = "") {
FileGetTime, v, %Filename%, %WhichTime%
Return, v
}FileGetVersion(Filename = "") {
FileGetVersion, v, %Filename%
Return, v
}FileRead(Filename){
FileRead, v, %Filename%
Return, v
}FileReadLine(Filename, LineNum){
	FileReadLine, v, %Filename%, %LineNum%
	Return, v
}FileSelectFile(Options = "", RootDir = "", Prompt = "", Filter = "") {
	FileSelectFile, v, %Options%, %RootDir%, %Prompt%, %Filter%
	Return, v
}SplitPath(ByRef InputVar, ByRef name = "", ByRef dir = "",ByRef ext="", ByRef name_no_ext = "", ByRef Drive = "") {
	SplitPath, InputVar, name, dir, ext, name_no_ext, drive
	return {"name":name,"dir":dir,"ext":ext,"name_no_ext":name_no_ext,"drive":drive}
}FileSelectFolder(StartingFolder = "", Options = "", Prompt = "") {
	FileSelectFolder, v, %StartingFolder%, %Options%, %Prompt%
	Return, v
}FormatTime(YYYYMMDDHH24MISS = "", Format = "") {
	FormatTime, v, %YYYYMMDDHH24MISS%, %Format%
	Return, v
}GuiControlGet(Subcommand = "", ControlID = "", Param4 = "") {
	GuiControlGet, v, %Subcommand%, %ControlID%, %Param4%
	Return, v
}ImageSearch(ByRef OutputVarX, ByRef OutputVarY, X1, Y1, X2, Y2, ImageFile) {
	ImageSearch, OutputVarX, OutputVarY, %X1%, %Y1%, %X2%, %Y2%, %ImageFile%
}Input(Options = "", EndKeys = "", MatchList = "") {
	Input, v, %Options%, %EndKeys%, %MatchList%
	Return, v
}InputBox(Title = "", Prompt = "", HIDE = "", Width = "", Height = "", X = "", Y = "", Font = "", Timeout = "", Default = "") {
	InputBox, v, %Title%, %Prompt%, %HIDE%, %Width%, %Height%, %X%, %Y%, , %Timeout%, %Default%
	Return, v
}PixelGetColor(X, Y, RGB = "") {
	PixelGetColor, v, %X%, %Y%, %RGB%
	Return, v
}Random(Min = "", Max = "") {
	Random, v, %Min%, %Max%
	Return, v
}RegRead(RootKey, SubKey, ValueName = "") {
	RegRead, v, %RootKey%, %SubKey%, %ValueName%
	Return, v
}RegWrite(ValueType,rootk,k,v){
RegWrite,% ValueType,% rootk,% k,% Test,% v
}SoundGet(ComponentType = "", ControlType = "", DeviceNumber = "") {
	SoundGet, v, %ComponentType%, %ControlType%, %DeviceNumber%
	Return, v
}SoundGetWaveVolume(DeviceNumber = "") {
	SoundGetWaveVolume, v, %DeviceNumber%
	Return, v
}StatusBarGetText(Part = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	StatusBarGetText, v, %Part%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}StringGetPos(ByRef InputVar, SearchText, Mode = "", Offset = "") {
	StringGetPos, v, InputVar, %SearchText%, %Mode%, %Offset%
	Return, v
}StringLeft(ByRef InputVar, Count) {
	StringLeft, v, InputVar, %Count%
	Return, v
}StringLen(ByRef InputVar) {
	StringLen, v, InputVar
	Return, v
}StringLower(ByRef InputVar, T = "") {
	StringLower, v, InputVar, %T%
	Return, v
}StringMid(ByRef InputVar, StartChar, Count , L = "") {
	StringMid, v, InputVar, %StartChar%, %Count%, %L%
	Return, v
}StringReplace(ByRef InputVar, SearchText, ReplaceText = "", All = "") {
	StringReplace, v, InputVar, %SearchText%, %ReplaceText%, %All%
	Return, v
}StringRight(ByRef InputVar, Count) {
	StringRight, v, InputVar, %Count%
	Return, v
}StringTrimLeft(ByRef InputVar, Count) {
	StringTrimLeft, v, InputVar, %Count%
	Return, v
}StringTrimRight(ByRef InputVar, Count) {
	StringTrimRight, v, InputVar, %Count%
	Return, v
}StringUpper(ByRef InputVar, T = "") {
	StringUpper, v, InputVar, %T%
	Return, v
}SysGet(Subcommand, Param3 = "") {
	SysGet, v, %Subcommand%, %Param3%
	Return, v
}Transform(Cmd, Value1, Value2 = "") {
	Transform, v, %Cmd%, %Value1%, %Value2%
	Return, v
}WinGet(Cmd = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGet, v, %Cmd%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}WinGetClass(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGetClass, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}WinGetText(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGetText, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}WinGetTitle(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGetTitle, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	Return, v
}WinGetActiveTitle() {
 WinGetActiveTitle, v
 Return, v
}

; WinGetPos(byref X="X",byref Y="Y",byref Width="Width", Height="Height", Title="A", WinText="", ExcludeTitle="", ExcludeText=""){
; WinGetPos,% X,% Y,% Width,% Height,% Title,% WinText,% ExcludeTitle,% ExcludeText
; return
; 