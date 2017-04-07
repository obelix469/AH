isFullScreen := isWindowFullScreen( "A" )
MsgBox % isFullScreen ? "Full Screen" : "Windowed"
Return

isWindowFullScreen( winTitle ) {
	;checks if the specified window is full screen

	winID := WinExist( winTitle )

	If ( !winID )
		Return false

	WinGet style, Style, ahk_id %WinID%
	WinGetPos ,,,winW,winH, %winTitle%
	; 0x800000 is WS_BORDER.
	; 0x20000000 is WS_MINIMIZE.
	; no border and not minimized
	Return ((style & 0x20800000) or winH < A_ScreenHeight or winW < A_ScreenWidth) ? false : true
}
