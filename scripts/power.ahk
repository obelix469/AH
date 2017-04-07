ES_SYSTEM_REQUIRED := 0x00000001
ES_DISPLAY_REQUIRED := 0x00000002
ES_CONTINUOUS := 0x80000000
ES_USER_PRESENT := 0x00000004


; OnExit, ExitSub

Gui, +LastFound
hRecipient := WinExist()

GUID_MONITOR_POWER_ON_GUID := "{02731015-4510-4526-99e6-e5a17ebd1aea}" ;GUID_MONITOR_POWER_ON
VarSetCapacity(GUID_MONITOR_POWER_ON, 16, 0)
DllCall("ole32\CLSIDFromString", "UInt", &GUID_MONITOR_POWER_ON_GUID, "UInt", &GUID_MONITOR_POWER_ON)
hMonitorNotify := DllCall("RegisterPowerSettingNotification", "UInt", hRecipient, "UInt", &GUID_MONITOR_POWER_ON, "UInt", 0)
#SingleInstance, Force

OnMessage(0x218, "func_WM_POWERBROADCAST")
Return

func_WM_POWERBROADCAST(wParam, lParam)
{
msgbox % 	monitorState := NumGet(lParam + 16 + 4)
   return
}
exitapp
esc::exitapp