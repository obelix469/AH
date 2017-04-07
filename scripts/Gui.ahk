#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#INCLUDE E:\AH\functions.ahk
Menu, FileMenu, Add, &New, FileNew
Menu, FileMenu, Add, &Open, FileOpen
Menu, FileMenu, Add, &Save, FileSave
Menu, FileMenu, Add, Save &As, FileSaveAs
Menu, FileMenu, Add  ; Separator line.
Menu, FileMenu, Add, E&xit, FileExit
Menu, HelpMenu, Add, &About, HelpAbout
Menu, MyMenuBar, Add, &File, :FileMenu
Menu, MyMenuBar, Add, &Help, :HelpMenu
Gui, Menu, MyMenuBar
Gui, +Resize  ; Make the window resizable.
W:=1100,H:=800,X:=50,Y:=25

Gui, Add, text,, Function
Gui, Add, Edit, vMyFunc, StrReplace
Gui, Add, text,x+50 y0, Input
Gui, Add, Edit, vInput, %clipboard%
Gui, Add, text,x+50 y0, Replacement
Gui, Add, ListBox,0x8 vMyListBox, `,||`n|`r|%A_Tab%|%A_Space%
Gui, Add, Edit, vReplace, %MyListBox%
; Gui, Add, Button, w100 h100 Default, .QBO
; Gui, Add, DropDownList, vMyDDL, Red|Green|Blue

gui,show, AutoSize CENTER
; gui, Show, W%W% H%H% X%X% Y%Y%
; OnMessage(0x200, "WM_MOUSEMOVE")
return




return

Loop, parse, MyListBox, |
{
    MsgBox Selection number %A_Index% is %A_LoopField%.
}

; GuiSize(GuiHwnd, EventInfo, Width, Height)
GuiSize:
If (A_EventInfo = 1) ; The window has been minimized.
Return
; AutoXYWH("xy", "Btn1", "Btn2")
; AutoXYWH("w0.5 h 0.75", hEdit, "displayed text", "vLabel", "Button1")
; AutoXYWH("*w0.5 h 0.75", hGroupbox1, "GrbChoices")
AutoXYWH("x0.1 y0.2 w0.5 h0.5", "Mainedit")
AutoXYWH("x0.8","e1","t","Create")
return

GuiDropFiles(GuiHwnd, FileArray, CtrlHwnd, X, Y) {
    for i, file in FileArray
        MsgBox File %i% is:`n%file%
}
GuiDropFiles:  ; Support drag & drop.
Loop, Parse, A_GuiEvent, `n
{
    SelectedFileName = %A_LoopField%  ; Get the first file only (in case there's more than one).
    break
}
Gosub FileRead
return

QBO:
Gui, Add, Button, Default w100 h50 , Fileopen
Gui, Add, Edit, vMainedit w%EditW% h%EditH%, No Selected File Name
Gui, Add, Text,vt x+50 y10 , Transaction KEYWORDS To Exclude.`nComma Seperated E.G.
Gui, Add, Edit, Ve1 y+15, CREDIT,INTUIT
gui, Add, Button, Default y+25, Convert
gui, Show, W%W% H%H% X%X% Y%Y%
return

buttonConvert:
ifexist, %SelectedFileName%
{
Gui, Submit
Ret:=P(SelectedFileName,,,,e1)
clear(MainEdit)
GuiControl,, MainEdit, %Ret%  ; Put the text into the control.
gui,show
}
return

Clear(A){
GuiControl,, A
}
Resize:
NewWidth := A_GuiWidth*.5,NewHeight := A_GuiHeight*.5
; GuiControl, Move, e1, h50
GuiControl, Move, MainEdit, W%NewWidth% H%NewHeight%
AutoXYWH("reset") ; Needs to reset if you changed the Control size manually.
return
FileNew:
GuiControl,, MainEdit  ; Clear the Edit control.
return
FileOpen:
Gui +OwnDialogs  ; Force the user to dismiss the FileSelectFile dialog before returning to the main window.
FileSelectFile, SelectedFileName, 3,, Open File, Quick Books Online (*.qbo)
if SelectedFileName =  ; No file selected.
    return
Gosub FileRead
return
FileRead:  ; Caller has set the variable SelectedFileName for us.
FileRead, MainEdit, %SelectedFileName%
if (ErrorLevel){
    MsgBox Could not open "%SelectedFileName%".
    return
}
GuiControl,, MainEdit, %MainEdit%  ; Put the text into the control.
CurrentFileName = %SelectedFileName%
Gui, Show,, %CurrentFileName%   ; Show file name in title bar.
return
FileSave:
if CurrentFileName =   ; No filename selected yet, so do Save-As instead.
    Goto FileSaveAs
Gosub SaveCurrentFile
return
FileSaveAs:
Gui +OwnDialogs
FileSelectFile, SelectedFileName, S16,, Save File, Text Documents (*.txt)
if SelectedFileName =  ; No file selected.
    return
CurrentFileName = %SelectedFileName%
Gosub SaveCurrentFile
return
SaveCurrentFile:  ; Caller has ensured that CurrentFileName is not blank.
IfExist %CurrentFileName%
{
    FileDelete %CurrentFileName%
    if ErrorLevel
    {
        MsgBox The attempt to overwrite "%CurrentFileName%" failed.
        return
    }
}
GuiControlGet, MainEdit  ; Retrieve the contents of the Edit control.
FileAppend, %MainEdit%, %CurrentFileName%  ; Save the contents to the file.
; Upon success, Show file name in title bar (in case we were called by FileSaveAs):
Gui, Show,, %CurrentFileName%
return

Esc::
FileExit:     ; User chose "Exit" from the File menu.
GuiClose:  ; User closed the window.
ExitApp

HelpAbout:
Gui, About:+owner1  ; Make the main window (Gui #1) the owner of the "about box".
Gui +Disabled  ; Disable main window.
Gui, About:Add, Text,, Text for about box.
Gui, About:Add, Button, Default, OK
Gui, About:Show
return
AboutButtonOK:  ; This section is used by the "about box" above.
AboutGuiClose:
AboutGuiEscape:
Gui, 1:-Disabled  ; Re-enable the main window (must be done prior to the next step).
Gui Destroy  ; Destroy the about box.
return

ta:
t:=""
filedelete, t.txt
loop,parse, % IR("GUI"), `,
{
if (%a_loopfield%)
FileAppend, % a_loopfield " = "(%a_loopfield%) "`n",t.txt
}
FileAppend,a_now = %a_now%,t.txt
fileread _y, t.txt
GuiControl,, ED, %_y%
gui,show
return