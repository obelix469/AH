#SingleInstance Force
#NoTrayIcon
SetBatchLines, -1
#include E:\AH\lib\funcs.ahk
#include E:\AH\lib\Functions.ahk
; #include E:\AH\include.ahk
; Process, Priority,, High
delete("shell.txt")
Title := "ShellHook Messages", Filters := "", Pause := 0,cmd:=""
FilterMenu(), Gui()
Hwnd := WinExist(), WM_VSCROLL := 0x115, SB_BOTTOM := 7
DllCall( "RegisterShellHookWindow", UInt,Hwnd )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage" )
Return
DecToHex( ByRef lParam )
{
	SetFormat, Integer, Hex
	Return lParam += 0
}
FilterMenu()
{
	Global FilterList
	Menu, Filter, Add, Filter &All, FilterAll
	Menu, Filter, Add, Filter &None, FilterNone
	Menu, Filter, Add
	FilterList = WINDOWCREATED,WINDOWDESTROYED,ACTIVATESHELLWINDOW,WINDOWACTIVATED
	,GETMINRECT,REDRAW,TASKMAN,LANGUAGE,SYSMENU,ENDTASK,ACCESSIBILITYSTATE,APPCOMMAND
	,WINDOWREPLACED,WINDOWREPLACING,HIGHBIT,FLASH,RUDEAPPACTIVATED
	Loop, Parse, FilterList, `,
	{
		If A_Loopfield
			Menu, Filter, Add, %A_Loopfield%, SetFilter
	}
	Menu, FilterMenu, Add, Message &Filter, :Filter
	Gui, Menu, FilterMenu
}
Gui()
{
	Global
	Gui, +LastFound +AlwaysOnTop +Resize ; +ToolWindow
	Gui, Margin, 0, 0
	Gui, Font, s8, Microsoft Sans Serif
	Gui, Color,, DEDEDE
	Gui, Add, ListView, w800 r10 vData +Grid +NoSort, lParam (hWnd)|Process|wParam|Message|Title|CMD
; LV_ModifyCol(,"AutoHdr")
	LV_ModifyCol( 1, 60 ), LV_ModifyCol( 2, 100 ), LV_ModifyCol( 3, 40 ), LV_ModifyCol( 4, 150 ),LV_ModifyCol( 5, 150 )
	Gui, Show,, %Title%
}
ShellMessage( wParam,lParam )
{
	Global Data,Hwnd,WM_VSCROLL,SB_BOTTOM,Filters,Pause,cmd,cmdlength
	WinGetTitle, title, ahk_id %lParam%
	WinGet, pname, ProcessName, ahk_id %lParam%
	WinGet, pid, PID, ahk_id %lParam%
	win:=win(),cmd:=win.cmd
LV_ModifyCol(,"AutoHdr")
	if wParam = 1
		msg = HSHELL_WINDOWCREATED
	if wParam = 2
		msg = HSHELL_WINDOWDESTROYED
	if wParam = 3
		msg = HSHELL_ACTIVATESHELLWINDOW
	if wParam = 4
		msg = HSHELL_WINDOWACTIVATED
	if wParam = 5
		msg = HSHELL_GETMINRECT
	if wParam = 6
		msg = HSHELL_REDRAW
	if wParam = 7
		msg = HSHELL_TASKMAN
	if wParam = 8
		msg = HSHELL_LANGUAGE
	if wParam = 9
		msg = HSHELL_SYSMENU
	if wParam = 10
		msg = HSHELL_ENDTASK
	if wParam = 11
		msg = HSHELL_ACCESSIBILITYSTATE
	if wParam = 12
		msg = HSHELL_APPCOMMAND
	if wParam = 13
		msg = HSHELL_WINDOWREPLACED
	if wParam = 14
		msg = HSHELL_WINDOWREPLACING
	if wParam = 15
		msg = HSHELL_HIGHBIT
	if wParam = 16
		msg = HSHELL_FLASH
	if wParam = 17
		msg = HSHELL_RUDEAPPACTIVATED

	If wParam not in %Filters%
	{
		If ( Pause = 0 )
		{
			DecToHex( lParam )
			LV_Add( "", lParam, pname, wParam, msg ,title,cmd,cmdlength)
			SendMessage, WM_VSCROLL, SB_BOTTOM, 0, SysListView321, ahk_id %Hwnd%
		}
	}
}

SetFilter:
Menu, Filter, ToggleCheck, %A_ThisMenuItem%
Loop, Parse, FilterList, `,
{
	If ( A_ThisMenuItem = A_Loopfield )
	{
		If A_Index in %Filters% ; remove from filter
		{
			Filter := A_Index
			Loop, Parse, Filters, `,
			{
				If ( A_Loopfield != Filter )
					NewFilters .= A_Loopfield . ( A_Loopfield != "" ? "`," : "" )
			}
			Filters := NewFilters, NewFilters := ""
		}
		Else ; add to filter
		{
			Filters .= A_Index . ","
		}
	}
}
Return

FilterAll:
Filters =
Loop, Parse, FilterList, `,
{
	Menu, Filter, Check, %A_Loopfield%
	Filters .= A_Index . ( A_Index != 17 ? "," : "" )
}
Return

FilterNone:
Loop, Parse, FilterList, `,
{
	Menu, Filter, UnCheck, %A_Loopfield%
	Filters =
}
Return

GuiContextMenu:
Menu, Filter, Show
Return

GuiSize:
; AutoXYWH("x1 y.95 w1.5 h1", "Data")

GuiControl, Move, Data, w%A_GuiWidth% h%A_GuiHeight%
; LV_ModifyCol(,"AutoHdr")
; num=0

; 		Loop % LV_GetCount("Column")
; 	{
;     SendMessage, 4125, A_Index - 1, 0, SysListView321  ; 4125 is LVM_GETCOLUMNWIDTH.
;    num:=(num+errorlevel)
; s.=("Column" A_Index " : W" ErrorLevel "`n","shell.txt" ,"no")
; }
; t(s num),s:="",num+=100
; GuiControl, Move, Data, w%num%+30
SendMessage, WM_VSCROLL, SB_BOTTOM, 0, SysListView321, ahk_id %Hwnd%
Return

GuiClose:
GuiEscape:
ExitApp
Return

#IfWinActive ShellHook Messages
	C::LV_Delete()

	P::

	Pause :=! Pause, WinTitle := ( Pause = 0 ? Title : Title . " (Paused)" )
	WinSetTitle %WinTitle%
	Return

	R::Reload
	X::ExitApp


WM_KEYDOWN(wParam, lParam, nMsg, hWnd)
{
   global wb
   static fields := "hWnd,nMsg,wParam,lParam,A_EventInfo,A_GuiX,A_GuiY"
   WinGetClass, ClassName, ahk_id %hWnd%
   if  (ClassName = "Internet Explorer_Server")
   {
   ;// Get the in place interface pointer
      pipa := ComObjQuery(wb.document, "{00000117-0000-0000-C000-000000000046}")
   ;// Build MSG Structure
      VarSetCapacity(Msg, 48)
      Loop Parse, fields, `,             ;`
         NumPut(%A_LoopField%, Msg, (A_Index-1)*A_PtrSize)
   ;// Call Translate Accelerator Method
      TranslateAccelerator := NumGet(NumGet(1*pipa)+5*A_PtrSize)
      Loop 2 ;// only necessary for Shell.Explorer Object
         r := DllCall(TranslateAccelerator, "Ptr",pipa, "Ptr",&Msg)
      until wParam != 9 || wb.document.activeElement != ""
   ;// Release the in place interface pointer
      ObjRelease(pipa)

      if r = 0 ;// S_OK: the message was translated to an accelerator.
         return 0
   }
}
