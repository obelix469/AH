#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
_screenshot_applet(o){
    if !isobject(o)
        return
    x:=o.x,y:=o.y,w:=o.w,h:=o.h
    loop
        ifnotexist,% f:=a_scriptdir "\screenshot(" a_index ").png"
            break
   hg:=dllcall("LoadLibrary","str","gdiplus.dll")
   varsetcapacity(si,16,0)
   si:=Chr(1)
   dllcall("gdiplus\GdiplusStartup", "UintP",t,"Uint",&si,"Uint",0)
   chdc:=dllcall("CreateCompatibleDC","uint",0)
    varsetcapacity(bi,40,0)
    numput(w,bi,4),numPut(h,bi,8),numput(40,bi,0),numput(1,bi,12,"ushort"),numput(0,bi,16),numput(32,bi,14, "ushort")
    hbm:=dllcall("CreateDIBSection","uint",chdc,"uint",&bi,"uint",0, "uint*",0,"uint",0,"uint",0)
    obm:=dllcall("SelectObject","uint",chdc,"uint",hbm)
    hhdc:=dllcall("GetDC","uint",0)
    dllcall("gdi32\BitBlt","uint",chdc,"int",0,"int",0,"int",w,"int",h,"uint",hhdc,"int",x,"int",y,"uint",0x00CC0020)
    dllcall("gdiplus\GdipCreateBitmapFromHBITMAP","uint",hbm,"uint",0,"uint*")
    dllcall("gdiplus\GdipGetImageEncodersSize","uint*",c,"uint*",s)
    varsetcapacity(ci,s)
    dllcall("gdiplus\GdipGetImageEncoders","uint",c,"uint",s,"uint",&ci)
    dllcall("gdiplus\GdipSaveImageToFile","uint",b,"uint",&f,"uint",&ci+304,"uint",0)
    dllcall("gdiplus\GdipDisposeImage","uint")
    dllcall("DeleteDC", "uint", hhdc)
    dllcall("SelectObject","uint",chdc,"uint",obm)
    dllcall("DeleteObject","uint",hbm)
    dllcall("DeleteDC", "uint", chdc)
    dllcall("gdiplus\GdiplusShutdown","Uint",t)
    dllcall("FreeLibrary", "Uint",hg)
}