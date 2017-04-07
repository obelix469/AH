#Include, AutoXYWH.ahk

Gui, +Resize
Gui, Add, Edit, ve1 w150 h100
Gui, Add, Button, vb1 gResize, Resize
Gui, Show
return

Resize:
	GuiControl, Move, e1, h50
	AutoXYWH("reset") ; Needs to reset if you changed the Control size manually.
return
 
GuiSize:
	If (A_EventInfo = 1) ; The window has been minimized.
		Return
	AutoXYWH("wh", "e1")
	AutoXYWH("y", "b1")
return