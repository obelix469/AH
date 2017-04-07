Explorer_GetPath(hwnd="")
{
   Com_Init()
   if !(window := Explorer_GetWindow(hwnd))
      return, ErrorLevel := "ERROR", Com_Term()
   if (window="desktop")
      return, A_Desktop, Com_Term()
   path := Com_Invoke(window, "LocationURL")
   Com_Release(window), Com_Term()
   path := SubStr(path,InStr(path,"///")+3)
   StringReplace, path, path, /, \, All

   ; thanks to polyethene
   Loop
      If RegExMatch(path, "i)(?<=%)[\da-f]{1,2}", hex)
         StringReplace, path, path, `%%hex%, % Chr("0x" . hex), All
      Else Break
   return path
}
Explorer_GetAll(hwnd="")
{
   Com_Init()
   return, Explorer_Get(hwnd), Com_Term()
}
Explorer_GetSelected(hwnd="")
{
   Com_Init()
   return, Explorer_Get(hwnd,true), Com_Term()
}

Explorer_GetWindow(hwnd="")
{
   ; thanks to jethrow for some pointers here
   WinGet, process, processName, % "ahk_id" hwnd := hwnd ? hwnd:WinExist("A")
   WinGetClass class, ahk_id %hwnd%

   if (process!="explorer.exe")
      return
   if RegExMatch(class, "(Cabinet|Explore)WClass")
   {
      shell := Com_CreateObject("Shell.Application")
      windows := Com_Invoke(shell, "Windows")
      Com_Release(shell)
      Loop, % Com_Invoke(windows,"Count") {
         window := Com_Invoke(windows, "item", A_Index-1)
         if (Com_Invoke(window, "hwnd")==hwnd)
            return, window, Com_Release(windows)
         Com_Release(window)
      }
      Com_Release(windows), Com_Release(window)
   }
   else if RegExMatch(class, "Progman|WorkerW")
      return "desktop" ; desktop found
}
Explorer_Get(hwnd="",selection=false)
{
   if !(window := Explorer_GetWindow(hwnd))
      return ErrorLevel := "ERROR"
   if (window="desktop")
   {
      ControlGet, hwWindow, HWND,, SysListView321, ahk_class Progman
      if !hwWindow ; #D mode
         ControlGet, hwWindow, HWND,, SysListView321, A
      ControlGet, files, List, % ( selection ? "Selected":"") "Col1",,ahk_id %hwWindow%
      base := SubStr(A_Desktop,0,1)=="" ? SubStr(A_Desktop,1,-1) : A_Desktop
      Loop, Parse, files, `n, `r
      {
         path := base "" A_LoopField
         IfExist %path% ; ignore special icons like Computer (at least for now)
            ret .= path "`n"
      }
   }
   else
   {
		if selection
			collection := Com_Invoke(window, "document.SelectedItems")
		else
			collection := Com_Invoke(window, "document.Folder.Items")
		Com_Release(window)
		Loop, % Com_Invoke(collection, "Count")
			ret .= Com_Invoke(collection, "item[" A_Index-1 "].path") "`n"
		Com_Release(collection)
   }
   return, SubStr(ret,1,-1)
}
