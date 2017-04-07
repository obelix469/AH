C:\Users\Brett\AppData\Local\ElevatedDiagnostics\460911090\2016091422.003\NetworkConfiguration.cab


Run SnippingTool,, Min, stPID
WinWait, ahk_pid %stPID%

PostMessage, 0x111, 0x9C49,,, ahk_pid %stPID%
WinWait, ahk_class Microsoft-Windows-Tablet-SnipperEditor
PostMessage, 0x111, 0x9C4C,,, ahk_pid %stPID%
WinWait, Save As

ImgFile := A_Desktop "\snip_" A_Now
While ImgFile != ConText {
  ControlGetText, ConText, Edit1, Save As
  ControlSetText, Edit1, % ImgFile, Save As
}
ControlClick, Button1, Save As,,,, NA
WinWaitClose, Save As
PostMessage, 0x111, 0x9C53,,, ahk_pid %stPID%

[SpecialPaths]
Plugins=Chrome-bin\plugins
[Window Title]
Information
[Content]
Search finished.
Total pictures scanned: 12238 / 12238
Similar pictures found: 1544
Elapsed time: 01:12:45

HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\WindowsLogon\.Modified
Sort task's after CLSID

"Task\: \{\w{8}-\w{4}-\w{4}-\w{4}-\w{12}} - "
Task: {\d{8}-C7C0-472A-88D5-F8E281593F29} -
Task: {EBBD209A-C7C0-472A-88D5-F8E281593F29} - \Microsoft\Windows\Setup\gwx\rundetector -> No File <==== ATTENTION
Task: {B122866A-2716-43B4-B822-64890E6616F1} - System32\Tasks\Microsoft\Windows\PLA\System\{52545351-F656-4670-8868-2ED184BAD5A2}_System Diagnostics => Rundll32.exe C:\Windows\system32\pla.dll,PlaHost "system\System Diagnostics" "$(Arg0)"

Title: GoogleChrome64Portable.ini — E\…\Launcher - Sublime Text (UNREGISTERED)
Class: PX_WINDOW_CLASS
CMD: "C:\Program Files\Sublime Text 3\sublime_text.exe" C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\GoogleChromePortable_(x64)_sps\Data\PortableApps.comLauncherRuntimeData-GoogleChrome64Portable.ini
id: 0x5d084e
ahk_id: ahk_id 0x5d084e
PID: 2888Title: Chrome - Google Chrome
Class: Chrome_WidgetWin_1
CMD: "C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\GoogleChromePortable_(x64)_sps\App\Chrome-bin\chrome.exe" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\GoogleChromePortable_(x64)_sps\App\Chrome-bin\Plugins" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Flash64" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Java64\bin\plugin2" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Java64\bin\new_plugin" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Silverlight64" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\BrowserPlugins64"  --allow-outdated-plugins --always-authorize-plugins --enable-browser-plugin-for-all-view-types --enable-npapi --no-default-browser-check --enable-download-resumption --enable-fast-unload --ppapi-flash-path="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\GoogleChromePortable_(x64)_sps\App\Chrome-bin\plugins\pepflashplayer.dll" --ppapi-flash-version=22.0.0.209
id: 0x1e07b2
ahk_id: ahk_id 0x1e07b2
PID: 1452
ProcessName: chrome.exe
X:  10  Y: 10   W: 945   H: 978
ProcessName: sublime_text.exe
X:  1993  Y: 67   W: 2312   H: 984

Title: Tampermonkey • Home - Google Chrome
Class: Chrome_WidgetWin_1
CMD: "C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\GoogleChromePortable_(x64)_sps\App\Chrome-bin\chrome.exe" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\GoogleChromePortable_(x64)_sps\App\Chrome-bin\Plugins" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Flash64" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Java64\bin\plugin2" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Java64\bin\new_plugin" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\Silverlight64" --extra-plugin-dir="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\CommonFiles\BrowserPlugins64"  --allow-outdated-plugins --always-authorize-plugins --enable-browser-plugin-for-all-view-types --enable-npapi --no-default-browser-check --enable-download-resumption --enable-fast-unload --ppapi-flash-path="C:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\GoogleChromePortable_(x64)_sps\App\Chrome-bin\plugins\pepflashplayer.dll" --ppapi-flash-version=22.0.0.209
id: 0xf069e
ahk_id: ahk_id 0xf069e
PID: 2192
ProcessName: chrome.exe
X:  211  Y: 1   W: 1695   H: 985

She's only got a 3.1 lead with her blueblazer glasses on and a syringe of Levadopa... other than that, she's doing faceplants.﻿

Archer C7
(AC1750)  2.x
3.x TE7
C7V2  Qualcomm
QCA9558
@720  128 16  SOC &
Qualcomm
QCA9880 b/g/n 3x3:3
an/ac 3x3:3 1 1 1 4 LAN
1 WAN 12V 2A  2 USB 2.0
Gbit switch archer-c7-v2
build 24118
20140523

Title: Disk Management
Class: MMCMainFrame
CMD: "C:\Windows\system32\mmc.exe" C:\Windows\system32\diskmgmt.msc
id: 0x80552
ahk_id: ahk_id 0x80552
PID: 3180
ProcessName: mmc.exe
X:  214  Y: 20   W: 1132   H: 868

Name: Win7_HomePrem_SP1_English_COEM_x64.iso
Size: 3320903680 bytes (3167 MB)
CRC32: DF6FEC97
CRC64: 8B950A7CC8187C06
SHA256: 1DD79367C866573EFD2DE02CE331BAC93A67D3395474D6911D2B28444D5EE3C0
SHA1: 1E0CDFAFB6A390E0E7E9F54CE99395EE42A59DE0
BLAKE2sp: 199A52754E078CA4687EC7EB9964F7C2E4E4C7EA4715E7510C79617C1B1378FF

Name: 7 Home Premium SP2 x64 USB 3.0 June 2016.iso
Size: 7451508736 bytes (7106 MB)
CRC32: FD1412FF
CRC64: 8650928A8AE26E87
SHA256: 9032A6459E09D0F8E335A6BEDAE0BA15EBAB54D9A5E75453F2CB6EB606227CBE
SHA1: 7A07F4A34FB054242A24F6E03DAEE8C7BAA52E0F
BLAKE2sp: B24B7C7008E6CCFFCBF231D4DAA52BD843EC62B0278A7FA8472D7F9C44A0D83C

C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\ Profile 2

%USERPROFILE%\AppData\Local\Temp

ClassNN:  WindowsForms10.STATIC.app.0.141b42a_r12_ad12

WindowsForms10.STATIC.app.0.141b42a_r12_ad12
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy\History
If you didn't know this was in The United States,
you would swear this was Haiti or Ethiopia.
 How much lower can Black America sink.
 High Schools give away diplomas for free,
 but that's something they DON'T want.﻿

||img-l3.xvideos.com/videos/thumbsl/68/b9/b2/68b9b215f23cdefb42bc7bcf7a37de0c/68b9b215f23cdefb42bc7bcf7a37de0c.13.gif

||img-hw.xvideos.com/videos/thumbsl/8a/33/ef/8a33efb76a1d83013c6db8d2542926c9/8a33efb76a1d83013c6db8d2542926c9.20.gif
real link
||img-l3.xvideos.com/videos/thumbsl/3f/3f/df/3f3fdf36391ef7e5bf1cb2e421e5d593/mozaiquehome.jpg
C:\Users\Brett\AppData\Local\Microsoft\Windows\Temporary Internet Files


CatalogDB: 9:42:21 AM 8/29/2016: DONE Adding Catalog File (0ms): Server-Help-Package.ClientHomePremium~31bf3856ad364e35~amd64~en-US~6.1.7601.17514.cat

VS140COMNTOOLS
C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\

C:\Users\Brett\AppData\Local\Application Data\Google\Chrome\User Data\Profile 2\JumpListIconsOld
C:\Users\Brett\Local Settings\Application Data\Application Data\Google\Chrome\User Data\Profile 2\Cache 1,971,099 7/23/2016 9:28:31 PM  7/23/2016 9:28:31 PM  7/23/2016 9:28:31 PM  AI              BUILTIN\Administrators  1,974,272

%SystemRoot%\Resources\Themes
C:\Windows\Resources\Themes
%SystemRoot%\Web\Wallpaper

CurrentTheme
%userprofile%\AppData\Local\Microsoft\Windows\Themes
%LocalAppData%\Microsoft\Windows\Themes
%AppData%\Microsoft\Windows\Themes

%SystemRoot%\Globalization\MCT
C:\Windows\Globalization\MCT\MCT-US
Installed themes (Aero, etc):

%SystemRoot%\Resources\Themes
Per-user installed themes (including pre-installed from OEM):

USER VARIABLES FOR ADMINISTRATOR
TEMP %USERPROFILE%\AppData\Local\Temp
TMP %USERPROFILE%\AppData\Local\Temp

SYSTEM VARIABLES
TEMP C:\Windows\Temp
TMP C:\Windows\Temp


<path> - <app> <ver>


Silly me forgot to write them down before chang
SEE_MASK_NOZONECHECKS=1
PATH=C:\Users\Brett\AppData\Roaming\npm

C:\Users\Brett\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch
Successfully generated the files needed for BartPE plugin. In order to use it,create subfolder named 'NirLauncher' under the plugin folder of BartPE and copy all files of NirLauncher into it.
Because it has philosophical linearity with Canadian Pedagogy
regex remove color [settings] from text==\[(c|/)[^\]]+\]

(?s)
%SystemRoot%\System32\cmd.exe /C "%1" %*
"".base.types:="integer,float,number,digit,xdigit,alpha,upper,lower,alnum,space"
Setup.exe /s /f1"C:\Temp\uninstall.iss"

ftp://73.100.196.172/folder1
Ctrl+Alt is also known as AltGr
; #INCLUDE %A_ScriptDir%\LP.ahk
; A_AppData=C:\Users\Brett\AppData\Roaming
; C:\Users\Brett\AppData\Roaming\Microsoft\Windows
SublimeDir=%APPDATA%\Sublime Text 3
<span style=.* href="/out.php\?(t=.*)" target="_blank">(.*)</a>(<br>)?(
</td>
<td align="left">)?


Seagate Backup Plus Drive

\\tplinklogin.net

HOLY GHOST ASSOC. INC.  - QuickBooks Pro 2014
ahk_class MauiFrame
ahk_exe qbw32.exe
ClassNN:  Edit2
Text: OPERATING
={50}\n[^=]*={50}\n

Killer Adapter ID
PCI\VEN_1969&DEV_E0A1&SUBSYS_79761462&REV_10
PCI\VEN_1969&DEV_E0A1&SUBSYS_79761462
PCI\VEN_1969&DEV_E0A1&CC_020000
PCI\VEN_1969&DEV_E0A1&CC_0200

step 1.. restart system, go to bios
step 2.. go to ''ADVANCED'' from menu
step 3.. go to ''CHIPSET CONFIGURATION''
step 4.. go to ''PCI LATENCY TIMER''
step 5.. change its value according to your os bits.. e.g win 7 64 bits so set that value 64

thats all... it surely help you

1. It MUST use absoluate path.
2. DO NOT forget "


Zx2Z9dc9tE
=======exile autoexec text 8.12.2016

#noenv
#SingleInstance force
SetWorkingDir %A_ScriptDir%
; SetBatchLines,-1
SetTitleMatchMode,2
SendMode, Input
#INCLUDE %A_ScriptDir%\inc\IncludeM.ahk
URL(""),CSV_(),onexit("exitapp"),q(),q("END")
#INCLUDE <Functions>
; #INCLUDE %A_ScriptDir%\LP.ahk
SublimeDir=%APPDATA%\Sublime Text 3
"".base.types:="integer,float,number,digit,xdigit,alpha,upper,lower,alnum,space"
"".base.__set:=func("Set_Obj"),"".base.__Get :=func("Get_Prop"),"".base.eq:=": "
try delete("txt\test.txt","D"),delete("testf.txt","D"),delete("Strobj LV.txt","D"),bc.allfuncs(),append(biv(),"BIV.txt","D")
cmode("all","Screen"),t2:=T1:=-250 ; ,st("Timer1",t1:=-t1)
A:=AutoDate(),II:=ItemInfo(Explorer_GetSelection()),win:=win("A")
; CSV_cut("E:\Google Drive\AH\Binder1.txt","E:\AH\ICMG.qbo",300)
; t(win().list)

; Run, explore %A_ProgramFiles%
; t(A "`n" II "`n" win.list,A_CaretX,A_CaretY+100)
; t(elapsed(Time:=FileGetTime(A_ScriptDir "\ENV.txt"),"Hours"))
if elapsed(Time:=FileGetTime(A_ScriptDir "\ENV.txt"),"Hours")>3
append(sort(Runwaitone("Set")),"ENV.txt"),t(now("M/dd/yyyy h:mm tt") "`n" iteminfo(A_ScriptDir "\ENV.txt",3) "`n" a_now "`n" Time "`n" elapsed(time,"Seconds"))

<a href="https://www.youtube.com/watch?v=_m-42A37zxM">Young Turks Flip Out On Alex Jones</a>
; t(LP("ENV.txt","*.*"))
; t(ItemInfo(A_ScriptDir "\ENV.txt"))

; run E:\AH\Lib\LP.ahk "ENV.txt" "BIV.txt"
; run *Compile E:\AH\Lib\LP.ahk "ENV.txt"
; run Ahk2Exe.exe /in "E:\AH\Lib\LP.ahk"

run E:\AH\LP.exe "BIV.txt"
; run E:\AH\LoopFile-Script.exe "ENV.txt"
; run E:\AH\Lib\LP.exe "BIV.txt"
Ctrllist()
; run %comspec% /C net localgroup Administrators /add networkservice && net localgroup Administrators /add localservice

====end of auto

Title: System Properties
Class: #32770
CMD: "C:\Windows\system32\SystemPropertiesProtection.exe"
id: 0x1604ae
ahk_id: ahk_id 0x1604ae
PID: 85000
ProcessName: SystemPropertiesProtection.exe
X:  100  Y: 100   W: 426   H: 474

E:\AH\ENV.txt
1 Size:  1.56 KB
 2 Item type:  TXT File
 3 Date modified:  7/31/2016 3:03 PM
 4 Date created:   5/25/2016 8:09 AM
 5 Date accessed:  7/31/2016 3:03 PM
 6 Attributes:   AI
 9 Perceived type:   Text
 10 Owner:   Administrators
 11 Kind:  Document
 19 Rating:  Unrated
 53 Computer:  RAIDMAX (this computer)
 155 Filename:   ENV.txt
 173 Shared:   No
 176 Folder name:  AH
 177 Folder path:  E:\AH
 178 Folder:   AH (E:)
 180 Path:   E:\AH\ENV.txt
 182 Type:   TXT File
 188 Link status:  Unresolved
 269 Sharing status:   Private
Title: Sound
Class: #32770
CMD: "C:\Windows\System32\rundll32.exe" C:\Windows\System32\shell32.dll,Control_RunDLL C:\Windows\System32\mmsys.cpl
ahk_id: 0xa01ae
PID: 6272
ProcessName: rundll32.exe
X:  138  Y: 138   W: 414   H: 462
SWP_SHOWWINDOW=0x0040
SendMessage, 0x0040, 0, 0, , Ahk_Id 0xa01ae

Title: Windows Firewall with Advanced Security
Class: MMCMainFrame
CMD: "C:\Windows\system32\mmc.exe" "C:\Windows\system32\wf.msc"
ahk_id: 0x31046
PID: 6316
ProcessName: mmc.exe
X:  40  Y: 19   W: 1712   H: 936

Title: untitled • - Sublime Text
Class: PX_WINDOW_CLASS
CMD: "C:\Program Files\Sublime Text 3\sublime_text.exe"  "E:\AH\lib\AHK-Subclass-Object-master\README.md"
ahk_id: 0x60678
PID: 4408
ProcessName: sublime_text.exe
X:  2165  Y: 121   W: 1196   H: 929

t(now("M/dd/yyyy h:mm tt") "`n" iteminfo(A_ScriptDir "\ENV.txt",3) "`n" a_now "`n" Time "`n" elapsed(time,"Seconds"))
C:\ProgramData\Oracle\Java\javapath
C:\Python35\Scripts\
C:\Python35\
C:\Python27\
C:\Python27\Scripts
C:\Program Files\AutoHotkey\lib\
E:\AH\lib\
C:\Program Files (x86)\Skype\Phone\
C:\Program Files\FileBot\
C:\Windows\system32
C:\Windows
C:\Windows\System32\Wbem
C:\Windows\System32\WindowsPowerShell\v1.0\
C:\Program Files (x86)\Common Files\Seagate\SnapAPI\
C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common
C:\Program Files (x86)\Intel\iCLS Client\
C:\Program Files\Intel\iCLS Client\


Title: nirsoft94
Class: CabinetWClass
CMD: C:\Windows\explorer.exe /factory,{ceff45ee-c862-41de-aee2-a022c81eda92} -Embedding
ahk_id: 0x8073a
PID: 3212
ProcessName: explorer.exe
X:  2463  Y: 66   W: 1334   H: 705Sort=0
ShowDescText=0
PackageCount=3
CurrPackage=0
TrayIcon=0
ActionEnterKey=1
bHideWindowOnStart=0

Twitter
lazjonsucks@yahoo.com
Pass:idspispopd469
user?:FaustianBurgle

Title: Rise of the Tomb Raider | Не
официальный Фан-сайт - Google Chrome
Class: Chrome_WidgetWin_1
CMD: "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -- "http://gangnamgame.org/"
ahk_id: 0x203b0 PID: 2744

C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Preferences
"history": {"deleting_enabled": false},

run "C:\Users\Brett\Documents\nircmd\ChromePass.exe" /stext E:\AH\txt\%a_now%ChromePass.txt

lazjonsucks@yahoo.com

date modified column size 165
[Package0]
filename=NirSoft\nirsoft.nlp

[DefaultAdvancedRunOptionsUI]
CommandLine=/shtml f:\temp\1.html
EnvironmentStr=
CurrDir=
UseCommandLine=0
UseEnvironmentStr=0
UseCurrDir=0
StartMainWindowAs=1
ConsoleCloseAfterExecute=0
ConsoleFullScreen=0
ConsoleNoWindow=0
VistaRunAsAdmin=0
Run32Bit=0
[DefaultRunOptions]
CommandLine=
EnvironmentStr=
CurrDir=
UseCommandLine=0
UseEnvironmentStr=0
UseCurrDir=0
StartMainWindowAs=1
ConsoleCloseAfterExecute=0
ConsoleFullScreen=0
ConsoleNoWindow=0
VistaRunAsAdmin=0
Run32Bit=0
[Package1]
Filename=piriform\piriform.nlp
[Package2]
Filename=SysinternalsSuite\sysinternals3.nlp
[Package3]
Filename=Nircopy\nirsoft.nlp

Old Env ??? pre 7.31.2016 wasnt running for a while
ALLUSERSPROFILE=C:\ProgramData
APPDATA=C:\Users\Brett\AppData\Roaming
asl.log=Destination=file
CommonProgramFiles(x86)=C:\Program Files (x86)\Common Files
CommonProgramFiles=C:\Program Files\Common Files
CommonProgramW6432=C:\Program Files\Common Files
COMPUTERNAME=RAIDMAX
ComSpec=C:\Windows\system32\cmd.exe
FP_NO_HOST_CHECK=NO
HOMEDRIVE=C:
HOMEPATH=\Users\Brett
LOCALAPPDATA=C:\Users\Brett\AppData\Local
LOGONSERVER=\\RAIDMAX
NUMBER_OF_PROCESSORS=8
OS=Windows_NT
Path=C:\Python35\Scripts\;C:\Python35\;C:\Python27\;C:\Python27\Scripts;C:\ProgramData\Oracle\Java\javapath;C:\Program Files\AutoHotkey\lib\;E:\AH\lib\;C:\Program Files (x86)\Skype\Phone\;C:\Windows\system32\config\systemprofile\.dnx\bin;C:\Program Files\Microsoft DNX\Dnvm\;C:\Program Files\FileBot\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\
PATHEXT=.Ahk;.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW
PROCESSOR_ARCHITECTURE=AMD64
PROCESSOR_IDENTIFIER=AMD64 Family 21 Model 2 Stepping 0, AuthenticAMD
PROCESSOR_LEVEL=21
PROCESSOR_REVISION=0200
ProgramData=C:\ProgramData
ProgramFiles(x86)=C:\Program Files (x86)
ProgramFiles=C:\Program Files
ProgramW6432=C:\Program Files
PROMPT=$P$G
PSModulePath=C:\Windows\system32\WindowsPowerShell\v1.0\Modules\
PUBLIC=C:\Users\Public
SESSIONNAME=Console
SystemDrive=C:
SystemRoot=C:\Windows
TEMP=C:\Users\Brett\AppData\Local\Temp
TMP=C:\Users\Brett\AppData\Local\Temp
ULTRAMON_LANGDIR=C:\Program Files\UltraMon\Resources\en
USERDOMAIN=raidmax
USERNAME=Brett
USERPROFILE=C:\Users\Brett
VS100COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\
VS110COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\Tools\
VS120COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools\
windir=C:\Windows
windows_tracing_flags=3
windows_tracing_logfile=C:\BVTBin\Tests\installpackage\csilogfile.log

env as of 7.31.2016
__COMPAT_LAYER=RunAsAdmin
ALLUSERSPROFILE=C:\ProgramData
APPDATA=C:\Users\Brett\AppData\Roaming
asl.log=Destination=file
CommonProgramFiles(x86)=C:\Program Files (x86)\Common Files
CommonProgramFiles=C:\Program Files\Common Files
CommonProgramW6432=C:\Program Files\Common Files
COMPUTERNAME=RAIDMAX
ComSpec=C:\Windows\system32\cmd.exe
FP_NO_HOST_CHECK=NO
HOMEDRIVE=C:
HOMEPATH=\Users\Brett
LOCALAPPDATA=C:\Users\Brett\AppData\Local
LOGONSERVER=\\RAIDMAX
NUMBER_OF_PROCESSORS=8
OS=Windows_NT
Path=C:\ProgramData\Oracle\Java\javapath;C:\Python35\Scripts\;C:\Python35\;C:\Python27\;C:\Python27\Scripts;C:\Program Files\AutoHotkey\lib\;E:\AH\lib\;C:\Program Files (x86)\Skype\Phone\;C:\Program Files\FileBot\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Common Files\Seagate\SnapAPI\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common
PATHEXT=.Ahk;.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW
PROCESSOR_ARCHITECTURE=AMD64
PROCESSOR_IDENTIFIER=Intel64 Family 6 Model 94 Stepping 3, GenuineIntel
PROCESSOR_LEVEL=6
PROCESSOR_REVISION=5e03
ProgramData=C:\ProgramData
ProgramFiles(x86)=C:\Program Files (x86)
ProgramFiles=C:\Program Files
ProgramW6432=C:\Program Files
PROMPT=$P$G
PSModulePath=C:\Windows\system32\WindowsPowerShell\v1.0\Modules\
PUBLIC=C:\Users\Public
SESSIONNAME=Console
SystemDrive=C:
SystemRoot=C:\Windows
TEMP=C:\Windows\TEMP
TMP=C:\Windows\TEMP
USERDOMAIN=raidmax
USERNAME=Brett
USERPROFILE=C:\Users\Brett
windir=C:\Windows
windows_tracing_flags=3

append(sort(Runwaitone("Set")),"ENV.txt")
t(MatchBalance(RF:=read("E:\AH\lib\win.ahk"),p_1:="{",p_2:="}"))
Q(),SLEEP(50),Q(),SLEEP(50),Q(),SLEEP(50),Q("END")

txt:="aa=safr`nbb=grfs`ncc=gfdg`ndd=dva`n",needle:="V=[[:print:]]*\R*",Ar:=["dd","cc","aa","bb"]
a.=MAOBJ(txt,needle,Ar*),a.="`n" mobj(txt,["",Ar,"=[[:print:]]*\R*"]) "`n"
for k,v in Ar
regexmatch(txt,SR(needle,"V",V),M),a.=m
t(a)
Obj:=MObj("FunctionP1=32,p2=33,p3=52)",["ion.*",["P1","p2","p3"],"=\K[^,)]*"])

q(),q(sleep(50)),q(f.l),q(sleep(50)),strlen(f),msg(q("END"))
; q(),sleep(500),msg(q("END"))

O:=mo("fdsg","(.)(.)(.)"),j(win(),o*),j("fd","bv",{"fd":"d","z":"b"}*)
t(a.=(l:=1).is.integer)
f:="`n1abc`n2def`n",NL:="`n"
t(a.="`n" f.sr.NL)
O:=[{"K":"h"},{"AK":"AV"},d:="HI",{"K":"h"}],NO:={"K":"h","AK":"AV","d":"HI"}, t(a.=strobj(asort(NO,"AK","K")) "`n"),t(a.=is(isneg(3),"digit") "`n")
t(a.= win().list "`n"),win:=win()
for k,v in arr:=ss(win.array)
t(b.=(v?v "".eq:"") win[v] "`n")
t(asort(win,ss(win.array)*))



if Winexist("System Protection") or wgat("Select a filename to save") {

sendMessage, 0x0D, 100, &Text_Field, Edit1,ahk_exe SystemPropertiesProtection.exe


if !(Text_Field)

Text_Field:=Current_Time:=now("H:mm tt M-dd-y")
now("HH:mm:ss tt MM-dd-yyyy")


SendMessage, 0xC, 0, &Text_Field, Edit1,ahk_exe SystemPropertiesProtection.exe

ControlFocus, Edit1, ahk_exe SystemPropertiesProtection.exe

clip(Text_Field,true)


ControlSetText, % Text_Field, Edit1,ahk_exe SystemPropertiesProtection.exe

t(Current_Time "`n" Text_Field)


,Text_Field:=""


VarSetCapacity(Text_Field, 200)

}
TheSyndicateProject
7.6.16- 9,913,500

6.27.16
Problem signature
Problem Event Name: BlueScreen
OS Version: 6.1.7601.2.1.0.768.3
Locale ID:  1033

Extra information about the problem
BCCode: 24
BCP1: 00000000001904FB
BCP2: FFFFF8800E888968
BCP3: FFFFF8800E8881C0
BCP4: FFFFF800035B7617
OS Version: 6_1_7601
Service Pack: 1_0
Product:  768_1
Bucket ID:  X64_0x24_ntfs!NtfsFindStartingNode+21a
Server information: fd756221-a55d-45c3-80c7-77f834f96982

"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --type=renderer --disable-direct-write --enable-features=AutomaticTabDiscarding<AutomaticTabDiscarding,IncidentReportingModuleLoadAnalysis<SafeBrowsingIncidentReportingServiceFeatures,IncidentReportingSuspiciousModuleReporting<SafeBrowsingIncidentReportingServiceFeatures,UsePasswordSeparatedSigninFlow<PasswordSeparatedSigninFlow,WebFontsIntervention<WebFontsIntervention,*WebRTC-EnableWebRtcEcdsa<WebRTC-EnableWebRtcEcdsa,brotli-encoding<BrotliEncoding,enable-automatic-password-saving --disable-features=DocumentWriteEvaluator<DisallowFetchForDocWrittenScriptsInMainFrame,RenderingPipelineThrottling<RenderingPipelineThrottling,UpdateRendererPriorityOnStartup<UpdateRendererPriorityOnStartup --force-fieldtrials=AppBannerTriggering/Aggressive/AutofillProfileOrderByFrecency/Enabled/*AutomaticTabDiscarding/Enabled_Once_10-gen2/*BrotliEncoding/Enabled/CaptivePortalInterstitial/Enabled/ChildAccountDetection/Disabled/*ClientSideDetectionModel/Model0/*DefaultBrowserInfobar/Default/DirectWriteFontProxy/UseDirectWriteFontProxy/*DisallowFetchForDocWrittenScriptsInMainFrame/Default/*EnableMediaRouter/Disabled/*ExtensionActionRedesign/Enabled/ExtensionDeveloperModeWarning/Enabled/*GFE/Default/*GoogleBrandedContextMenu/default/InstanceID/Enabled/MaterialDesignDownloads/Enabled/*NetworkQualityEstimator/Enabled/OfferUploadCreditCards/Enabled/*OmniboxBundledExperimentV1/NewSuggestType_A4_Stable_R1/*OutOfProcessPac/Default/PasswordBranding/Disabled/*PasswordGeneration/Disabled/*PasswordManagerSettingsMigration/Disable/PasswordSeparatedSigninFlow/Enabled/*QUIC/EnabledTailLossProbeDelay/*RenderingPipelineThrottling/Disabled/ReportCertificateErrors/ShowAndPossiblySend/*ResourcePriorities/Control25PermanentB/SHA1IdentityUIWarning/Enabled/SHA1ToolbarUIJanuary2016/Warning/SHA1ToolbarUIJanuary2017/Error/*SRTPromptFieldTrial/On/SSLCommonNameMismatchHandling/Control/*SafeBrowsingIncidentReportingService/Default/*SafeBrowsingIncidentReportingServiceFeatures/WithSuspiciousModuleReporting/SafeBrowsingUnverifiedDownloads/DisableByParameterMostSbTypes2/*SafeBrowsingUpdateFrequency/Default/SyncHttpContentCompression/Enabled/*TriggeredResetFieldTrial/On/*UMA-Dynamic-Uniformity-Trial/Group6/*UMA-Population-Restrict/normal/*UMA-Uniformity-Trial-1-Percent/group_94/*UMA-Uniformity-Trial-10-Percent/group_04/*UMA-Uniformity-Trial-100-Percent/group_01/*UMA-Uniformity-Trial-20-Percent/group_02/*UMA-Uniformity-Trial-5-Percent/group_04/*UMA-Uniformity-Trial-50-Percent/default/*WebFontsIntervention/Enabled/*WebRTC-EnableWebRtcEcdsa/Default/ --primordial-pipe-token=29FADD631757A4B2A239B9E494531683 --lang=en-US --enable-offline-auto-reload --enable-offline-auto-reload-visible-only --enable-pinch --device-scale-factor=1 --num-raster-threads=4 --content-image-texture-target=3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553 --video-image-texture-target=3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553,3553 --channel="4476.51.351235086\2093681449" --mojo-platform-channel-handle=5768 /prefetch:1

---------------------------
; t(AutoDate() "`nNow() = " now()  "`n'A_now' = " a_now "`n now(""yyyy-MM-d_HH;mm tt"") = " now("yyyy-MM-d_HH;mm tt") ,A_CaretX,A_CaretY+100)

; t(AutoDate() "`nNow() = " now()  "`n'A_now' = " a_now "`n now(""yyyy-MM-d_HH;mm tt"") = " now("yyyy-MM-d_HH;mm tt")
;  "`nControlListHwnd = " ControlListHwnd "`nControlList = " ControlList "`nwin()=" strobj(win1()) ,A_CaretX-50,A_CaretY-200)
; t(AutoDate() "`nNow() = " now() "`nNow("") = " now("") "`nA_now = " a_now
; , "`nA_now = " now("YYYYMMDDHH24MISS"),A_CaretX-50,A_CaretY-200)

DHCP Clients List
ID  Client Name MAC Address Assigned IP Lease Time
1 Unknown 00-16-CB-B1-8D-B5 192.168.0.100 01:23:51
2 AntlerTech  D0-50-99-2C-FE-11 192.168.0.101 01:39:08
3 Unknown 60-12-8B-85-3B-5D 192.168.0.106 01:22:07
4 NP-1GU48P052817 B0-A7-37-98-6E-6B 192.168.0.103 01:29:37
5 AntlerTech  74-DA-38-19-DA-18 192.168.0.109 01:39:16
6 raidmax 4C-CC-6A-0B-1A-5C 192.168.0.105 01:36:17
7 Unknown 00-A0-96-62-A0-2C 192.168.0.102 01:10:42
8 Unknown 6C-33-A9-56-BC-3F 192.168.0.104 00:53:09
9 IBM-PC  24-77-03-79-97-1C 192.168.0.108 01:14:16
10  Unknown 84-25-3F-07-9C-37 192.168.0.107 01:51:26



/n:  Opens a new window in single-paned (My Computer) view for each item
selected, even if the new window duplicates a window that is
already open.

/e:  Uses Windows Explorer view. Windows Explorer view is most similar
to File Manager in Windows version 3.x. Note that the default view
is Open view.

/root,<object>:  Specifies the root level of the specified view. The
default is to use the normal namespace root (the
desktop). Whatever is specified is the root for the
display.

/select,<sub object>:  Specifies the folder to receive the initial
focus. If "/select" is used, the parent folder
is opened and the specified object is selected.

0.05 (e.g. from 1.2000, my CPU's default value, to 1.2500).

System  Yes (2217, 13)  (1190, 861) 00090248  CabinetWClass No  No  No  No  00001020  00001518  C:\Windows\explorer.exe Microsoft® Windows® Operating System  Windows Explorer  6.1.7601.23338 (win7sp1_ldr.160121-1716)  Microsoft Corporation

Title:Performance Information and Tools
Class:CabinetWClass

"C:\Windows\explorer.exe" /factory {ceff45ee-c862-41de-aee2-a022c81eda92} -Embedding\1
explorer.exe /factory,{ceff45ee-c862-41de-aee2-a022c81eda92}
ahk_id:0x30146
PID:4128
ProcessName:explorer.exe
:X:  2065  Y: 74   W: 1190   H: 861

HS Esports
HKEY_CURRENT_USER\Control Panel\Colors, HKEY_CURRENT_USER\Control Panel\Desktop\Colors, HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics
74,055
HKEY_CURRENT_USER\Control Panel\Colors
| MTV News
Windows Registry Editor Version 5.00


Created by: Shawn Brink

http://www.sevenforums.com

Tutorial: http://www.sevenforums.com/tutorials/1175-fonts-change.html


GIANT DOUCHE vs TURD SANDWICH

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes
"MS Shell Dlg 2"="Tahoma"
"MS Shell Dlg"="Tahoma"


HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg,HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run,HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Run,HKCU\Software\Microsoft\Windows\CurrentVersion\Run,HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders,HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders,HKU\Default\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders,HKLM\Software\Microsoft\Shared Tools\MSConfig\startupfolder

view.run_command("AHK_Autocomplete")
GetFirstElementWithBothNameAndValue(AccObj) {
Try If ((AccObj.accName(0) != "") and (AccObj.accValue(0) != ""))
Return AccObj
For k, v in Acc_Children(AccObj)
If IsObject(obj := GetFirstElementWithBothNameAndValue(v))
Return obj
}
GetElementByName(AccObj, name) {
if (AccObj.accName(0) = name)
return AccObj
for k, v in Acc_Children(AccObj)
if IsObject(obj := GetElementByName(v, name))
return obj
}
Set_Obj(ByRef Obj,k,v){
if (Obj="")
obj.base.Name:=m1,
obj:=object(k,v)
regexmatch(Listlines(8),"(\w+)[\["".]{1,2}.*[""\]]{0,2}:=",m),Obj:={Base:Classlist},OBJ[K]:=V,obj.base.vName:=m1
}
Hay:="The quick brown fox jumps over the lazy dog"
RegExMatch(Hay,"i)(The) (\w+)\b(?CCallout)"),M(Hay,"i)(The) (\w+) (.*) .*",M),T(M)
,t1:=-50
,st("Stats",t1)

to(Text="",x="",y="",Tnum="",DELAY=""){

CoMode("Mouse","Screen"),CoMode("ToolTip","Screen")
CMODE("Mouse","Screen"),CMODE("all","Screen")
MouseGetPos, mX,mY
M:=MGP(),X:=X?X:M.X,X+=50,Y:=Y?Y:M.Y
if sr(text,"`n",,c) and (ny:=Y+(c+1)*16)
15 Y per line
(Y-=NY>1025?(NY-1025):"")
,text.="`nmY " my " x " x " y " y " ny " ny " " c " lines"
tt(TEXT,X,Y,Tnum,DELAY)
CoMode("Mouse"),CoMode("ToolTip")
}
f:={"f":"F","D":"D"}
t:="
(join`t
f.f = " f.f "
" f.d "
" win().list "
FirstName: John
LastName: Smith
)"
WheeUU
O:=mo("fdsg","(.)(.)(.)"),j(win(),o*)
j("fd","bv",{"fd":"d","z":"b"}*)
a_now.isbiv
t(a.=(l:=1).is.integer)
f:="`n1abc`n2def`n",NL:="`n"
t(a.="`n" f.sr.NL)
Get_Prop(byref K,P){
static failed,lastP,LastR
if  regexmatch(LL:=Listlines(3,1),"[.]" P "[.](\w+)",m)
lastP:=m1,lastR:=%p%(k,m1)
if (P=lastP) and (R:=lastR,lastP:="",lastR:="")
return R
if (P="length") OR (P="l")
return StrLen(K)
if (p="IsBIV")
return in(k,biv(,"R"))?(%k%):k
if (p="Lines")
return r(ltrim(k,"`n"),"`n",,cnt) or k?cnt+1:""
if (%p%)
(p="failed")
return (%p%)
failed.=(LL?LL:"") "Get_Prop( " K "," P ")`n"
}

A:=""
m:="m)[[:alpha:]]"

o:=RegExMatch(_trans,m "\S",ma)
a.="\S =" ma "`n"
o:=RegExMatch(_trans,m "\p{P}",ma)
a.="\p{P} =" ma "`n"
o:=RegExMatch(_trans,m "\p{Pd}",ma)
a.="\p{Pd} ="ma "`n"
o:=RegExMatch(_trans,m "\p{S}",ma)
a.="\p{S} =" ma "`n"
o:=RegExMatch(_trans,m "\p{C}",ma)
a.="\p{C} or \p{Other} = " ma "`n"
invisible control characters code points.
o:=RegExMatch(_trans,m "\p{N}",ma)
a.="\p{N} = " ma "`n"
o:=RegExMatch(_trans,m "\p{Math_Symbol}",ma)
a.="\p{Math_Symbol} = " ma "`n"
o:=RegExMatch(_trans,m "\p{Currency_Symbol}",ma)
a.="\p{Sc} \p{Currency_Symbol} " ma "`n"
o:=RegExMatch(_trans,m "\p{Other_Symbol}",ma)
a.="\p{So} or \p{Other_Symbol} " ma "`n"
o:=RegExMatch(_trans,m "\p{Modifier_Symbol}",ma)
a.="\p{Sk} \p{Modifier_Symbol} " ma "`n"
o:=RegExMatch(_trans,m "\p{Control}",ma)
a.="\p{Control} " ma "`n"

m:="sm)\.\d\d"

o:=RegExMatch(_trans,m "\S",ma)
a.="\S =" ma "`n"
o:=RegExMatch(_trans,m "\p{P}",ma)
a.="\p{P} =" ma "`n"
o:=RegExMatch(_trans,m "\p{Pd}",ma)
a.="\p{Pd} ="ma "`n"
o:=RegExMatch(_trans,m "\p{S}",ma)
a.="\p{S} =" ma "`n"
o:=RegExMatch(_trans,m "\p{C}",ma)
a.="\p{C} or \p{Other} = " ma "`n"
invisible control characters code points.
o:=RegExMatch(_trans,m "\p{N}",ma)
a.="\p{N} = " ma "`n"
o:=RegExMatch(_trans,m "\p{Math_Symbol}",ma)
a.="\p{Math_Symbol} = " ma "`n"
o:=RegExMatch(_trans,m "\p{Currency_Symbol}",ma)
a.="\p{Sc} \p{Currency_Symbol} " ma "`n"
o:=RegExMatch(_trans,m "\p{Other_Symbol}",ma)
a.="\p{So} or \p{Other_Symbol} " ma "`n"
o:=RegExMatch(_trans,m "\p{Modifier_Symbol}",ma)
a.="\p{Sk} \p{Modifier_Symbol} " ma "`n"
o:=RegExMatch(_trans,m "\p{Control}",ma)
a.="\p{Control} " ma "`n"

My Project
Your project ID will be focus-strand-131911
Browser Key 1 AIzaSyA8iFioVP0Kxo10XgMrNv_Z8xNsFFizG9s
OAuth client ID
109438555842-or6kbe4kf07rl4p99rkgp4d1d88bna5f.apps.googleusercontent.com
client secret
cG2aR52V0yq40Ng7RK2-8N0r

{"web":{"client_id":"109438555842-or6kbe4kf07rl4p99rkgp4d1d88bna5f.apps.googleusercontent.com","project_id":"focus-strand-131911","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://accounts.google.com/o/oauth2/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_secret":"cG2aR52V0yq40Ng7RK2-8N0r"}}
Watermelon8

facebook.com/brett.armstrong.779

to(a.="`n" cmode("Mouse","Screen"))
to(a.="`n" cmode("Mouse","Window"))
to(a.="`n" cmode("Mouse","Client"))
to(a.="`n" cmode("Mouse"))
t(a)
m()
FoundPos:=RegExMatch(Hay, Needle ,Match, Pos),LV()
RegExMatch(n, "i)\(\?P?<(.+?)>.*\)",b)
listvars
for k,v in SS(LV2(),"`n"){
V:=substr(V,1,instr(v,"[")-1)
if ifequal(V,"Obj","k","v","","val")
if (V="O") or (V="k") or (V="v")
continue
val:=(%v%),V:=strreplace(V,"Match"),V:=!V?0:V
if !Obj.haskey(V)
Obj[V]:=val
}return FoundPos
}
mNeedle:= R("im)fds", "^((\w*)\))?", "O$2)", cnt)
t(VAR="",x="",y="",Tnum=1,Delay=3000,store=""){
static This:={},LTip
sdelay:=delay//1000
if (var!="" AND Delay)
This[(Tnum)]:={"x":(x?x:m.x),"y":(y?y:m.y),"then":(a_now),"Delay":delay,"Tnum":Tnum,"Adj":(a_now+abs(delay//1000))}
else,if (store="RTT") AND !(this[tnum].adj>a_now)
return to("",x,y,Tnum),this.removekey(Tnum)
if (v:=trim(SubStr((var.list?var.list:isobject(var)?strobj(var):var),1,6000),":`n`r`t "))!=""
to(v,x,y,Tnum),RTF:=func("t").bind("",x,y,tnum,delay,"RTT"),ST(RTF,(delay>0?"-":"") delay),(store=""?(ltip:=v):"")
return LTip
}
TNUMF:=func("to").bind({x:a_caret+1000,y:500,Tnum:2,Delay:500}*)
else,if (store="RTT"){
if (this[tnum].adj>a_now)
return
to("",x,y,Tnum),this.removekey(Tnum)
return
}
t:=this[tnum],to(v(thislabel:=a_thislabel,tnum,x,y,delay:=t.delay),(t.x+(TW()-X)//2),t.y,TNUM)

RemoveToolFunc:=func("to").bind("",,,tnum),ST(RemoveToolFunc,-5000)

trans(
name:="<PAYEEID>",_bal:=(_min?"-":"")_bal,name:="<NAME>"
if (lastbal>_bal)
_TRNAMT:="-" _TRNAMT,_TRNTYPE:="DEBIT"
else,_TRNTYPE:="CREDIT",name:="<NAME>"
name:="<NAME>",pos+=_.l,(lastbal>(_bal:=(_min?"-":"")_bal)?(_TRNAMT:="-" _TRNAMT,_TRNTYPE:="DEBIT"):_TRNTYPE:="CREDIT")
_DTPOSTED:=r(_DTPOSTED,"([\d][\d])/([\d][\d])/([\d][\d])","20$3$1$2"),lastbal:=_bal
if instr(_name,"CHECK # ")
Checknum:=instr(_name,"CHECK # ")?"<CHECKNUM>" r(_name,"[^0-9]*","") "`n"
else,Checknum:=""

class BL {
__new(){
this.base.list:=""
}__set(k,v){
(!this.GetCapacity()?this.base.list:="":""),this.base.list:=this.list k (isobject(v)?" : " strobj(v):": " v) "`n"
}}
if !instr(this.list,v:=isobject(v)?strobj(v):v)
ObjRawSet(this,"list",this.list k (isobject(v)?" : " strobj(v):": " v) "`n")
fcount(file="",prop=""){
static Funcs:={},thres:=10,comm1:="
[[:print:]]*?\n",comm2:="m)\/\*.*\*\/"
if isfunc(file) and funcs.haskey(file)
return prop?funcs[file][prop]:funcs[file]
if !file
return funcs
if !(at:=FileExist(File) && !InStr(FileExist(File), "D"))
RETURN file "`nfailed"
RF:=read(file),fnum:=0,p:=1,O:={},ma:=strip(rf,"m)\/\*.*\*\/","
[[:print:]]*\R*"),bra:="{{"
WHILE F:=MatchBalance(rf,"{","}","miO)^\}?\s*\K(?P<FL>(?P<N>[\w_]+)[(](?P<Params>[^)]*)[)])\s*[{][^}]*?[}]")
Funcs[F.N]:=F,O[F.FL]:=F.FL
return O.GetCapacity()?O:""
}allfuncs(FilePattern=""){
NL:="`r`n",FilePattern:=FilePattern=""?"E:\AH\lib\*.ahk":FilePattern
loop Files,% FilePattern
ap.=A_LoopFileFullPath "`n" join("`n",fcount(A_LoopFileFullPath)*)
append(ap,"AllFuncs.txt","DEL")
}

if (PV:=R(F.params,"i)(byref |=[^,]*)")) and (StrReplace(F.params,",",,PC)) AND (PC+=1)

Funcs[F.N]:={PC:PC,"prop":retf(F.N),Params:F.params,H:F.FL,_:_,PVars:PV}

else,Funcs[F.N]:={H:F.FL,"prop":retf(F.N),_:_}

O[F.FL]:=F.FL,append(F.FL "`n","testf.txt","o")

=============== Sublime AddFunc FCOUNT
support_function:="ims)i:\Kabs.+?(?=\))"
Keyword_keys:="ims)i:ws\Kshift.+?(?=\))"

addfunc(Keyword_keys,"|hi"), addfunc(support_function,fcount())
addfunc(byref name="",app="",file="C:\Users\Brett\AppData\Roaming\Sublime Text 3\Packages\AutoHotkey\AutoHotkey.tmLanguage"){
f:=read(file),support_function:="ims)i:\Kabs.+?(?=\))",Keyword_keys:="ims)i:\Kshift.+?(?=\))"
section:=name,RegExMatch(f,section,_)
if isobject(app)
for k,v in app
app.=!instr(f,k)?"|" k:""
}

D(p1="",p2="tst",lp="sk"){
localv:="fo",LV()
ListVars
return LV2()
}Get_Prop(byref K,P){
if (P="Trim")
return trim(k,":`t ")
if (P="length") OR (P="l")
return StrLen(K)
if (P="ll")
return %p%(k)
if (P="x" or P="y") && m(listlines(),"Screen|Window|Relative|Client(?=[.]" P ")",_){
cmode("Mouse",_),mgp((%P%)),cmode("Mouse")
return (%P%)
}

MGP(ByRef X="X",ByRef Y="Y",ByRef Win="ID",ByRef CLASSNN="CLASSNN",Mode=0){

MouseGetPos,X,Y,Win,CLASSNN,Mode

RETURN {X:X,Y:Y,(win):(%win%),(C):(%C%),MODE:MODE}

}
if (K="") && regexmatch(listlines(),"(\w+)([.]|:=)" P,m){
if isfunc(m1)
return %m1%(p)
}}LL(s,p=0){
return instr(s,"`n",,p)
return instr(s,"`n",,p)?instr(s,"`n",,p):s.l
}
fcount(file="",prop=""){
static Funcs:={},thres:=10,comm1:="
[[:print:]]*?\n",comm2:="m)\/\*.*\*\/"
if isfunc(file) and funcs.haskey(file)
return prop?funcs[file][prop]:funcs[file]
if !file
return funcs
if !(at:=FileExist(File) && !InStr(FileExist(File), "D"))
RETURN file "`nfailed"
RF:=read(file),fnum:=0,p:=1,O:={}
while RegExMatch(rf,"m)\/\*.*\*\/",M)
MA.=m,rf:=sr(rf,m,,,1)
while RegExMatch(rf,"
[[:print:]]*\R*",M)
MA.=m,rf:=sr(rf,m,,,1)
Match:="(\{(?:(?1)|[^{}]*+)++\})|[^{}\s]++
while RegExMatch(RF,"mi)^\}?\s*\K(?P<name>[\w_]+)\((?P<Params>[^)]*)\)\s*(?P<b>[{][^}]*?\})",_){
_:=MatchBalance(rf,"{","}")

IF (RF:=sr(RF,_,,,1)) and (diff:=R(_,"[^{]").l-R(_,"[^}]").l)>0

LOOP

ps:=instr(rf,"}",,,diff),add:=substr(rf,1,ps),_.=add,RF:=sr(RF,add,,,1),diff:=R(_,"[^{]").l-R(_,"[^}]").l

until (diff=0) or ((Bal_Count:=a_index)=thres)

msg(_)

if (_params) and (p:="{ "){

for k,v in ss(_params)

s:=ss(v,"="),P.= s[1] ":" (s[2]?s[2]:"""") ","

p:=substr(p,1,-1),p.="}"

}
FL:=_name "(" _params ")"

if (file="E:\AH\Functions.ahk")

msg({diff:diff,add:add,LB:R(_,"[^{]").l,RB:R(_,"[^}]").l,i:a_index}).
PVars:=R(_params,"i)(byref |=[^,]*)")
if (StrReplace(_params,",",,PC)) AND (PC+=1){
Funcs[_name]:=O[_Name]:={PC:PC,"prop":retf(_name),Params:_params,H:FL,_:_,PVars:PVars}
J[FL]:={".NumParams":PC,P:p,Params:_params,PVars:PVars}
}else,Funcs[_name]:=O[_Name]:={H:FL,"prop":retf(_name),_:_}
append(FL "`n","testf.txt","o")
} bra:="{{"
return (O.GetCapacity()?O:"")
}

ST(F,p="",priority=""){
static O:={},LASTP:=-250
if (P=""){
if lastp:=O[F]
P:=-lastp
}
O[F]:=P
lastp:=-lastp,p:=lastp
if !isobject(F) and isfunc(F)
F:=func(F)
SetTimer, % F, % p,% priority
}
t(cmode("tooltip","Screen"))
t(cmode("all"))

if (A_CoordMode%k%="Screen")

msgbox % A_CoordMode%k% " hi"

t(cmode("all","Client"))
CMODE(p1,p2=""){
static last:={ToolTip:A_CoordModeToolTip,Pixel:A_CoordModePixel,Mouse:A_CoordModeMouse,Caret:A_CoordModeCaret,Menu:A_CoordModeMenu}
if (p1="all") {
Abs|Screen|Window|Relative|Client
for k,v in ["Tooltip","Pixel","Mouse","Menu","Caret"]
f[(v)]:=cmode(v,p2)
return f
}if ((k:=A_CoordMode%p1%)!=p2)
CoordMode,% p1,% (p2=""?last[p1]:p2)
else, return "already set"
last[p1]:=l["A_CoordMode " p1]:=k
l[last[p1] " --> " p1]:=A_CoordMode%p1%
return l
}
IE -Javascript max perf
wireless adapter - power saving mode: max perf
usb - sss enabled
processor power management -
min p state 5%
system cooling policy :passive
max state 100%


<string>string.parameter.directives.ahk</string>
<key>settings</key>
<dict>
<key>background</key>
<string>#000000</string>
<key>fontStyle</key>
<string>bold</string>
<key>foreground</key>
<string>#002AFF</string>

<key>name</key>
<string>Function name</string>
<key>scope</key>
<string>entity.name.function.ahk</string>
<key>settings</key>
<dict>
<key>foreground</key>
<string>#FF00FF</string>
</dict>

<dict>
<key>name</key>
<string>BUILT IN % VARIABLES</string>
<key>scope</key>
<string>support.type.builtin.ahk</string>
<key>settings</key>
<dict>
<key>background</key>
<string>#000000</string>
<key>fontStyle</key>
<string>italic</string>
<key>foreground</key>
<string>#E30072</string>
</dict>
</dict>
fcount(file="",prop=""){
static Funcs:={},thres:=10,comm1:="
[[:print:]]*?\n",comm2:="m)\/\*.*\*\/"
if isfunc(file) and funcs.haskey(file)
return prop?funcs[file][prop]:funcs[file]
if !file
return funcs
if !(at:=FileExist(File) && !InStr(FileExist(File), "D"))
RETURN file "`nfailed"
RF:=read(file),fnum:=0,p:=1,O:={},ma:=strip(rf,"m)\/\*.*\*\/","
[[:print:]]*\R*")

while RegExMatch(RF,"miO)^\}?\s*\K(?P<FL>(?P<N>[\w_]+)[(](?P<Params>[^)]*)[)])\s*[{][^}]*?[}]",F)
WHILE F:=MatchBalance(rf,"{","}","miO)^\}?\s*\K(?P<FL>(?P<N>[\w_]+)[(](?P<Params>[^)]*)[)])\s*[{][^}]*?[}]") {

while RegExMatch(RF,"mi)^\}?\s*\K(?P<name>[\w_]+)\((?P<Params>[^)]*)\)\s*[{][^}]*?\}",_){

_:=MatchBalance(rf,"{","}"),FL:=_name "(" _params ")",
if (PV:=R(F.params,"i)(byref |=[^,]*)")) and (StrReplace(F.params,",",,PC)) AND (PC+=1)
Funcs[F.N]:={PC:PC,"prop":retf(F.N),Params:F.params,H:F.FL,_:_,PVars:PV}
else,Funcs[F.N]:={H:F.FL,"prop":retf(F.N),_:_}
O[F.FL]:=F.FL
append(F.FL "`n","testf.txt","o")
} bra:="{{"
return O.GetCapacity()?O:""
}allfuncs(FilePattern=""){
NL:="`r`n",FilePattern:=FilePattern=""?"E:\AH\lib\*.ahk":FilePattern
loop Files,% FilePattern
ap.=A_LoopFileFullPath "`n" join("`n",fcount(A_LoopFileFullPath)*)
append(ap,"AllFuncs.txt","DEL")
}

retf(var){
F:=func(var), ret:="Var=" var "`nF: " F.name "`nBuildIn? " Asc(f.IsBuiltIn)
. "`nMinParams: " f.MinParams "`nParamCount: " f.ParamCount
return ret
}

r:={base:w,"Title":t,"Class":class,"Width":width,"Height":h,"X":x,"Y":y,"Text":trim(txt,":`n`r`t ")}

r:={"Title":title,"Class":class,"CMD":cmd(win),"ahk_id":WinExist(win),"Width":W,"Height":H,"X":x,"Y":y,"Text":trim(txt,":`n`r`t ")}

For attr, val in WinGetAttr(win,text,extitle,extext,["PID","ProcessName"])

(val?r[attr]:=val:)
trim(txt,":`n`r`t ")?r.Text:=trim(txt,":`n`r`t "):""
if !winO.haskey(title)
WinO[title]:=r,StrObj(WinO,wintxtpath)
res.Insert(attr,val)

for k,v in ["Title","Class","ProcessName","CMD","ID_Hwnd","PID","Text","X","Y","Height","Width","Style","ExStyle"]
swlist.=ftrim(v (k>7 and k<12?"=":" : ") Res[v] (k>7 and k<11?" , ":"`n"))
wlist:={wlist:wlist}
res.wlist:=trim(swlist,":`n`r`t ")
WinGetAttr(win="A",text="",extitle="",extext="") {

res :=  {base
For each, attr in ["PID","ProcessName","MinMax","Transparent","TransColor","Style","ExStyle"]
{
WinGet, out, %attr%, %win%, %text%, %extitle%, %extext%
res.Insert(attr,out)
}
return  res
}

wlist :=    Object()
WinGet, id, List, %win%, %text%, %extitle%, %extext%
Loop %  id
wlist.Insert(id%A_Index%)
res :=  Object()
For each, hWnd in wlist
{
WinGetTitle, t, ahk_id %hWnd%, %text%, %extitle%, %extext%
WinGetPos, x, y, w, h, ahk_id %hWnd%, %text%, %extitle%, %extext%
WinGetText, txt, ahk_id %hWnd%, %text%, %extitle%, %extext%
WinGetClass, class, ahk_id %hWnd%, %text%, %extitle%, %extext%
o :=  {Title:t, Width:w, Height:h, x:x, y:y, Text:txt, Class:class, hWnd:hWnd}
For attr, val in WinGetAttr(win,text,extitle,extext)
o.Insert(attr,val)
res.Insert(o)
}

return  res


Title: Screen Saver Settings
Class: #32770
CMD: "C:\Windows\System32\rundll32.exe" shell32.dll,Control_RunDLL desk.cpl,ScreenSaver,@ScreenSaver
ahk_id: 0xf041a
PID: 3968
ProcessName: rundll32.exe
Title: Personalization
Class: CabinetWClass
CMD: C:\Windows\explorer.exe /factory,{ceff45ee-c862-41de-aee2-a022c81eda92} -Embedding
ahk_id: 0x1014e
PID: 3396
ProcessName: explorer.exe
F:=read("C:\Users\Brett\AppData\Roaming\Sublime Text 3\Packages\AutoHotkey\AutoHotkey.sublime-completions")
catch e
et:="Exception thrown!`n`nwhat: " e.what "`nfile: " e.file "`nline: " e.line "`nmessage: " e.message "`nextra: " e.extra,t(e)
D(p1="",p2="a",p3="b"){
localvar:="fosho"
LV()
ListVars
return LV2()
}
istype(f,"integer,float,number,digit,xdigit,alpha,upper,lower,alnum,space")
True if var is non-empty and contains a purely numeric string (decimal or hexadecimal) without a decimal point. Leading and trailing spaces and tabs are allowed. The string may start with a plus or minus sign.
True if var is non-empty and contains a floating point number
that is, a purely numeric string containing a decimal point. Leading and trailing spaces and tabs are allowed. The string may start with a plus sign, minus sign, or decimal point.
True if var contains an integer or floating point number (each of which is described above).
True if var is empty or contains only digits, which consist of the characters 0 through 9. Other characters such as the following are not allowed: spaces, tabs, plus signs, minus signs, decimal points, hexadecimal digits, and the 0x prefix.
Hexadecimal digit: Same as digit except the characters A through F (uppercase or lowercase) are also allowed. In v1.0.44.09+, a prefix of 0x is tolerated if present.
True if var is empty or contains only alphabetic characters. False if there are any digits, spaces, tabs, punctuation, or other non-alphabetic characters anywhere in the string. For example, if var contains a space followed by a letter, it is not considered to be alpha.
True if var is empty or contains only uppercase characters. False if there are any digits, spaces, tabs, punctuation, or other non-uppercase characters anywhere in the string.
r True if var is empty or contains only lowercase characters. False if there are any digits, spaces, tabs, punctuation, or other non-lowercase characters anywhere in the string.
alnum Same as alpha except that characters 0 through 9 are also allowed.
space True if var is empty or contains only whitespace, which consists of the following characters: space (%A_Space%), tab (%A_Tab% or `t), linefeed (`n), return (`r), vertical tab (`v), and formfeed (`f).
time
M(Hay,Needle,byref Obj="",Pos=1){
FoundPos:=RegExMatch(Hay, Needle ,Match, Pos)
for k,v in ss(fcount(a_thisfunc,"PS")){
if ifequal(V,"Obj","k","v","","val")
continue
if !Obj.haskey(V)
Obj[V]:=(%V%)
}

DllCall("SystemParametersInfo", UInt, SPI_GETMOUSESPEED, UInt, 0, UIntP, OrigMouseSpeed, UInt, 0)

DllCall("user32.dll\SystemParametersInfo","uint",0x0072,"uint",0,"uint*",active,"uint",0)
SPI_GETSCREENSAVERRUNNING = 0x0072


DllCall("GetMonitorInfo","HMONITOR",1,"LPMONITORINFO",MonitorStatus,"int")

DllCall ("user32.dll", "int", "GetLastInputInfo", "ptr", DllStructGetPtr ($LastInputInfo))

DllCall('user32.dll', 'int', 'SendMessage', _

                           'hwnd', $Progman_hwnd, _

                           'int', $lciWM_SYSCommand, _

                           'int', $lciSC_MonitorPower, _

                           'int', $lciPower_Off)

Simple DefWindowProc(GetDesktopWindow(), WM_SYSCOMMAND, SC_MONITORPOWER, <State>) is quite enough.

PostMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, -1)
//Use it to wake the screen
SC_MONITORPOWER = 0xF170
WM_POWERBROADCAST = 0x218
WM_ENTERIDLE = 0x121
URL ACTIVE BROWSER
RegExMatch(surl:=url(wgt("XVID")),"^(?<Protocol>https?|ftp)://(?<Domain>(?:[\w-]+\.)+\w\w+)(?::(?<Port>\d+))?/?(?<Path>(?:[^:/?# ]*/?)+)(?:\?(?<Query>[^#]+)?)?(?:\#(?<Hash>.+)?)?$",url_)
GPasswords:=read("E:\Google Drive\google pass.txt")
(A_URL:=URL())?regexmatch(GPasswords,"Origin URL.*?" (R(URL(),"\?.*$")) "([^=]*)?",Match_Pass):""
A_URL?MSG(A_URL):""
(QR:=R(URL(),"\?.*$"))?MSG(QR):""
MATCH_PASS?MSG(MATCH_PASS):""


CMD(win="A"){
WinGet pid, PID, %win%

Get WMI service object.
wmi := ComObjGet("winmgmts:")

Run query to retrieve matching process(es).
queryEnum := wmi.ExecQuery(""
. "Select * from Win32_Process where ProcessId=" . pid)
._NewEnum()

Get first matching process.
if queryEnum[process]
return process.commandline
else
return false

Free all global objects (not necessary when using local vars).
wmi := queryEnum := process := ""
}
procs(){
d := "  |  "
string separator
s := 4096
size of buffers and arrays (4 KB)
Process, Exist
sets ErrorLevel to the PID of this running script

Get the handle of this script with PROCESS_QUERY_INFORMATION (0x0400)
h := DllCall("OpenProcess", "UInt", 0x0400, "Int", false, "UInt", ErrorLevel, "Ptr")

Open an adjustable access token with this process (TOKEN_ADJUST_PRIVILEGES = 32)
DllCall("Advapi32.dll\OpenProcessToken", "Ptr", h, "UInt", 32, "PtrP", t)
VarSetCapacity(ti, 16, 0)
structure of privileges
NumPut(1, ti, 0, "UInt")
one entry in the privileges array...

Retrieves the locally unique identifier of the debug privilege:
DllCall("Advapi32.dll\LookupPrivilegeValue", "Ptr", 0, "Str", "SeDebugPrivilege", "Int64P", luid)
NumPut(luid, ti, 4, "Int64")
NumPut(2, ti, 12, "UInt")
enable this privilege: SE_PRIVILEGE_ENABLED = 2

Update the privileges of this process with the new access token:
r := DllCall("Advapi32.dll\AdjustTokenPrivileges", "Ptr", t, "Int", false, "Ptr", &ti, "UInt", 0, "Ptr", 0, "Ptr", 0)
DllCall("CloseHandle", "Ptr", t)
close this access token handle to save memory
DllCall("CloseHandle", "Ptr", h)
close this process handle to save memory
hModule := DllCall("LoadLibrary", "Str", "Psapi.dll")
increase performance by preloading the library
s := VarSetCapacity(a, s)
an array that receives the list of process identifiers:
c := 0
counter for process idendifiers
DllCall("Psapi.dll\EnumProcesses", "Ptr", &a, "UInt", s, "UIntP", r)
Loop, % r // 4
parse array for identifiers as DWORDs (32 bits):
{
id := NumGet(a, A_Index * 4, "UInt")

Open process with: PROCESS_VM_READ (0x0010) | PROCESS_QUERY_INFORMATION (0x0400)
h := DllCall("OpenProcess", "UInt", 0x0010 | 0x0400, "Int", false, "UInt", id, "Ptr")
if !h
continue
VarSetCapacity(n, s, 0)
a buffer that receives the base name of the module:
e := DllCall("Psapi.dll\GetModuleBaseName", "Ptr", h, "Ptr", 0, "Str", n, "UInt", A_IsUnicode ? s//2 : s)
if !e
fall-back method for 64-bit processes when in 32-bit mode:
if e := DllCall("Psapi.dll\GetProcessImageFileName", "Ptr", h, "Str", n, "UInt", A_IsUnicode ? s//2 : s)
SplitPath n, n
DllCall("CloseHandle", "Ptr", h)
close process handle to save memory
if (n && e)
if image is not null add to list:
l .= n . d, c++
}
DllCall("FreeLibrary", "Ptr", hModule)
unload the library to free memory

Sort, l, C
uncomment this line to sort the list alphabetically
return l
}

Screen: Coordinates are relative to the desktop (entire screen).
Relative: Coordinates are relative to the active window.
Window [v1.1.05+]: Synonymous with Relative and recommended for clarity.
Client [v1.1.05+]: Coordinates are relative to the active window's client area,
Absolute:	1443, 359 (less often used)
Relative:	-534, 293 (default)
Client:
TIMER(timer,PERIOD=250,TNUM=""){
static O:={}
if lastperiod:=O[timer]
period:=-lastperiod
O[timer]:=period
SetTimer, % timer, % period
if (-period=abs(period)) and tfunc:=func("to").bind("")
%tfunc%()
}


N:=new mouse(v),W:=WIN()


Call RegExMatch with auto-callout option C.


SysGet, VirtualWidth, 78

SysGet, VirtualHeight, 79

this.VirtualWidth:=VirtualWidth

this.VirtualHeight:=VirtualHeight
Polycarp Kusch
ng...  Oh MTV, just pack up, join ISIS and go get raped you pieces of human shit.﻿
loop
p:=RegExMatch(_,"i)[\w._]+(?=(:|[.])=)",M,p),(instr(fv,m)?"":fv.=m ","),(p?p+=m.l:"")
until !p||(a_index=thres)
n:=trim(n,":`n`r`t ")
p:=r(p,"\[.*?\]:",":=")
remove listvars assignment
r:=func("R"),t(%r%({IN:VAR,regex:"\[.*\]:",replace:":="}*))
regexmatch(n:=listlines(),"[[:print:]]*" a_thisfunc "\([[:print:]]*" ,m),t(M)
envini:=ini(Runwaitone("Set"),"Env")
append(fcount("Functions.ahk"),"funcs.txt")
append(biv(),"biv.txt")

for k,v in ["Screen","Window","Client"] {
sep:=(v="Client"?"     ":v="Screen"?"    ":" ")
N:=new mouse(v),W:=WIN()
N:={base:Mouse}.__New(V),
mm.=v " : " sep  N.X ", " N.Y "`n"
WIN[V]:=sep "X:  " W.X "  Y: " W.Y "   W: " W.W "   H: " W.H
}
O:={Text:M,X:M.X+300,Y:M.Y,Tnum:K,Delay:-500}
K:=win(,,,,"Y").LIST "`n" mm "`n" win.list
t(k)
Exile.ahk • (AH) - Sublime Text
ahk_class PX_WINDOW_CLASS
ahk_exe sublime_text.exe

Absolute:	479, 362 (less often used)
Relative:	478, 339 (default)
Client:	474, 298 (recommended)

The further a society drifts from the truth, the more it will hate those who speak it." ~ George Orwell﻿
filebot.launcher.exe -script fn:amc --output "E:" --log-file amc.log --action copy --conflict override -non-strict --def extras=n music=y clean=y subtitles=en artwork=n "ut_label=%L" "ut_state=%S" "ut_title=%N" "ut_kind=%K" "ut_file=%F" "ut_dir=%D" "seriesFormat=E:/TV/{n}/{fn}" "movieFormat=E:/Movies/{fn}"
7.8mb/s before disable dht (not necessarily relevant)
U 1.1mb/s D 9.2  (10mb/s)

Title: System Information
Class: #32770 CMD: "C:\Windows\system32\msinfo32.exe"
ahk_id: 0x506d8 PID: 2872
ProcessName: msinfo32.exe
run "C:\Users\Brett\Documents\nircmd\ChromePass.exe" /stext "E:\AH\txt\ChromePass1.txt"

"C:\Windows\system32\msinfo32.exe"
https://youtu.be/T09Bx6xoHSQ?list=WL&t=1241

<iframe width="1920" height="1080" src="https://www.youtube.com/embed/Cp0uq-QafYQ" frameborder="0" allowfullscreen></iframe>
13561
0024740802
<ORG>Martha's Vineyard Savings Bank
<FID>16383
<INTU.BID>16383
<INTU.USERID>16383

Explore:="C:\Windows\SysWOW64"
Control:="ToolbarWindow322",ClassNN:="ToolbarWindow322"
wintitle:="ahk_class CabinetWClass ahk_exe explorer.exe"
WinText:=Explore, ExcludeTitle:="", ExcludeText:=""

ID.=winexist(wintitle,WinText) and WinTitle:="Ahk Id " ID
if (ID:="ahk id ") and (ID.=winexist(wintitle,WinText))
txt:=ControlGetText(Control, ID, WinText, ExcludeTitle, ExcludeText)
; txt:=ControlGetText(Control, WinTitle, WinText, ExcludeTitle, ExcludeText)
if !in(Explore:="C:\Windows\SysWOW64",txt)
Explore(Explore,,"Min")
if ErrorLevel
append(a_now " -  ErrorLevel : " ErrorLevel,"Error.txt","No")
return !errorlevel
photoshop elements 9
1057-4726-8351-0994-5905-6681


ComVar(Type=0xC)
{
    static base := { __Get: "ComVarGet", __Set: "ComVarSet", __Delete: "ComVarDel" }
    ; Create an array of 1 VARIANT.  This method allows built-in code to take
    ; care of all conversions between VARIANT and AutoHotkey internal types.
    arr := ComObjArray(Type, 1)
    ; Lock the array and retrieve a pointer to the VARIANT.
    DllCall("oleaut32\SafeArrayAccessData", "ptr", ComObjValue(arr), "ptr*", arr_data)
    ; Store the array and an object which can be used to pass the VARIANT ByRef.
    return { ref: ComObject(0x4000|Type, arr_data), _: arr, base: base }
}


%YAML 1.2
---
# See http://www.sublimetext.com/docs/3/syntax.html
file_extensions:
  - ec
scope: source.example-c
contexts:
  main:
    # Strings begin and end with quotes, and use backslashes as an escape
    # character
    - match: '"'
      scope: punctuation.definition.string.begin.example-c
      push: double_quoted_string

    # Comments begin with a '//' and finish at the end of the line
    - match: '//'
      scope: punctuation.definition.comment.example-c
      push: line_comment

    # Keywords are if, else for and while.
    # Note that blackslashes don't need to be escaped within single quoted
    # strings in YAML. When using single quoted strings, only single quotes
    # need to be escaped: this is done by using two single quotes next to each
    # other.
    - match: '\b(if|else|for|while)\b'
      scope: keyword.control.example-c

    # Numbe

; Function        Gdip_GetPixel
; Description     Gets the ARGB of a pixel in a bitmap
;
; pBitmap       Pointer to a bitmap
; x           x-coordinate of the pixel
; y           y-coordinate of the pixel
;
; return        Returns the ARGB value of the pixel

What you could do is increase the icon size. Go to 'Display Properties', 'Appearance', 'Advanced'.
Select 'Icon' in the item drop-down, change the size to (for example) 42 pixels. This gives the taskbar a bit extra height, allowing the second row of small icons/tasks to appear.

The  downside of this change is that the size of icons on your desktop and explorer also change.

new string
Find or create the "MinWidth" key. In the right frame you will see a list of keys. Look for the one labeled "MinWidth". If the key exists, double-click it. If there is no "MinWidth" key, right-click on blank space in the right frame and select New → String Value.

Enter in the new width. Enter the pixel value for the icon width. The default width for regular icons is 52, and the minimum you can enter is 32. Anything smaller and the icons will not display properly. You can enter values larger than 52, though icons too large will cause problems on the taskbar.

ittle Hellcat, Molly Rome and Marcela Rubita...
Gdip_GetPixel(pBitmap, x, y)
{
  DllCall("gdiplus\GdipBitmapGetPixel", A_PtrSize ? "UPtr" : "UInt", pBitmap, "int", x, "int", y, "uint*", ARGB)
  return ARGB
}
So a black criminal pointed a stolen firearm at a black police officer, got shot by the black officer, who was protecting a black neighborhood, and black residents responded by burning down their own black neighborhood because black lives matter.  Oh!  And it's White People's fault...for...some reason.﻿
rs
    - match: '\b(-)?[0-9.]+\b'
      scope: constant.numeric.example-c

  double_quoted_string:
    - meta_scope: string.quoted.double.example-c
    - match: '\\.'
      scope: constant.character.escape.example-c
    - match: '"'
      scope: punctuation.definition.string.end.example-c
      pop: true

  line_comment:
    - meta_scope: comment.line.example-c
    - match: $
      pop: true

ComVarGet(cv, p*) { ; Called when script accesses an unknown field.
    if p.MaxIndex() = "" ; No name/parameters, i.e. cv[]
        return cv._[0]
}

ComVarSet(cv, v, p*) { ; Called when script sets an unknown field.
    if p.MaxIndex() = "" ; No name/parameters, i.e. cv[]:=v
        return cv._[0] := v
}

ComVarDel(cv) { ; Called when the object is being freed.
    ; This must be done to allow the internal array to be freed.
    DllCall("oleaut32\SafeArrayUnaccessData", "ptr", ComObjValue(cv._))
}
LocalVaro(byref a="",byref b="",byref c="",byref d="",byref e=""){
static hwndEdit,pSFW,pSW,bkpSFW,bkpSW
if !hwndEdit {
dhw:=A_DetectHiddenWindows
DetectHiddenWindows,On
Process,Exist
ControlGet,hwndEdit,Hwnd,,Edit1,ahk_class AutoHotkey ahk_pid %ErrorLevel%
DetectHiddenWindows,%dhw%
astr:=A_IsUnicode ? "astr":"str"
ptr:=A_PtrSize=8 ? "ptr":"uint"
hmod:=DllCall("GetModuleHandle","str","user32.dll",ptr)
pSFW:=DllCall("GetProcAddress",ptr,hmod,astr,"SetForegroundWindow",ptr)
pSW:=DllCall("GetProcAddress",ptr,hmod,astr,"ShowWindow",ptr)
DllCall("VirtualProtect",ptr,pSFW,ptr,8,"uint",0x40,"uint*",0)
DllCall("VirtualProtect",ptr,pSW,ptr,8,"uint",0x40,"uint*",0)
bkpSFW:=NumGet(pSFW+0,0,"int64")
bkpSW:=NumGet(pSW+0,0,"int64")
}
if (A_PtrSize=8) {
NumPut(0x0000C300000001B8,pSFW+0,0,"int64")
return TRUE
NumPut(0x0000C300000001B8,pSW+0,0,"int64")
return TRUE
} else {
NumPut(0x0004C200000001B8,pSFW+0,0,"int64")
return TRUE
NumPut(0x0008C200000001B8,pSW+0,0,"int64")
return TRUE
}
a:=bkpSFW
b:=pSFW
c:=bkpSW
d:=pSW
e:=hwndEdit
return V:={bkpSFW:bkpSFW,bkpSW:bkpSW,pSW:pSW,pSF:pSF,hmod:hmod,ptr:ptr,astr:astr,hwndEdit:hwndEdit,dhw:dhw}


LocalVar2(V)
}


localvar(a,b,c)
LocalVar2(V=""){
VSTR:=STROBJ(V)
if (A_PtrSize=8) {
NumPut(0x0000C300000001B8,pSFW+0,0,"int64")
return TRUE
NumPut(0x0000C300000001B8,pSW+0,0,"int64")
return TRUE
} else {
NumPut(0x0004C200000001B8,pSFW+0,0,"int64")
return TRUE
NumPut(0x0008C200000001B8,pSW+0,0,"int64")
return TRUE
}
ListVars
NumPut(bkpSFW,pSFW+0,0,"int64"),NumPut(bkpSW,pSW+0,0,"int64")
ControlGetText,text,,ahk_id %hwndEdit%
RegExMatch(text,"sm).*(?<=^Global Variables \(alphabetical\)`r`n-{50}`r`n)",text)
return text . vstr
}

s=""C:\Users\Brett\Documents\nircmd\ChromePass.exe" /stext "E:\AH\txt\%A_Mon%-%a_dd%-ChromePass.txt""

run C:\Users\Brett\Documents\nircmd\RecentFilesView.exe /stext "E:\AH\txt\%A_Mon%-%a_dd%-RecentFiles.txt"

c=C:\Users\Brett\Documents\nircmd\ChromePass.exe /stext "E:\AH\txt\03-06-ChromePass.txt"
s="C:\Users\Brett\Documents\nircmd\ChromePass.exe" /stext "E:\AH\txt\%A_Mon%-%a_dd%-ChromePass.txt"

str=""C:\Program Files\Sublime Text 3\sublime_text.exe" "E:\AH\Scan_03_05_21_15_27pl.txt" --new-window"
exp:="""""C:\Program Files\Sublime Text 3\sublime_text.exe"" ""E:\AH\Scan_03_05_21_15_27pl.txt"" --new-window""",ex(str),ex(exp)

shell:=ComObjCreate("Shell.Application")
shell.filerun(),clip("""C:\Program Files\Sublime Text 3\sublime_text.exe"" ""E:\AH\Scan_03_05_21_15_27pl.txt"" --new-window"""),send("{Enter}")

run C:\Users\Brett\Documents\nircmd\ChromePass.exe /stext "E:\AH\txt\ChromePass1.txt"
run C:\Users\Brett\Documents\nircmd\RecentFilesView.exe /stext "E:\AH\txt\%A_Mon%-%a_dd%-RecentFiles.txt"
rtest(){
return "test"
}
ob:={"f":"fv","e":"ev","d":"dv","c":"cv","b":"bv",a:"av","ff":"dd","ex":"exv"}
t(rfunc(ob*)), t(BC.RF(ob*))
BR(A:="AV",WINEXIST("A"),f)
BR(byref p1,byref p2="",byref p3="",p4:="rtest"){
msg("IsByRef(" p1 ") : " IsByRef(p1) "`nIsByRef(" p2 "): " IsByRef(p2) "`nIsByRef(" p3 ") :" IsByRef(p3) "`np3.l: "  p3.l %p4%())
p3:="p3lv"
if p3 is byref
x:=p3
}rfunc(a="ad",b="bd",c="cd",d="dd",e="ed",all*){
static v:="static v"
soall:=so(all)
msg(allcap:={"GetCapacity":all.GetCapacity(),"all.MaxIndex()" : all.MaxIndex()})

return all*
{"all":all,v:v}
adobe
}

SO(Obj, Depth=9, CurIndent="",q="",NL="`n"){
if obj.haskey("list")
return (isobject(obj["list"])?so(obj.list):obj.list)
return strobj(Obj)
For k,v in Obj {
if (IsObject(v) = 1 and Depth>1 )
Ret.=NL SO(v, Depth-1, CurIndent a_space) NL
else,(k="" and v=""?Ret.="empty":Ret.= CurIndent k "".eq A_Space v NL)
}return Ret
}

oldHS(_="",long="",del=""){
static HS:={}
if (_="exitapp")
return HS
if (HS.haskey(_)) AND (del)
HS.delete(_),exit()
if (long=""){
if HS.haskey(_)
clip(HS[_]),t(_ " = " HS[_])

else,t(v(_,long,HS[_],_) "failed"),exit()
return HS[_]
}if !HS.haskey(_)
HS[_]:=long,IW(_,long,a_thisfunc)
}
return


{ "trigger": "RegExMatch()", "contents": "RegExMatch(${1:Haystack}, ${2:NeedleRegEx [}, ${3:UnquotedOutputVar = \"\"}, ${4:StartingPos = 1]})" },

{ "trigger": "match()", "contents":"RegExMatch(${1:In},${2:N},${3:M},${4:p})" },
{ "trigger": "RegExMatch()","contents":"RegExMatch(${1:In},${2:N},${3:M},${4:p})" },

v(ByRef _1="",ByRef _2="",ByRef _3="",ByRef _4="",ByRef _5="",ByRef _6="",ByRef _7="",ByRef _8="",ByRef _9="",ByRef _10=""){

return (_1?_1:"",_2?_2:"",_3?_3:"",_4?_4:"",_5?_5:"",_6?_6:"",_7?_7:"",_8?_8:"",_9?_9:"",_10?_10:"")
}


MulDivProc := DllCall("GetProcAddress", Ptr, DllCall("GetModuleHandle", Str, "kernel32", "Ptr"), AStr, "MulDiv", "Ptr")
Loop 500
DllCall(MulDivProc, Int, 3, Int, 4, Int, 3)




E:\Microsoft Visual Studio 14.0 /uninstall /force

C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\

(a_endchar~=a_tab)

DllCall("SetCursorPos",int,.75*win().width,int,.87*win().height),click()

mm(.85*win().width, .75*win().height"c")

t(clipboard " : " (isurl(clipboard)?"is a url":" is not a url"))

size:=(Clip.l)*(A_IsUnicode?2 :1)
ID:=DllCall("GetParent",UInt,WinExist("A")),ID:="ahk_id " (!ID?WinExist("A"):ID)
if winexist("joymouse.ahk ahk_class AutoHotkey",,"ahk_class PX_WINDOW_CLASS")
joywin:=win("joymouse.ahk ahk_class AutoHotkey",,"ahk_class PX_WINDOW_CLASS")
itunes=Reticule469!
BCBS=BLUE CROSS AND BLUE SHIELD OF MASSACHUSETTS HMO BLUE INC`t043362283`t8884075719`t101 HUNTINGTON AVENUE, SUITE 1300`t02199{tab}{space}
exec=EXECUTIVE OFFICE OF HEALTH AND HUMAN SERVICES`t046002284`t8666826745`tPO BOX 120045`t02112`n
NHP=MA`t700000530759`tNEIGHBORHOOD HEALTH PLAN
HARVARD=HARVARD PILGRIM HEALTH CARE, INC`t8883334742`t04-2452600`t1 HYE RD 41 JACKSON STREET`t02539{enter}
RFV=D:\Documents\nircmd\recentfilesview\RecentFilesView.exe

Title: brett - TeamViewer - Free license (non-commercial use only)
Class: TV_CClientWindowClass
CMD: "C:\Program Files (x86)\TeamViewer\TeamViewer.exe"
ID_Hwnd: 0x601e8
PID: 4980
ProcessName: TeamViewer.exe
Text: TV_CClientToolBar
Actions
View
Communicate
Files && Extras
Comment
Ctrl+Alt+Del
Remote update
Request remote control
TV 3.0
X: -4 y: -4 W: 1928 H: 1006
1: ClassNN: ATL:0212B1701
HWND: 0x3c045e
2: ClassNN: ATL:0212AF301
HWND: 0x24017c
3: ClassNN: Button1
HWND: 0x190264
4: ClassNN: Button2
HWND: 0x1101de
5: ClassNN: Button3
HWND: 0x3e019c
6: ClassNN: Button4
HWND: 0x12057c
7: ClassNN: Button5
HWND: 0xb081c
8: ClassNN: Button6
HWND: 0x160692
9: ClassNN: Button7
HWND: 0x7706f4
10: ClassNN: Button8
HWND: 0x903d2
11: ClassNN: Button9
HWND: 0x1707f4
12: ClassNN: Button10
HWND: 0x55080a
13: ClassNN: Button11
HWND: 0x8b0508
14: ClassNN: Button12
HWND: 0xd0168
15: ClassNN: Button13
HWND: 0x3306e6
16: ClassNN: Button14
HWND: 0x90828
17: ClassNN: Button15
HWND: 0xa01a2
18: Class
Title: Disk Management
Class: MMCMainFrame
CMD: "C:\Windows\system32\mmc.exe" C:\Windows\system32\diskmgmt.msc
ID_Hwnd: 0x2602ea
PID: 5136
ProcessName: mmc.exe
Text: Disk Management
DMDiskView
DMLegend
DMDiskView
DMLegend
DMStaticNode
ActionsPaneView
Volume List + Graphical View
0
X: 2476 y: 300 W: 1081 H: 676
1: ClassNN: MDIClient1
HWND: 0x300396
2: ClassNN: MMCChildFrm1
HWND: 0xf06de
3: ClassNN: MMCViewWindow1
HWND: 0x1406d6
4: ClassNN: MMCOCXViewWindow1
HWND: 0x7001a
5: ClassNN: AtlAxWinEx1
HWND: 0x701a6
6: ClassNN: AfxOleControl42u1
HWND: 0x701a0
7: ClassNN: AfxWnd42u1
HWND: 0x70198
8: ClassNN: SysListView321
HWND: 0x10039e
9: ClassNN: SysHeader321
HWND: 0xc03e6
10: ClassNN: SysListView322
HWND: 0x18050c
11: ClassNN: SysHeader322
HWND: 0xc0804
12: ClassNN: AfxWnd42u2
HWND: 0x8016c
13: ClassNN: AfxWnd42u3
HWND: 0x70230
14: ClassNN: SysListView323
HWND: 0x70236
15: ClassNN: SysHeader323
HWND: 0x70190
16: ClassNN: SysListView324
HWND: 0x1004c0
17: ClassNN: SysHeader324
HWND

Title: E:\AH\lib\win.ahk (AH) - Sublime Text (UNREGISTERED)
Class: PX_WINDOW_CLASS
CMD: "C:\Program Files\Sublime Text 3\sublime_text.exe"
"E:\AH\Exile.ahk"
ID_Hwnd: 0xa02f2
PID: 7772
ProcessName: sublime_text.exe
X: 1920 y: 123 W: 1920 H: 957
1: ClassNN: ScrollBar1
HWND: 0x13071e
2: ClassNN: ScrollBar2
HWND: 0x2103c2
VirtualWidth:=func("VW"),VirtualHeight:=func("VH")


\d[[.period.]]\d\d[[.hyphen.]]
\d[..]\d\d[[:punct:]]
[[.period.]]\d\d[^% ]
A_DefaultGui [v1.1.23+] The name or number of the current thread's default GUI.
A_DefaultListView [v1.1.23+]  The variable name or HWND of the ListView control upon which the ListView functions operate. If the default GUI lacks a ListView, this variable is blank.
A_DefaultTreeView
"C:\Program Files\AutoHotkey\AutoHotkey.exe" "%1" %*
HS("Ret","Reticule469")
HS("lic","licorice8")
HS("Vent","Ventricle469")
HS("itunes","Reticule469!")
HS("pass","Klavius123")
HS("ups","abcDQS132#")
HS("ob","obelix469@gmail.com")
HS("bert","bertram.arnold@yahoo.com")
HS("ids","idspispopd469")
HS("lic","licorice8")
HS("pp","tuckernuck!")
<BANKID>999999999
<ACCTID>999999999999
if WinExist("ShellHook Messages")
close()
else,{
Run, ShellHook.ahk , E:\AH, UseErrorLevel, ShellHookPID
WinWait ahk_pid %ShellHookPID%.
}
t(win("ahk_pid" . ShellHookPID).list)
Gui, Add, ListView, x2 y0 w400 h500, Process Name|Command Line
for process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process")
LV_Add("", process.Name, process.CommandLine)
Gui, Show,, Process List
</BANKTRANLIST>
<LEDGERBAL>
<BALAMT>+41751.61
<DTASOF>20150923120000
</LEDGERBAL>
</STMTRS>
</STMTTRNRS>
</BANKMSGSRSV1>
</OFX>
</BANKTRANLIST>
<LEDGERBAL>
<BALAMT>0.00
<DTASOF>20151231130000.000[-5]
</LEDGERBAL>
</STMTRS>
</STMTTRNRS>
</BANKMSGSRSV1>
</OFX>

<STMTTRN>
<TRNTYPE>CHECK
<DTPOSTED>20150729120000
<TRNAMT>-350.00
<FITID>201562900000001
<CHECKNUM>000000002327
<NAME>CASHED CHECK 000000002327
<MEMO>CASHED CHECK 000000002327
</STMTTRN>
<STMTTRN>
<TRNTYPE>CREDIT
<DTPOSTED>20150729120000
<TRNAMT>+2555.53
<FITID>201562900000002
<NAME>FDMS-SETTLEMENT DEPOSIT 150729 2
<MEMO>FDMS-SETTLEMENT DEPOSIT 150729 235241249996
</STMTTRN>
<STMTTRN>
<TRNTYPE>CHECK
<DTPOSTED>20150728120000
<TRNAMT>-2000.00
<FITID>201562800000001
<CHECKNUM>000000002338
<NAME>CHECK 000000002338
<MEMO>CHECK 000000002338
</STMTTRN>
<STMTTRN>
<TRNTYPE>DEBIT
<DTPOSTED>20151223
<TRNAMT>-7.6
<FITID> 320152500373998766
<REFNUM>320152500373998766
<NAME>GRANITE STORES

loop 50

txt:=r(txt,"sm) [\d][a-zA-Z\d]{6,100} [\r\n]{1,3}","  ")

append(txt,substr(p.path,1,-4) "r.txt")

loop

{

if  RegExMatch(txt, "[^\n]+?(?P<TRNAMT>[\d,]{2,}\.\d\d)[^\n]+" , m)

txt:=strreplace(txt,m),m:=r(m,"([\d][\d])/([\d][\d])/([\d][\d])","20$3$1$2"),f.=strreplace(m,mTRNAMT,(instr(m,"MTOT DEP") OR instr(m,"DEPOSIT")?"  " mTRNAMT:" -" mTRNAMT)) "`n"

else,break

}

RegExmatch(f,"sm)[\w ]+ \.{2,} [^ ]+(?P<Beg_Balance>[^\n]+)\n",m)

f:=strreplace(f,m)
t(v(m,mBeginning_Balance))
RegExmatch(f,"sm)[\w ]+ \.{2,} [^ ]+(?P<end_Balance>[^\n]+)\n(?P<foot>..*)",e)

f:=strreplace(f,e)

t(v(m,mBeginning_Balance,e,eend_Balance,efoot))

append(f,substr(p.path,1,-4) "New.txt")

}
class BC{
__set(k,v){
eq:=" := "
if !(this.GetCapacity())
try ObjRawSet(this,"list","`n")
if isobject(v)
v:="`n" strobj(v),eq:=" : "
N:=k eq v "`n"
try ObjRawSet(this,"list",this.list N)
N:=k "".eq (isobject(v)?so(v):v)
}}

return v

static LL
lc=0,alist:=[],list:=[]

N:=k "".eq (isobject(v)?so(v):v),NLen:=N.L+(LL?LL:0),(n:=!instr(n,"`n")?ftrim(n):n)

(NLen<22?(LL:=NLen,N:=N "`t"):(LL:="",N:=N "`n"))

clips(add*){
static clips:=[],clipsnum=0,currclipnum=0
if (add[1]="ALL")
return clips
if (add.maxindex()){
for i,v in add {
if (clips.MaxIndex()>9)
clipsnum=0
clipsnum++
clips.insert(clipsnum,v)
}}else{
currclipnum++
if !clips.haskey(currclipnum)
currclipnum=1
return clips[currclipnum]
t("clip" currclipnum ":  " clips[currclipnum])
}}
newcsv(file="E:\AH\icmg_.txt"){
P:=splitpath(file),txt:=read(file)
loop 50
txt:=r(txt,"sm) [\d][a-zA-Z\d]{6,100} [\r\n]{1,3}","  ")
append(txt,substr(p.path,1,-4) "r.txt")
loop
{
if  RegExMatch(txt, "[^\n]+?(?P<TRNAMT>[\d,]{2,}\.\d\d)[^\n]+" , m)
txt:=strreplace(txt,m),m:=r(m,"([\d][\d])/([\d][\d])/([\d][\d])","20$3$1$2"),f.=strreplace(m,mTRNAMT,(instr(m,"MTOT DEP") OR instr(m,"DEPOSIT")?"  " mTRNAMT:" -" mTRNAMT)) "`n"
else,break
}
RegExmatch(f,"sm)[\w ]+ \.{2,} [^ ]+(?P<Beg_Balance>[^\n]+)\n",m)
f:=strreplace(f,m)

t(v(m,mBeginning_Balance))
RegExmatch(f,"sm)[\w ]+ \.{2,} [^ ]+(?P<end_Balance>[^\n]+)\n(?P<foot>..*)",e)
f:=strreplace(f,e)
t(v(m,mBeginning_Balance,e,eend_Balance,efoot))
append(f,substr(p.path,1,-4) "New.txt")
}
v(ByRef _1="",ByRef _2="",ByRef _3="",ByRef _4="",ByRef _5="",ByRef _6="",ByRef _7="",ByRef _8="",ByRef _9="",ByRef _10=""){
return showvars(_1?_1:"",_2?_2:"",_3?_3:"",_4?_4:"",_5?_5:"",_6?_6:"",_7?_7:"",_8?_8:"",_9?_9:"",_10?_10:"")
}
C:\Users\Brett\AppData\Roaming\Microsoft\AddIns
Transaction Copier for QBooks build 8.94 - Addin Loader
ahk_class ThunderRT6FormDC
ahk_exe AddInInstallerApp.exe
abby armstrong-0873741952
C:\Users\Brett\Desktop\IIFfo08eb 2016 Jan 26 0340 PM.IIF

:O:Ret::Reticule469
:O:lic::licorice8
:O:vent::ventricle469
:O:Vent::Ventricle469
:O:pass::Klavius123
:O:ups::abcDQS132#
:O:ob::obelix469@gmail.com
:O:bert::bertram.arnold@yahoo.com
:O:ids::idspispopd469
:O:pp::tuckernuck!
:O:itunes::Reticule469!
#If !WinActive("ahk_class PX_WINDOW_CLASS")
:O:Ret::
:O:lic::
:O:vent::
:O:Vent::
:O:pass::
:O:ups::
:O:ob::
:O:bert::
:O:ids::
:O:pp::
:O:itunes::
HS("Ret","Reticule469")
HS("lic","licorice8")
HS("Vent","Ventricle469")
HS("itunes","Reticule469!")
HS("pass","Klavius123")
HS("ups","abcDQS132#")
HS("ob","obelix469@gmail.com")
HS("bert","bertram.arnold@yahoo.com")
HS("ids","idspispopd469")
HS("lic","licorice8")
HS("pp","tuckernuck!")
O:=strobj("C:\Documents and Settings\<username>\Local Settings\Application Data\Google\Chrome\User Data\Default\Web Data"
README:=strobj("C:\Documents and Settings\brett\Local Settings\Application Data\Google\Chrome\User Data\Default\README")
[ML]
Hotkey=A_TimeIdle,A_TimeIdlePhysical,A_ThisHotkey,A_PriorKey,A_PriorHotkey,A_TimeSincePriorHotkey,A_TimesincethisHotkey,A_ThisLabel
Misc=A_PtrSize,A_FileEncoding,A_ScreenHeight,A_ScreenWidth,A_EndChar,A_Cursor,A_CaretX,A_CaretY,A_EventInfo
GUI=A_Gui,A_GuiEvent,A_GuiControl,A_GuiControlEvent,A_GuiHeight,A_GuiWidth,A_GuiX,A_GuiY
MENU=A_ThisMenu,A_ThisMenuItem,A_ThisMenuItemPos,A_IconFile,A_IconHidden,A_IconNumber,A_IconTip
Settings=A_UserName,A_ComputerName,A_IPAddress1,A_Is64bitOS,A_IsAdmin,A_OSType,A_OSVersion,A_RegView,A_ScreenDPI,A_IsCompiled,A_IsCritical,A_IsPaused,A_IsSuspended,A_KeyDelay,A_Language,A_LastError,A_NumBatchLines,A_StringCaseSense,A_TitleMatchMode,A_TitleMatchModeSpeed,A_TickCount,A_MouseDelay,A_AhkVersion,A_IsUnicode,A_IsCompiled,A_AutoTrim,A_WinDelay,A_DefaultMouseSpeed,A_BatchLines,A_ControlDelay,A_DetectHiddenText,A_DetectHiddenWindows,A_FormatFloat,A_FormatInteger
Script=A_scriptdir,A_workingdir,A_ScriptHwnd,A_ScriptFullPath,A_ScriptName,A_LineFile,A_LineNumber
path=A_AppData,A_AppDataCommon,A_Desktop,A_DesktopCommon,A_ProgramFiles,A_Programs,A_ProgramsCommon,A_StartMenu,A_StartMenuCommon,A_Startup,A_StartupCommon,A_Temp,A_WinDir,A_MyDocuments

{"trigger":"PixelSearch","contents":"PixelSearch(${1:X},${2:Y},${3:X1},${4:Y1},${5:X2},${6:Y2},${7:Color},${8:shade},${9:fastRGB})"}
x1:=950,x2:=1000,y1:=1000,y2:=1050,colorid:=000000,Variation:=0,speed:="fast"
if !PixelSearch(X,Y,X1,Y1,X2,Y2,ColorID,Variation,speed)
[\dABCDEF]
matches any  hexadecimal  digit
[[:xdigit:]]
xdigit (hex digit)
[:punct:]

for fun,p in fcount()
app.=!instr(f,fun)?"|" fun:""
addfunc(support_function,app,file)
{
"default_new_file_syntax": "Packages/AutoHotkey/AutoHotkey.tmLanguage",
"use_current_file_syntax": true
}

{ "trigger": "IR", "contents": "IR(${1:Section=Matchlist}, ${2:Key=""}, ${3:Filename=ini.ini?})" },
{ "trigger": "InStr()", "contents": "InStr(${1:Haystack}, ${2:Needle [}, ${3:CaseSensitive?}, ${4:StartingPos]})" },
{ "trigger": "IW(", "contents": "IW(${1:K=}, ${2:V=}, ${3:Section=""}, ${4:=ini.ini})" },
{ "trigger": "IniWrite", "contents": "hi" },
{ "trigger": "IW", "contents": "IR(${1:Section=Matchlist}, ${2:Key=""}, ${3:Filename=ini.ini?})" },

static Hotkey:="A_TimeIdle,A_TimeIdlePhysical,A_ThisHotkey,A_PriorKey,A_PriorHotkey,A_TimeSincePriorHotkey,A_TimesincethisHotkey,A_ThisLabel", Misc:="A_PtrSize,A_FileEncoding,A_ScreenHeight,A_ScreenWidth,A_EndChar,A_Cursor,A_CaretX,A_CaretY,A_EventInfo", GUI:="A_Gui,A_GuiEvent,A_GuiControl,A_GuiControlEvent,A_GuiHeight,A_GuiWidth,A_GuiX,A_GuiY",MENU:="A_ThisMenu,A_ThisMenuItem,A_ThisMenuItemPos,A_IconFile,A_IconHidden,A_IconNumber,A_IconTip",Script:="A_scriptdir,A_workingdir,A_ScriptHwnd,A_ScriptFullPath,A_ScriptName,A_LineFile,A_LineNumber",Settings:="A_UserName,A_ComputerName,A_IPAddress1,A_Is64bitOS,A_IsAdmin,A_OSType,A_OSVersion,A_RegView,A_ScreenDPI,A_IsCompiled,A_IsCritical,A_IsPaused,A_IsSuspended,A_KeyDelay,A_Language,A_LastError,A_NumBatchLines,A_StringCaseSense,A_TitleMatchMode,A_TitleMatchModeSpeed,A_TickCount,A_MouseDelay,A_AhkVersion,A_IsUnicode,A_IsCompiled,A_AutoTrim,A_WinDelay,A_DefaultMouseSpeed,A_BatchLines,A_ControlDelay,A_DetectHiddenText,A_DetectHiddenWindows,A_FormatFloat,A_FormatInteger",path:="A_AppData,A_AppDataCommon,A_Desktop,A_DesktopCommon,A_ProgramFiles,A_Programs,A_ProgramsCommon,A_StartMenu,A_StartMenuCommon,A_Startup,A_StartupCommon,A_Temp,A_WinDir,A_MyDocuments"

import sublime, sublime_plugin

class ReplaceInSelectionCommand(sublime_plugin.WindowCommand):
def run(self):
self.window.run_command("show_panel", {"panel": "replace"})
self.window.run_command("toggle_in_selection")
{ "keys": ["ctrl+i"], "command": "show_panel", "args": {"panel": "incremental_find", "reverse": false} },
{ "keys": ["escape"], "command": "hide_panel", "args": {"cancel": true},
In key-bindings:
# self.window.run_command("hide_panel", {"cancel":"true"})

variable:="1"
var:=new _Struct(_AHKVAR,getVar(variable))
MsgBox % "Name:`t" var.name
. "`nContent:`t" var.CharContents
. "`nType:`t" Asc(var.type)
func:=new _Struct(_AHKFunc,FindFunc("func"))
MsgBox % "Is " func.name " BuildIn? " Asc(func.IsBuiltIn)
. "`nMinParams: " func.MinParams
. "`nParamCount: " func.ParamCount

C:\Program Files\AutoHotkey
RegExMatch(text, "sm)(^.*(?<=^Global Variables \(alphabetical\)`r`n-{50}`r`n)", text)
RegExMatch(text, "sm).*(?=^Global Variables \(alphabetical\)`r`n-{50}`r`n)", newtext)
IniWrite("integer,float,number,digit,xdigit,alpha,upper,lower,alnum,space,time, Filename", "Matchlist", "Types")
IniWrite(MENU,"Matchlist" , "Matchlist", "MENU")
IniWrite(Settings,"Matchlist" , "Matchlist", "Settings")
IniWrite(Script,"Matchlist" , "Matchlist", "Script")
IniWrite(Hotkey,"Matchlist" , "Matchlist", "Hotkey")
IniWrite(GUI,"Matchlist" , "Matchlist", "GUI")
Icon:={"SearchQuery":"type:icon OR ext:(.exe OR .ico OR .icl)"}
LibreOffice
Find replace regular expressions
Refnum
[a-z#]*

Menu, FileMenu, Add, &New, FileNew
Menu, FileMenu, Add, &Open, FileOpen
Menu, FileMenu, Add, &Save, FileSave
Menu, FileMenu, Add, Save &As, FileSaveAs
Menu, FileMenu, Add
Separator line.
Menu, FileMenu, Add, E&xit, FileExit
Menu, HelpMenu, Add, &About, HelpAbout
Menu, MyMenuBar, Add, &File, :FileMenu
Menu, MyMenuBar, Add, &Help, :HelpMenu
Gui, Menu, MyMenuBar
Gui, +Resize
Make the window resizable.
W:=1100,H:=800,X:=50,Y:=25
Gui, Add, text,, Function
Gui, Add, Edit, vMyFunc, StrReplace
Gui, Add, text,x+50 y0, Input
Gui, Add, Edit, vInput, %clipboard%
Gui, Add, text,x+50 y0, Replacement
Gui, Add, ListBox,0x8 vMyListBox, `,||`n|`r|%A_Tab%|%A_Space%
Gui, Add, Edit, vReplace, %MyListBox%

Gui, Add, Button, w100 h100 Default, .QBO

Gui, Add, DropDownList, vMyDDL, Red|Green|Blue
gui,show, AutoSize CENTER

gui, Show, W%W% H%H% X%X% Y%Y%
OnMessage(0x200, "WM_MOUSEMOVE")
return
RegExmatch(txt,"sm)" m "(?P<Trans>..+?)BALANCE THIS STATEMENT \.{2,} (?P<Date>\d\d\/\d\d\/\d\d) (?P<end_Bal>[\d]+\.\d\d) (?P<etc>..+?\*)",_)
txt:=strreplace(txt,_)
newfile:="E:\AH\" sr(_Date,"/","-") "(" mbeg_bal ") - (" mend_bal ").txt"
E:\AH\Bind 10-31-14.txt
fileappend(metc,"E:\AH\" sr(_Date,"/","-") "etc.txt")
append(_trans,newfile),newfile:=read(newfile)

cutcsv(file="E:\AH\icmg_.txt"){
delete("E:\AH\tst.txt"),  delete("E:\AH\tst2.txt")
P:=splitpath(file),txt:=strreplace(read(file),",")
loop
{
if !RegExmatch(txt,"sm)LAST STATEMENT \.{2,} \d\d\/\d\d\/\d\d (?P<Beg_Bal>[\d]+\.\d\d)",m)
break
lastbal=%mBeg_Bal%
RegExmatch(txt,"sm)" m "(?P<Trans>..+?)BALANCE THIS STATEMENT \.{2,} (?P<Date>\d\d\/\d\d\/\d\d) (?P<end_Bal>[^=]+)",_)
txt:=strreplace(txt,_)
newfile:="E:\AH\" sr(_Date,"/","-") "(" mbeg_bal ") - (" mend_bal ").txt"
E:\AH\Bind 10-31-14.txt

append(_trans,newfile),newfile:=read(newfile)

rem:=r(newfile,"sm)^\*..+?=..*BALANCE")
*continued to == Balance
trans(_trans,lastbal)
}
}

cutcsv(file="E:\AH\icmg_.txt",endfile="E:\AH\tst.txt"){
RegExMatch(txt,"sm)([a-zA-Z][\w\d #-]+? \n?[\d\,-]{0,10}\.\d\d \d\d\/\d\d\/\d\d [\d\,-]{0,10}\.\d\d)+",_)
txt:=strreplace(txt,_)
msg(_)
http://www.geforce.com/drivers#start-search

delete(endfile)
P:=splitpath(file),txt:=strreplace(read(file),",")
append(r(txt,"([\d]{0,15}\.\d\d)([^ ])","$2$1 "),"E:\AH\minus.txt")
minus:="-"
loop {
if !RegExmatch(txt,"sm)LAST STATEMENT \.{2,} \d\d\/\d\d\/\d\d (?P<lastbal>[\d]{0,15}\.\d\d)(?P<min>[^ ])?",m)
break
lastbal:=(mmin?"-":"")mlastbal
RegExmatch(txt,"sm)" m "(?P<Trans>..+?)BALANCE THIS STATEMENT \.{2,} (?P<Date>\d\d\/\d\d\/\d\d) (?P<end_Bal>[\,\d]+\.\d\d)(?P<min>[^ ])?..+?(?P<etc>TOTAL CREDITS..+?TOTAL DEBITS..+?)[-=\*]",_)
_end_Bal:=(_min?"-":"")_end_Bal
txt:=strreplace(txt,_),nf:="E:\AH\" sr(_Date,"/","-") " (" lastbal ") - (" _end_bal ").txt"
append(_trans "`n" lastbal "`n" _end_bal "`n" _etc,nf)
toapp.=trans(_trans,lastbal,_end_Bal,endfile)
}
header:=read("E:\AH\QBO\convHeader.qbo") "`n"
footer:="`n" read("E:\AH\QBO\footer.qbo")
fileappend(Header toapp footer,endfile)
}

for k,v in fcount(a_thisfunc,"vars")

br(v:=r(v,"=.*"),%v%)

try j.=((v:=r(v,"=.*")) " : " (isobject((%V%))?strobj((%V%)):(%V%))"`n")

t(sort(j,"U"))
br(k="",v=""){
static O:={BASE:LIST}
if (k="") && (v="")
return j:=O,O:=""
if v=""
return
try v:=isobject(V)?strobj(v):v
if v!=""
O[k]:=v
}

try v:=(isobject((%V%))?strobj((%V%)):(%V%)

try msgBox,3, , % (v:=r(v,"=.*")) " : " (isobject((%V%))?strobj((%V%)):(%V%))"`n"

IfmsgBox, yes

return

exit

try j.=((v:=r(v,"=.*")) " : " (isobject((%V%))?strobj((%V%)):(%V%))"`n")
Trans(rem,lbal,endbal,EndFile="E:\AH\tst.txt"){
TransLimit:=1
static Transnum:=0
lastbal:=lbal
loop {
if !RegExMatch(rem,"sm)(?P<NAME>[a-zA-Z][\w\d- #]+) \n?(?P<TRNAMT>[\,\d]{0,10}\.\d\d) (?P<DTPOSTED>\d\d\/\d\d\/\d\d) (?P<bal>[\d]+\.\d\d)(?P<min>[^ ])?",_)
break
_bal:=(_min?"-":"")_bal
if (lastbal>_bal)
_TRNAMT:="-" _TRNAMT,_TRNTYPE:="DEBIT"
else,_TRNTYPE:="CREDIT"
_DTPOSTED:=r(_DTPOSTED,"([\d][\d])/([\d][\d])/([\d][\d])","20$3$1$2"),lastbal:=_bal,Transnum++
FITID:="<FITID>" _DTPOSTED "000000" Transnum "`n"
Checknum:=instr(_name,"CHECK # ")?"<CHECKNUM>" r(_name,"[^0-9]*","") "`n":""
rem:=strreplace(rem,_),toApp.="<STMTTRN>`n" v(_TRNTYPE,_DTPOSTED,_TRNAMT) FITID Checknum "<NAME>" _NAME "`n</STMTTRN>`n"
if (TransLimit<=transnum)
break
}
Hotstring:={["QuickLaunch"]:"%AppData%\Microsoft\Internet Explorer\Quick Launch"}
"client":"Jerry Bennet"
"account":"Amex 13009"
"Website":"https://online.americanexpress.com"
"Username":"sultansofswing1"
"password":"caley0397"
CoordMode, ToolTip|Pixel|Mouse|Caret|Menu [, Screen|Window|Client]
HSHELL_WINDOWACTIVATED=32772
symbols=¢¤¥¦§©ª«®µ¶µ
Browse For Folder
ahk_class #32770
if var in exe,bat,com,5,7,11,%MyItemList%
if var contains 1,3
QB:={"class":"ahk_class MauiFrame","exe":"ahk_exe qbw32.exe","title":"- QuickBooks Pro 2014"}
Loop, read, C:\Users\Brett\AppData\Roaming\Sublime Text 2\Packages\AutoHotkey\AutoHotkey.sublime-completions, E:\AH\Var Out.txt
IfInString, A_LoopReadLine, A_, FileAppend, % Trim(regexreplace(A_LoopReadLine,"^.*""(A_[^""]*)"".*$","$1`,")," `t")
Timedate=A_Sec,A_MDay,A_Min,A_MM,A_MMM,A_MMMM,A_Mon,A_MSec,A_Now,A_NowUTC,A_WDay,A_YDay,A_Year,A_YWeek,A_YYYY
loop=A_LoopFileAttrib,A_LoopFileDir,A_LoopFileExt,A_LoopFileFullPath,A_LoopFileLongPath,A_LoopFileName,A_LoopFileShortName,A_LoopFileShortPath,A_LoopFileSize,A_LoopFileSizeKB,A_LoopFileSizeMB,A_LoopFileTimeAccessed,A_LoopFileTimeCreated,A_LoopFileTimeModified,A_LoopRegKey,A_LoopRegName,A_LoopRegSubkey,A_LoopRegTimeModified,A_LoopRegType
CenterWindow(WinTitle){
WinGetPos,,, Width, Height, %WinTitle%
WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
}
p(whatvar,p1=""){

GetOriginalVariableNameForSingleArgumentOfCurrentCall(A_ThisFunc)

return GetOriginalVariableNameForSingleArgumentOfCurrentCall(A_ThisFunc)
name:=r(GetOriginalVariableNameForSingleArgumentOfCurrentCall(A_ThisFunc),"[()""]|:=.*")
return name (p1=""?" = " whatvar:"")
}
GetOriginalVariableNameForSingleArgumentOfCurrentCall(callerFuncName)
{
lines := ListLines()
pattern = O)%callerFuncName%\((.*?)\).*?%A_ThisFunc%\(.*?\)
RegExMatch(lines, pattern, match)
return match[1]
}

TS(x="",y="",Tnum=1,Delay=6000,store="",VAR*){
FOR K,V IN VAR {
if v.haskey("list")
v:=v.list,ex:=" : "
else,ex:=" := "
regexmatch(ll:=listlines(),"i)[[:print:]]*" a_thisfunc "%?\(([[:print:]]*)\)" ,m)
s:=ss(m1),va.=s[k]?s[k] ex : ""

regexmatch(ll:=listlines(),"[[:print:]]*?" a_thisfunc "\([[:print:]]*" ,m)
APPEND(LL,"ll.TXT")
va.=v "`n",va:=r(va,"(`r?`n){2,50}","$1")
}va:=r(va,"`r?`n`r?`n","`r`n"),t(VA,x,y,Tnum,Delay,store)
}

TS(VAR="",x="",y="",Tnum=1,Delay=6000,store="")

TS(x="",y="",Tnum=1,Delay=6000,store="",VAR*){

%TS%(DER,LVS,OBJ)

ts(,,,,,der)

ts(obj,der,lvs,dvars)
WatchActiveWindow:
O:={base:w},O["Parent_ID"]:=DllCall("GetParent", UInt,WinExist("A")), ID:="ahk_id " (!ID ? WinExist("A") : ID),O.insert(win(Parent_ID))
WinGet, id, list,ahk_exe chrome.exe,, Program Manager
Loop, %id% {
(tog="DELETE")?(t(),exit()):wa((id:="ahk_id " id%A_Index%))
if ((this_title:=wgt(id))="") OR (obj.haskey(this_title))
continue
OBJ[this_title]:="",clistH:={},Classes:={base:w},COBJ:={base:w}
WinGet, CListHwnd, ControlListHwnd, A
for i,c in strsplit(CListHwnd,"`n")
clistH[i]:=c
WinGet, CL, ControlList, A
for i,c in strsplit(CL,"`n"){
Classes["ClassNN " c]:="`ncHWND "clisth[i]
}test:={base:w,"":win(ID).wlist classes.list}
t(test.list)
sleep 1000
}
return
funcc()
funcc(a="asdm",p2="",p3="param3"){
newa=%a%
newb=%p2%
newp=%p3%
m("sdss","(sd)",nm)
newm1:=nm%1%
f:= newa newp nm%1%
newf=%f%
str:=clipboard
Transform, OutputVar, deref, %str%
listvars
msgbox % OutputVar newm1
pause
}

togglehidden:
RegRead,hidden,HKEY_CURRENT_USER,Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced,Hidden
RegWrite,REG_DWORD,HKEY_CURRENT_USER,Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced,Hidden,% 3-hidden
send {F5}
return
Taskbar:

Methods in ITaskbarList's VTable:

IUnknown:

0 QueryInterface  -- use ComObjQuery instead

1 AddRef          -- use ObjAddRef instead

2 Release         -- use ObjRelease instead

ITaskbarList:

3.HrInit,4.AddTab,5.DeleteTab,6.ActivateTab,7.SetActiveAlt
IID_ITaskbarList  := "{56FDF342-FD6D-11d0-958A-006097C9A090}"
CLSID_TaskbarList := "{56FDF344-FD6D-11d0-958A-006097C9A090}"

Create the TaskbarList object and store its address in tbl.
tbl := ComObjCreate(CLSID_TaskbarList, IID_ITaskbarList)
activeHwnd := WinExist("A")
DllCall(vtable(tbl,3), "ptr", tbl)
tbl.HrInit()
DllCall(vtable(tbl,5), "ptr", tbl, "ptr", activeHwnd)
tbl.DeleteTab(activeHwnd)
Sleep 3000
DllCall(vtable(tbl,4), "ptr", tbl, "ptr", activeHwnd)
tbl.AddTab(activeHwnd)

Non-dispatch objects must always be manually freed.
ObjRelease(tbl)
return
TitleMSI Afterburner 	ClassAfx:00400000:20:00010005:00000000:00000000	CMD"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" 	ahk_id0x10204	PID3348	ProcessNameMSIAfterburner.exe	X534	Y280	W800	H543
TitleMSI Afterburner 	ClassAfx:00400000:20:00010005:00000000:00000000	CMD"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" 	ahk_id0x10204	PID3348	ProcessNameMSIAfterburner.exe	X534	Y280	W800	H543


DllCall("QueryPerformanceCounter","Int64*",BEF),A_URL:=URL(),DllCall("QueryPerformanceCounter","Int64*",AFT),t(win().list "`n" (A_URL?A_URL "`n":"") (AFT-BEF)*1000/Freq " MS`n" (AFT-BEF)/Freq " : seconds")

Q(v=""){
static Freq:=false,app,linenum,Q:={},I
Freq?"":DllCall("QueryPerformanceFrequency","Int64*",Freq)
if (v="END") && DllCall("QueryPerformanceCounter","Int64*",AFT){
while Bef:=q.pop()
a.=i "`nelapsed " ((AFT-bef)*1000)/Freq
; a.=k "`nelapsed " (AFT-bef)*1000//Freq
; a.=i "`nelapsed " AFT*1000/Freq
if !linenum
return a
FileReadLine, c, %A_ScriptFullPath%, %LineNum% ; \QQ(""END"")\E"
return a "`n" c "`n`n" (instr(listlines(),c)?"found : " c "`n":"")((regexmatch(listlines(),"smi)(..)*",M,0))?m " A_LineNumber: " LINENUM:"")
}DllCall("QueryPerformanceCounter","Int64*",BEF),I:=q.push(bef),v?linenum:=v:""
}
PP(aft,freq,v*){
while Bef:=v.pop()
a.=k "elapsed " (AFT-bef)*1000//Freq "`n"
return a "`n" listlines(100) ; "freq " freq
}

; WinGetPos( X="X", Y="Y", Width="Width", Height="Height", Title="A", WinText="", ExcludeTitle="", ExcludeText=""){
; WinGetPos,% X,% Y,% Width,% Height,% Title,% WinText,% ExcludeTitle,% ExcludeText
; return
; WinGetPos( X="X", Y="Y", Width="Width", Height="Height", Title="A", WinText="", ExcludeTitle="", ExcludeText=""){
; WinGetPos, [retX, Y, Width, Height, WinTitle, WinText, ExcludeTitle, ExcludeText]

APPDATA, LOCALAPPLICATIONDATA, COMMONAPPLICATIONDATA
HOMEPATH
PROGRAMFILES, PROGRAMS

WORKING DIRECTORY
USERPROFILE

HOMEDRIVE=C:
HOMEPATH=\Users\Brett

USERPROFILE=C:\Users\Brett

PROGRAMS
ProgramFiles=C:\Program Files
A_AppData=C:\Users\Brett\AppData\Roaming

LOCALAPPLICATIONDATA
LOCALAPPDATA=C:\Users\Brett\AppData\Local

A_workingdir=E:\AH
A_Temp=C:\Users\Brett\AppData\Local\Temp

Openwrt.org login
obelix469
sazpidkub62#

ALLUSERSPROFILE=C:\ProgramData
APPDATA=C:\Users\Brett\AppData\Roaming
CommonProgramFiles(x86)=C:\Program Files (x86)\Common Files
CommonProgramFiles=C:\Program Files\Common Files
CommonProgramW6432=C:\Program Files\Common Files
COMPUTERNAME=BRETT-PC
ComSpec=C:\Windows\system32\cmd.exe
FP_NO_HOST_CHECK=NO
HOMEDRIVE=C:
HOMEPATH=\Users\Brett
LOCALAPPDATA=C:\Users\Brett\AppData\Local
LOGONSERVER=\\BRETT-PC
NUMBER_OF_PROCESSORS=8
OS=Windows_NT
Path=C:\ProgramData\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common
PATHEXT=.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC
PROCESSOR_ARCHITECTURE=AMD64
PROCESSOR_IDENTIFIER=Intel64 Family 6 Model 94 Stepping 3, GenuineIntel
PROCESSOR_LEVEL=6
PROCESSOR_REVISION=5e03
ProgramData=C:\ProgramData
ProgramFiles(x86)=C:\Program Files (x86)
ProgramFiles=C:\Program Files
ProgramW6432=C:\Program Files
PROMPT=$P$G
PSModulePath=C:\Windows\system32\WindowsPowerShell\v1.0\Modules\
PUBLIC=C:\Users\Public
SESSIONNAME=Console
SystemDrive=C:
SystemRoot=C:\Windows
TEMP=C:\Users\Brett\AppData\Local\Temp
TMP=C:\Users\Brett\AppData\Local\Temp
USERDOMAIN=Brett-PC
USERNAME=Brett
USERPROFILE=C:\Users\Brett
windir=C:\Windows
windows_tracing_flags=3
windows_tracing_logfile=C:\BVTBin\Tests\installpackage\csilogfile.log

A_TimeIdle=156
A_TimeIdlePhysical=140
A_TimeSincePriorHotkey=-1
A_TimesincethisHotkey=-1
A_DefaultGui=1
A_PtrSize=8
A_ScreenHeight=1080
A_ScreenWidth=1920
A_Cursor=Arrow
A_CaretX=135
A_CaretY=432
A_CoordModeToolTip=Window
A_CoordModePixel=Window
A_CoordModeMouse=Window
A_CoordModeCaret=Window
A_CoordModeMenu=Window
A_UserName=Brett
A_ComputerName=BRETT-PC
A_IPAddress1=192.168.1.2
A_Is64bitOS=1
A_IsAdmin=1
A_OSType=WIN32_NT
A_OSVersion=WIN_7
A_RegView=Default
A_ScreenDPI=96
A_KeyDelay=10
A_Language=0409
A_LastError=3
A_NumBatchLines=10ms
A_StringCaseSense=Off
A_TitleMatchMode=2
A_TitleMatchModeSpeed=Fast
A_TickCount=40206200
A_MouseDelay=10
A_AhkVersion=1.1.24.01
A_IsUnicode=1
A_AutoTrim=On
A_WinDelay=100
A_DefaultMouseSpeed=2
A_BatchLines=10ms
A_ControlDelay=20
A_DetectHiddenText=On
A_DetectHiddenWindows=Off
A_FormatFloat=0.6
A_FormatInteger=D
A_scriptdir=E:\AH
A_workingdir=E:\AH
A_ScriptHwnd=0x20124
A_ScriptFullPath=E:\AH\Exile.ahk
A_ScriptName=Exile.ahk
A_LineFile=E:\AH\Lib\Functions.ahk
A_LineNumber=990
A_AppData=C:\Users\Brett\AppData\Roaming
A_AppDataCommon=C:\ProgramData
A_Desktop=C:\Users\Brett\Desktop
A_DesktopCommon=C:\Users\Public\Desktop
A_ProgramFiles=C:\Program Files
A_Programs=C:\Users\Brett\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
A_ProgramsCommon=C:\ProgramData\Microsoft\Windows\Start Menu\Programs
A_StartMenu=C:\Users\Brett\AppData\Roaming\Microsoft\Windows\Start Menu
A_StartMenuCommon=C:\ProgramData\Microsoft\Windows\Start Menu
A_Startup=C:\Users\Brett\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
A_StartupCommon=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
A_Temp=C:\Users\Brett\AppData\Local\Temp
A_WinDir=C:\Windows
A_MyDocuments=C:\Users\Brett\Documents

; ahk_class PX_WINDOW_CLASS
; ahk_exe sublime_text.exe
; if winactive("Fixlog.txt - Notepad")
FRST_Folder:="C:\Users\Brett\Documents\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\Farbar_Recovery_Scan_Tool_(FRST_x64)_sps\"
GroupAdd, FRST, Fixlog.txt - Notepad
GroupAdd, FRST, Addition.txt - Notepad
GroupAdd, FRST, FRST.txt - Notepad
GroupAdd, FRST, Shortcut.txt - Notepad
if W:=win("Ahk_Group FRST"){
GroupClose, FRST, A
W:=win("Ahk_id " ID)
t(FPath:=W.FPath:=SR(W.cmd,"notepad "))
t(w.list)
}


30reflection
PostMessage, 0x112, 0xF060,,, % w.title  0x112 = WM_SYSCOMMAND, 0xF060 = SC_CLOSE
run "C:\Program Files\Sublime Text 3\sublime_text.exe" %Fpath% -new--window
run "C:\Program Files\Sublime Text 3\sublime_text.exe" "C:\Users\Brett\Documents\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\Farbar_Recovery_Scan_Tool_(FRST_x64)_sps\Fixlog.txt" --window
run, open "C:\Users\Brett\Documents\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\Farbar_Recovery_Scan_Tool_(FRST_x64)_sps\Fixlog.txt"
run, open FRST_FolderFixlog.txt"
A_User:=EnvGet("USERPROFILE")  For explanation, see #NoEnv.
screenshot("",A_user "\Pictures\t.png")
screenshot("","C:\Users\Brett\Pictures\test.png")
C:\Users\Brett\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
send ^{home}

DFM_WM_INITMENUPOPUP
Sent when a drop-down menu or submenu is about to become active. This allows an application to modify the menu before it is displayed, without changing the entire menu.
DFM_WM_MEASUREITEM
Sent to the owner window of a control or menu item when the control or menu is created.


C:\Windows\SysWOW64\en
C:\Users\Brett\Desktop\nirsoft94\nircfg filer compare.txt
1 Size:	 1.19 KB
2 Item type:	 TXT File
3 Date modified:	 7/28/2016 8:46 AM
4 Date created:	 7/28/2016 8:43 AM
5 Date accessed:	 7/28/2016 8:43 AM
6 Attributes:	 A
9 Perceived type:	 Text
10 Owner:	 raidmax\Brett
11 Kind:	 Document
19 Rating:	 Unrated
53 Computer:	 RAIDMAX (this computer)
155 Filename:	 nircfg filer compare.txt
173 Shared:	 No
176 Folder name:	 nirsoft94
177 Folder path:	 C:\Users\Brett\Desktop\nirsoft94
178 Folder:	 nirsoft94 (C:\Users\Brett\Desktop)
180 Path:	 C:\Users\Brett\Desktop\nirsoft94\nircfg filer compare.txt
182 Type:	 TXT File
188 Link status:	 Unresolved
269 Sharing status:	 Shared

<!-- Mirrored from %s%s by HTTrack Website Copier/3.x [XR&CO'2014], %s -->
<!-- Mirrored from %s%s by HTTrack Website Copier/3.x [XR&CO'2014], %s -->HTTrack Website Copier/3.0x (offline browser; web mirror utility)

; ^!A::taskbar()
; ^F2::CSV_cut("E:\Google Drive\AH\Binder1.txt","E:\AH\ICMG20150101.qbo",100)

#If !WinActive("ahk_class PX_WINDOW_CLASS")
; ^SC029::winflip()
#IfWinExist
^F2::CSV_cut("E:\Google Drive\AH\Binder1.txt","E:\AH\ICMG.qbo",300)
; CList:=t2:=T1:=-250  ,st("Timer1",t1:=-t1)


^+F1::st("A_CTRL_LIST",CList:=-CList)
A_CTRL_LIST:
t(ControlList())
return

#1::instr(GP,urlpath().domain) AND regexmatch(GP,"[^=]*" urlpath().domain "([^=]*)?",M) AND (chrome:=strobj(m))?clip(Chrome["User Name"]):"",t(url())
#2::instr(GP,urlpath().domain) AND regexmatch(GP,"[^=]*" urlpath().domain "([^=]*)?",M) AND (chrome:=strobj(m))?clip(Chrome.password):"",t(url())

#a::q(),a:=t(url() q("END")) ; elapsed function

#q::clip(RegExReplace(clip(),"([^,]+)","""$1"":$1"),"Y") ; some edit for sublime to add assignments in ahk
^!+O::OwnContext(Clipboard)


C:\Windows\system32\DllHost.exe /Processid:{F9717507-6651-4EDB-BFF7-AE615179BCCF}

???
pos:=1,WinObj:={},text:=read("text.txt")
loop {
if !regexmatch(text,"smi)={50}([^=]*)={50}",M) ; "smi)={50}\K[^=]*(?=={50})"
break
text:=sr(text,M),m1:=r(m1,"(\w) (\w)","$1_$2")
WinObj[a_index]:=strobj(m1)
}

#if winactive("ahk_class Dragon Age") && !PS(,,950,1045,970,1070) && !PS(,,170,905,175,915,0xF2F4E9,10)
1::
2::send("LBUTTON",35),exit() ; else,send(strreplace((a_thishotkey),"*"),35)
#IfWinActive, DUELYST
Enter::mm(.80*win().width, .80*win().height,"c")
#if winactive("ahk_class Dragon Age: Inquisition")
SC029::8
~r::send("y",35) ; r::send("y",20),sleep(150),send("r",35)
XButton1::f
XButton2::v


AHCI is SATA mode.

ATA is NOT a SATA mode. It is an abridged PATA, the old IDE mode, and I would doubt that the Dell laptop has an IDE mode.

. Startup "Regedit
2. Open HKEY_LOCAL_MACHINE / SYSTEM / CurrentControlset / Services
3. Open msahci
4. In the right field left click on "start" and go to Modify
5. In the value Data field enter "0" and click "ok"
6. exit "Regedit"
7. Reboot Rig and enter BIOS (hold "Delete" key while Booting

In your BIOS select "Integrated Peripherals" and OnChip PATA/SATA Devices. Now change SATA Mode to AHCI from IDE.

You now boot into windows 7, the OS will recognize AHCI and install the devices. Now the system needs one more reboot and voilla .. enjoy the improved SSD performance.

<iframe width="640" height="360" src="https://www.youtube.com/embed/me_3mTeIbK4?list=WL" frameborder="0" allowfullscreen></iframe>

https://drive.google.com/file/d/0B3QILzU564BTOFpja2QwNUZrZW8/view?usp=sharing
bp 0x78c9d988

Composited render layer borders Mac, Windows, Linux, Chrome OS, Android
Renders a border around composited Render Layers to help debug and study layer compositing. #composited-layer-borders
Enable

  "GEN_SPF_OFF": "Disable SPF",


; if file:=spath(Clipboard) and !Fileexist(MoveTo:="C:\Copies\" File.Name) and in(file.Ext,extlist:="sys,dll,bat,sublime-workspace") ; extlist:="sys,dll,bat"
; t(a.="`n clipboard file!! `n " file.FullPath)

run "C:\Users\Brett\Documents\nircmd\ChromePass.exe" /stext E:\AH\txt\%a_now%ChromePass.txt

t(MatchBalance(RF:=read("E:\AH\lib\win.ahk"),p_1:="{",p_2:="}"))
Q(),SLEEP(50),Q(),SLEEP(50),Q(),SLEEP(50),Q("END")

txt:="aa=safr`nbb=grfs`ncc=gfdg`ndd=dva`n",needle:="V=[[:print:]]*\R*",Ar:=["dd","cc","aa","bb"]
a.=MAOBJ(txt,needle,Ar*),a.="`n" mobj(txt,["",Ar,"=[[:print:]]*\R*"]) "`n"
for k,v in Ar
regexmatch(txt,SR(needle,"V",V),M),a.=m
t(a)
Obj:=MObj("FunctionP1=32,p2=33,p3=52)",["ion.*",["P1","p2","p3"],"=\K[^,)]*"])
Source:=
Dest:="E:\Reg"
Source=%A_MyDocuments%\reg\*.reg
%A_MyDocuments%\reg\*.reg E:\Reg\*.*
FileCopy,%A_MyDocuments%\reg\*.reg, E:\Reg\*.*

Globalists exposed at Delhi UN "nanny state" conference - YouTube - Google Chrome
ahk_class Chrome_WidgetWin_1
ahk_exe chrome.exe

ClassNN:	Chrome_RenderWidgetHostHWND1
Text:	Chrome Legacy Window
Color:	2F2717 (Red=2F Green=27 Blue=17)
	x: 0	y: 0	w: 1920	h: 1080
Client:	x: 0	y: 0	w: 1920	h: 1080

; if GKS("Joy7")
; DSwitch(),exit()
; Keydown("shift")
; if A_TimesincethisHotkey<200
; send("{Browser_Back}")
; return
; Joy5::GKS("Joy7")?DSwitch():(Keydown("shift"),send("{Browser_Back}")) 					; LB
; Joy6::GKS("Joy7")?Tidy():(Keydown("LControl"),send("{Browser_Forward}")) ; RB

Setting SDK environment relative to C:\Program Files\Microsoft SDKs\Windows\v7.1\.
The system cannot find the batch label specified - Set_

C:\Program Files\Microsoft SDKs\Windows\v7.1>

%ProgramFiles%;%ProgramFiles(x86)%;C:\Nirsoft\

%systemdrive%\Nirsoft\

%path%;%CommonProgramFiles%\Microsoft Shared\Windows Live;%SystemRoot%\system32;%SystemRoot%;C:\Windows\system32;C:\Windows\System32\Wbem;C:\Python35\;C:\Python27\; C:\Windows\System32\WindowsPowerShell\v1.0\; C:\ProgramData\chocolatey\bin;C:\Program Files\Microsoft Windows Performance Toolkit\;%ProgramFiles%;%ProgramFiles(x86);%ProgramW6432%

%path%;%CommonProgramFiles%\Microsoft Shared\Windows Live;%SystemRoot%\system32;%SystemRoot%;C:\Windows\system32;C:\Windows\System32\Wbem;C:\Python35\;C:\Python27\; C:\Windows\System32\WindowsPowerShell\v1.0\; C:\ProgramData\chocolatey\bin;C:\Program Files\Microsoft Windows Performance Toolkit\;%ProgramFiles%;%ProgramFiles(x86);%ProgramW6432%

C:\Users\Brett\Downloads
Unknown (1)

240,938

Origin URL        : https://rpr.irs.gov/datamart/personalDetailUSIRS.do
Action URL        : https://rpr.irs.gov/datamart/personalDetailUSIRS.do
User Name Field   : suffix
Password Field    : SIN
User Name         :
Password          : 214704867
Created Time      : 7/1/2014 9:46:07 AM
Password Strength : Weak
Password File     : C:\Users\Brett\AppData\Local\Google\Chrome\User Data\Profile 3\Login Data

Armstrong#1253

#Include, Subclass.ahk

WM_Copy := 0x301

Gui, Add, Edit, hwndEdithWnd
Gui, Show
Subclass.AddListener(EdithWnd, WM_Copy, "WM_Copy")
return

esc::ExitApp

WM_Copy(Hwnd, Message, wParam, lParam)
{
	ToolTip, % Clipboard
	Exit
}

F1::
Subclass.RemoveListener(MyhWnd, 0x301)
return

(?!=[, ])
offyellowcommand=#E9B824
Command=#FF8000
Function Entity=#FF00FF

FRST_Folder:="C:\Users\Brett\Documents\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\Farbar_Recovery_Scan_Tool_(FRST_x64)_sps\"
GroupAdd, FRST, Fixlog.txt - Notepad
GroupAdd, FRST, Addition.txt - Notepad
GroupAdd, FRST, FRST.txt - Notepad
GroupAdd, FRST, Shortcut.txt - Notepad

if W:=win("Ahk_Group FRST"){
GroupClose, FRST, A
W:=win("Ahk_id " ID)
t(FPath:=W.FPath:=SR(W.cmd,"notepad "))
t(w.list)
}

/*

deltacheck:
if joyy > %JThresUP%
    MouseNeedsToBeMoved := true, DeltaY := joyy - JThresUP
else if joyy < %JThresLOW%
    MouseNeedsToBeMoved := true, DeltaY := joyy - JThresLOW
else, DeltaY = 0
return

GKS("JoyPOV")<4501 ;Up
GKS("JoyPOV")<22501 and GKS("JoyPOV")>13500
Trig:=getkeystate("Joyz")
if Trig>51 and (key="Down")
send {End}
else,if Trig<49 and (key="Up")
send {home}
if (DeltaX:=(joyx>JThresUP)?joyx-JThresUP:(joyx<JThresLOW)?joyx-JThresLOW:0)
MouseNeedsToBeMoved:=true
if (DeltaY:=(joyY>JThresUP)?joyY-JThresUP:(joyY<JThresLOW)?joyY-JThresLOW:0)
MouseNeedsToBeMoved:=true

if (joyx>JThresUP) ; && (DeltaX:=joyx-JThresUP)
MouseNeedsToBeMoved:=true, DeltaX:=joyx - JThresUP
else, if (joyx<JThresLOW) ;&& (DeltaX:=joyx-JThresLOW)
MouseNeedsToBeMoved:=true, DeltaX:=joyx - JThresLOW
else,DeltaX:= 0

if fileexist("C:\Search"){
FileRemoveDir, C:\Search,1
if errorlevel
t("deleting search failed",1000)
; tooltip
else t("search deleted",1000)
}

if ZLastKey
s("{" ZLastKey " Up}")       ; Send, {%ZLastKey% up}  ; Release it.
if ZKey                     ; There is a key to press down.
t(s("{" ZKey " Down}"))      ; Send, {%ZKey% down}  ; Press it down.
if (ZLastKey!=ZKey)
t(ZKey " down")

POVwatch:
GetKeyState, JoyPOV, JoyPOV
lastkey=%key%
if JoyPOV < 0  ; No angle.
Key=
else if JoyPOV between 0 and 4500   ; Up
    key=up
else if JoyPOV between 4501 and 13500 ; Right
    key=right
else if JoyPOV between 13501 and 22500  ; Down
    key=down
else if JoyPOV between 22501 and 27001  ; LEFT
    key=left
else if key=%lastkey%
return
if lastkey
    Send, {%lastkey% up}  ; Release it.
if Key   ; There is a key to press down.
    Send, {%Key% down}  ; Press it down.
return

Joy1::
SetMouseDelay, -1  ; Makes movement smoother.
Click Left Down  ; Hold down the left mouse button.
SetTimer, WaitForLeftButtonUp, 10
return

Joy2::
SetMouseDelay, -1  ; Makes movement smoother.
Click Right Down  ; Hold down the right mouse button.
SetTimer, WaitForRightButtonUp, 10
return

Joy3::
SetMouseDelay, -1  ; Makes movement smoother.
Click Middle Down  ; Hold down the right mouse button.
SetTimer, WaitForMiddleButtonUp, 10
return

#if

WaitForLeftButtonUp:
if GetKeyState("Joy1")
    return  ; The button is still, down, so keep waiting.
; Otherwise, the button has been released.
SetTimer, WaitForLeftButtonUp, off
SetMouseDelay, -1  ; Makes movement smoother.
Click Left Up  ; Release the mouse button.
return

WaitForRightButtonUp:
if GetKeyState("Joy2")
    return  ; The button is still, down, so keep waiting.
; Otherwise, the button has been released.
SetTimer, WaitForRightButtonUp, off
SetMouseDelay, -1  ; Makes movement smoother.
Click Right Up  ; Release the mouse button.
return

WaitForMiddleButtonUp:
if GetKeyState("Joy3")
    return  ; The button is still, down, so keep waiting.
; Otherwise, the button has been released.
SetTimer, WaitForMiddleButtonUp, off
SetMouseDelay, -1  ; Makes movement smoother.
Click Middle Up  ; Release the mouse button.
return


*/

; Joy6::GKS("Joy7")?Tidy():(Keydown("LControl"),(A_TimesincethisHotkey<200?send("{Browser_Forward}"):"")) ; RB
; ,A_TimesincethisHotkey>1000?exitapp("full",0):t(send("{ESC}"))	; Select
chrome shortcuts
--reduce-gpu-sandbox


REGEX


Match The First Letter/Start of a word per Line

  -: "(f)dsn  "dsss"

\n.*?\K\<.
%I.%M.%p

SundayDecember

Explorer Search Box
ClassNN:	DirectUIHWND1
ClassNN:	DirectUIHWND2 (Band Bar
ClassNN:	DirectUIHWND3 (over nothing/main window)
ClassNN:	ToolbarWindow324

ahk_class CabinetWClassSunday
ahk_exe explorer.exe
Sunday_NowSunday_Now
NOClassNN:ContextMenu
Sunday_NowSunday_Now
ClassNN:	Edit1
Text:	C:\Users\Brett\Music\MusicBee
nav pane systree
ClassNN:	SysTreeView321
Text:	Tree View

ClassNN:	msctls_statusbar321
Text:	Date created: ‎9/‎11/‎2016 ‏‎1:06 PM

3.3.0.2 ULT [U] x64 10/28/2016

https://youtu.be/oxlq5hcJxLY?list=WL


001,1,ace,arc,arj,bin,cab,cpio,cue,deb,dbx,gz,img,kgb,kge,lha,lit,lzh,lzo,pea,rpm,sit,uha,z

What's really blasphemous is engaging in social engineering using an art/awards program like the Nazis.

#IfWinActive,The Witcher 3
*~LShift::LControl
*~LControl::CapsLock


Franco Lucien1 day ago
That's the problem. If he stands for the people then he is the enemy of the elite. Regardless if he did a good thing, the elite have beef with him, and their gonna eat him alive.
Anyway, I still question the true motives of people like Snowden and Assange. I appreciate their actions and the information they provide, but we can never be sure of their true motives.﻿
Reply 2
 George Carter
George Carter1 day ago (edited)
Franco Lucien I believe your assumption about their true motives can be explained by the fact that if they were traitors, they would be kickin back somewhere with a boatload of money to see them through. Instead Assange is a virtual prisoner. With false, trumped up charges against him to boot.

ControlGet, OutputVar, Hwnd,, Edit1, WinTitle

https://accountants.intuit.com/tax/proseries/connected-services/access-granted.jsp?role=employee|firstName=Brett|lastName=Armstrong|email=obelix469@gmail.com|accountId=349117598&provisionalId=123145744790319&pin=490308014


Application Number	Description	Number	Type	Applicant Name	Fee
9589601	1. 2017 PTIN Sign-up (With SSN)		PTIN	ARMSTRONG, BRETT	$50.00
Total	$50.00

timer1:
if instr(at:=wgat(),"! - Google Chrome")
Игровыеновостиф|ц|и|а|л|ь|н|ы|й|И|г|р|о|в|ы|е|н|о|в|с ф,ц,и,а,л,ь,н,ы,й,И,г,р,о,в,ы,е,н,о,в,о,с
winactive("Sponsored session")?(wclose(),send("{Enter}")):(append(at "`n" url(),"log.log","Dont"),(T(AT),send("^w"),sleep(250)))
return
to(v(Rstick_X:=GKS("JoyU"),Rstick_Y:=GKS("JoyR")))
return

ReportF(Directory,Changes){
 static O:={}
 For Each,C In Changes {
 Action:=C.Action,Name:=C.Name,OldName:=C.oldname,isdir:=C.isdir
 If(Action=4&&instr(Name,"videoplayback")&&instr(Name,"crdownload")){

 NewName:=CleanFileName(SR(WGAT()," - YouTube - Google Chrome")) ".mp4"
 WorkingDir:="C:\Users\Brett\Videos"
 Target:=  WorkingDir "\" Newname
 LinkFile:=Directory "\" CleanFileName(SR(WGAT()," - YouTube - Google Chrome")) ".lnk"
 FCS:=Func("FileCreateShortcut"),RunState:=1
 ; OBJ:=SCOBJ:={Target:Target,LinkFile:LinkFile,WorkingDir:WorkingDir,Args:Args,Description:Description,IconFile:IconFile,ShortcutKey:ShortcutKey,IconNumber:IconNumber,RunState:RunState}
 ; t(strobj(Obj:=%FCS%(Target,LinkFile,WorkingDir,Args,Description,IconFile,ShortcutKey,IconNumber,RunState)))

 Obj:=%FCS%(Target,LinkFile,WorkingDir,Args,Description,IconFile,ShortcutKey,IconNumber,RunState)
 O[T:=filegettime(name,"C")]:=OBJ
 IniWrite,% r(r(strobj(Obj),"(`r?`n){1,}","`n"),"(`r|`n)$","`r`n"),Download.ini,% T
 ; O[Obj[Time]:=filegettime(name,"C")]:=OBJ
 }
 If(Action=4&&instr(Name,"xvideos")&&instr(oldName,"crdownload")){
 atitle:=r(wgt("XVID")," *?-? ?XVID.*"),t(MoveTo:="E:\ANIME\" (atitle?atitle:a_now) "." spath(name).ext),FileCopy(Name,MoveTo,1) ;append("`n","log.txt","n"))
 t(FileMove(Name,"E:\ANIME\xvid",1)) ; FileMove,%name%,E:\ANIME\xvid,1
 }
 If(Action=4&&instr(Name,"videoplayback")&&instr(OldName,"crdownload")){
 Obj:=O[filegettime(name,"C")],t(FileMove(Name,obj.target,1))
R:="mklink /H """ name """ """ obj.LinkFile """"
 ; obj.linkfile:= directory "\videoplayback",filecreateshortcut(obj*)
; Run(comspec " /C mklink /H """ name ".lnk "" """ obj.target """")
 ; Run(comspec " /C mklink /H """ Directory SR(Obj.target,obj.workingdir) """ """ obj.target """")
}

 If(Action=4&&instr(Name,".mp4")&&instr(OldName,"crdownload"))
 t(FileMove(Name,"C:\Users\Brett\Videos",1))

 If regexmatch(name,"[.]m?html?")
 t(FileMove(Name,A_MyDocuments "\HTML",1))
 If instr(name,".pdf")
 t(FileMove(Name,A_MyDocuments "\HTML",1))
 }}

added(Directory,Changes) {
static added:={} ; Action:=C.Action,Name:=C.Name,OldName:=C.oldname,isdir:=C.isdir
For Each,C In Changes
If (Action = 1)
added.push(C.name)
t(added)
}

; run %comspec% /C mklink C:\LNK E:\AH
; runwaitone("mklink /D " a_scriptdir "\mlink " A_ScriptFullPath)

#Hotstring EndChars `t ; -()[]{}:;'"/\,.?!`n


; UnderMouse Bitmap From HWND
ScreenShot(HWND="",SaveFileName="NP",Ext="bmp",Width=50,Length=50){
	WinGetActiveStats, Title, W, H, X, Y
 ; pToken := gdip_all()
	WinGetClass, class, A
	MouseGetPos, MX, MY
	left:=MX,right:=W-MX-Width,UP:=MY,down:=H-MY-Length
	SaveFileName:=(SaveFileName="NP"?class "." ext:SaveFileName),HWND:=(HWND=""?WinExist("A"):HWND)
	; Gdip_SaveBitmapToFile(pBitmap := Gdip_CropBitmap(Gdip_BitmapFromHWND(HWND), left, right, up, down), SaveFileName)
	ImageSearch, FoundX, FoundY, 0, 0, W, H, %SaveFileName%
	t(SavedFile:=A_scriptdir "\" SaveFileName " - " (ErrorLevel=2?"failure to open the image file or prevention":(ErrorLevel=1)?"could not be found ":"was found at x " FoundX ",y " FoundY "`n"),(foundx?foundx:100),(foundx?foundx:100),2)
	; t(join("",Width,"  ",Length,HWND,"`n",SavedFile:=A_scriptdir "\" SaveFileName) " - " (ErrorLevel=2?"failure to open the image file or prevention":(ErrorLevel=1)?"could not be found ":"was found at x " FoundX ",y " FoundY "`n"),,foundx,foundy,2)
	mousemove %foundx%,%foundy%
	Gdip_DisposeImage(pBitmap),Gdip_Shutdown(pToken)
	return
	}

	POV_Watch: ; JoyPOV Up Down Left Right
	If(POV:=GKS("JoyPOV"))>=0{
		; if GKS("Joy8")
			; POVADD:="#"
			; else,POVADD:=""

	; 		; add:="#+"
	; 	; send {LWinDown}
	; 	; send {ShiftDown}
	; }
	; ; else,add:=""
	; add:=""
	; If(POV=0||POV=4500||POV=31500)
	;     Send %add%{Up}
	; If(POV=22500||POV=27000||POV=31500)
	;     Send %add%{Left}
	; If(POV=13500||POV=18000||POV=22500)
	;     Send %add%{Down}
	; If(POV=4500||POV=9000||POV=13500)
	;     Send %add%{Right} ; t(POV,,,500)
; POVADD:="",MWADD:=""
If(POV=0||POV=4500||POV=31500)
; Send {Up}
Send(POVADD . "{Up}")
If(POV=22500||POV=27000||POV=31500)
t(	Send(POVADD . "{Left}"),,,2000)
If(POV=13500||POV=18000||POV=22500)
; Send {Down}
Send(POVADD . "{Down}")
If(POV=4500||POV=9000||POV=13500)
; Send {Right} ; t(POV,,,500)
Send(POVADD . "{Right}")

}Return
C:\Users\Brett\AppData\Local\Temp\
	; for K, V in strsplit(Sym){
	; 	if Modifier.haskey(V)
	; 		V:=Modifier[V]
	; keywait(V,"L")
	; }
C:\>cmd /?
Starts a new instance of the Windows XP command interpreter

CMD [/A | /U] [/Q] [/D] [/E:ON | /E:OFF] [/F:ON | /F:OFF] [/V:ON | /V:OFF]
    [[/S] [/C | /K] string]

/C      Carries out the command specified by string and then terminates
/K      Carries out the command specified by string but remains
/S      Modifies the treatment of string after /C or /K (see below)
/Q      Turns echo off
/D      Disable execution of AutoRun commands from registry (see below)
/A      Causes the output of internal commands to a pipe or file to be ANSI
/U      Causes the output of internal commands to a pipe or file to be
        Unicode
/T:fg   Sets the foreground/background colors (see COLOR /? for more info)
/E:ON   Enable command extensions (see below)
/E:OFF  Disable command extensions (see below)
/F:ON   Enable file and directory name completion characters (see below)
/F:OFF  Disable file and directory name completion characters (see below)
/V:ON   Enable delayed environment variable expansion using ! as the
        delimiter. For example, /V:ON would allow !var! to expand the
        variable var at execution time.  The var syntax expands variables
        at input time, which is quite a different thing when inside of a FOR
        loop.
/V:OFF  Disable delayed environment expansion.

Run(comspec " /K mklink /J " t)
%SystemRoot%\Explorer.exe /separate,/idlist,%I,%L
"%WinDir%\explorer.exe" /n,/e,${P}

Options:
-c <path>  set the search path for config files (default: /etc/config)
-d <str>   set the delimiter for list values in uci show
-f <file>  use <file> as input instead of stdin
-m         when importing, merge data into an existing package
-n         name unnamed sections on export (default)
-N         don't name unnamed sections
-p <path>  add a search path for config change files
-P <path>  add a search path for config change files and use as default
-q         quiet mode (don't print error messages)
-s         force strict mode (stop on parser errors, default)
-S         disable strict mode
-X         do not use extended syntax on 'show'

root@(none):/# uci set network.lan.netmask='255.255.255.0'
root@(none):/# bin/sh
root@(none):/# uci set wireless.@wifi-device[0].disabled=0
root@(none):/# uci set wireless.@wifi-iface[0].ssid=OpenWrt0815
root@(none):/# uci commit wireless
root@(none):/# exit 0
root@(none):/# exit 0
http://downloads.openwrt.org/chaos_calmer/15.05/ar71xx/generic/openwrt-15.05-ar71xx-generic-tl-wr1043nd-v1-squashfs-sysupgrade.bin
cd /tmp
wget http://downloads.openwrt.org/chaos_calmer/15.05/ar71xx/generic/openwrt-15.05.1-ar71xx-generic-archer-c7-v2-squashfs-sysupgrade

loop files, C:\Symenu\*.*,RF
{
	if A_LoopFileAttrib contains H,R,S  ; Skip any file that is either H (Hidden), R (Read-only), or S (System). Note: No spaces in "H,R,S".
    continue  ; Skip this file and
A_LoopFileExt
}

t(A_TimeIdle),st("",5000)
; SetTimer, %A_ThisLabel%, 5000
return
WordTimer:
if !WinActive("WordPad"){
	ST("",1000); SetTimer, %A_ThisLabel%, 1000
Return
}t(A_TimeIdle),st("",5000)
return

try delete(A_WorkingDir "\txt\test.txt","D"),delete("testf.txt","D"),delete("Strobj LV.txt","D")
v:=fileread("clip.txt")
sort, v,  U
append(v,"clip-sort.txt")
v:=""

stats(timer="",v=""){
	global t2
	for k,v in ["Screen","Window","Client"]
	sep:=(v="Client"?"     ":v="Screen"?"    ":" "),cmode("all",v),n:=mgp(),mm.=v " : " sep N.X ", " N.Y (A_CaretX?" A_CaretX : " (A_CaretX):"")(A_CaretY?" A_CaretY  : " A_CaretY:"") "`n"
	cmode("all","Screen"),to(instr(t2,"-")?"":win().list "`n" mm)
	}
#IfWinActive, Starbound ahk_class SDL_app
XButton1::
; LKDuration:=A_KeyDuration,
; LKDelay:=A_KeyDelay
; SetKeyDelay, -1,-1
; t("A_KeyDuration " (LKDuration:=A_KeyDuration) "`nA_KeyDelay " LKDelay:=A_KeyDelay "A_sendLevel " A_sendLevel)
send {d up}
sleep 50
send {d down}
sleep 75
send {d up}
sleep 75
send {d down}
sleep 100
send {d up}
; SetKeyDelay,% LKDelay,% LKDuration
Return
XButton2::
; SetKeyDelay, 100,100
; t("A_KeyDuration " LKDuration:=A_KeyDuration "`nA_KeyDelay " LKDelay:=A_KeyDelay "A_sendLevel " A_sendLevel)
send {a up}
sleep 50
send {a down}
sleep 50
send {a up}
sleep 50
send {a down}
sleep 50
send {a up}
; SetKeyDelay,% LKDelay,% LKDuration
Return
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456

1,2,4,5,7,8,10,11,13,14,16,17,19,20,22,23,25,26,28,29,31,32,34,35,37,38,40,41,43,44,46,47,49,50,52,53,55,56,58,59,61,62,64,65,67,68,70,71,73,74,76,77,79,80,82,83,85,86,88,89,91,92,94,95,97,98,100,101,103,104,106,107,109,110,112,113,115,116,118,119,121,122,124,125,127,128,130,131,133,134,136,137,139,140,142,143,145,146,148,149,151,152,154,155,157,158,160,161,163,164,166,167,169,170,172,173,175,176,178,179,181,182,184,185,187,188,190,191,193,194,196,197,199,200,202,203,205,206,208,209,211,212,214,215,217,218,220,221,223,224,226,227,229,230,232,233,235,236,238,239,241,242,244,245,247,248,250,251,253,254,256,257,259,260,262,263,265,266,268,269,271,272,274,275,277,278,280,281,283,284,286,287,289,290,292,293,295,296,298,299,301,302,304,305,307,308,310,311,313,314,316,317,319,320,322,323,325,326,328,329,331,332,334,335,337,338,340,341,343,344,346,347,349,350,352,353,355,356,358,359,361,362,364,365,367,368,370,371,373,374,376,377,379,380,382,383,385,386,388,389,391,392,394,395,397,398,400,401,403,404,406,407,409,410,412,413,415,416,418,419,421,422,424,425,427,428,430,431,433,434,436,437,439,440,442,443,445,446,448,449,451,452,454,455


1,2,4,5,7,8,10,11,13,14,16,17,19,20,22,23,25,26,28,29,31,32,34,35,37,38,40,41,43,44,46,47,49,50,52,53,55,56,58,59,61,62,64,65,67,68,70,71,73,74,76,77,79,80,82,83,85,86,88,89,91,92,94,95,97,98,100,101,103,104,106,107,109,110,112,113,115,116,118,119,121,122,124,125,127,128,130,131,133,134,136,137,139,140,142,143,145,146,148,149,151,152,154,155,157,158,160,161,163,164,166,167,169,170,172,173,175,176,178,179,181,182,184,185,187,188,190,191,193,194,196,197,199,200,202,203,205,206,208,209,211,212,214,215,217,218,220,221,223,224,226,227,229,230,232,233,235,236,238,239,241,242,244,245,247,248,250,251,253,254,256,257,259,260,262,263,265,266,268,269,271,272,274,275,277,278,280,281,283,284,286,287,289,290,292,293,295,296,298,299,301,302,304,305,307,308,310,311,313,314,316,317,319,320,322,323,325,326,328,329,331,332,334,335,337,338,340,341,343,344,346,347,349,350,352,353,355,356,358,359,361,362,364,365,367,368,370,371,373,374,376,377,379,380,382,383,385,386,388,389,391,392,394,395,397,398,400,401,403,404,406,407,409,410,412,413,415,416,418,419,421,422,424,425,427,428,430,431,433,434,436,437,439,440,442,443,445,446,448,449,451,452,454,455

3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99,102,105,108,111,114,117,120,123,126,129,132,135,138,141,144,147,150,153,156,159,162,165,168,171,174,177,180,183,186,189,192,195,198,201,204,207,210,213,216,219,222,225,228,231,234,237,240,243,246,249,252,255,258,261,264,267,270,273,276,279,282,285,288,291,294,297,300,303,306,309,312,315,318,321,324,327,330,333,336,339,342,345,348,351,354,357,360,363,366,369,372,375,378,381,384,387,390,393,396,399,402,405,408,411,414,417,420,423,426,429,432,435,438,441,444,447,450,453,456

\d+,\d+,(\d+,)

Obj:=strobj("E:\AH\csvfileview 01-22-2017 01.json")
strobj(obj,"E:\AH\StrObj_CSV.txt")
strobj(""["log"]:="fdf","logobj.json")

strobj([MGP:=MGP(),win()],"MGP.txt")
MGPO:=strobj("MGP.txt")
[MGP,MGPO]
t([MGP,MGPO])
NO:=strobj("E:\AH\StrObj_CSV.txt")
t(NO)

OO:=[{a:"a",b:"b1"},{a2:"a2",b2:"b2"},"hi"]
CB:=read("E:\AH\StrObj_CSV.txt")
t(cb)
for k,v in ss(CB,"},{")
if isobject(v)
for k,v in V
t(k " : " v),sleep(250)
; t(ke " : " ve),sleep(500)
else,t(k " : " v),sleep(250)
CB:=clipboard
for k,v in CB
t(MyObj["fflog"]:="ff")
t(myobj["log"]:="ff")
	listvars
	pause
M.l:=1
Pos+=m(read("fc.txt"),"=+\s*[^=]*(?==)",M,POS)

msg(r(read("fc.txt"),"\s*=+\s*([^=]*)=+\s*","$1,`n"))

msg(MO "`n" MO.l)
t(strobj(mo).Filename)
for k,v in strobj(MO)
msg(MO.l k " : " v)
		Settings.Windows.SlideWindows.chkBorderActivationRequiresMouseUp

				Page.chkBorderActivationRequiresMouseUp.Checked:=false
		Settings.Windows.SlideWindows.chkBorderActivationRequiresMouseUp

---------------------------
Command-line options
---------------------------
Available Command-line options in CloneApp.

/AUTO = Detect Installed Apps and run Backup

/B = Normal Backup

/SB = Silent Backup

/CB "Backup_folder" = Custom Backup

/R = Normal Restore

/SR = Silent Restore

/CR "Restore_folder" = Custom Restore

/P = Run Preview and Export to Text file
---------------------------
OK
---------------------------

	MGP(){
		global
	A_CoordModeMouse
CoordMode, Mouse, Screen
	MouseGetPos,X,Y ; MouseGetPos,X,Y,ID,control,%Mode%
	MouseGetPos,,,ID,control
	RETURN {X:X,Y:Y,ID:ID,control:control,MODE:MODE,A_CaretX:A_CaretX,A_CaretY:A_CaretY,	A_CoordModeMouse:	A_CoordModeMouse}
	}

M.x-MWA
if m.x>A_ScreenWidth	{
Newx:=clamp(M.x-(MWA.right-Win.W),MWA.Left,MWA.right)
else,NewX:=clamp(M.X,MWA.Left,MWA.right)
if M.X>A_ScreenWidth-Win.W
}
newy:=m.y
if Win.H+M.Y>MWA.Bottom
{
DistTo:=MWA.Bottom-(Win.H+M.Y)
newy+=distto
}
NewY:=clamp(MWA.bottom-Win.H,10,950)
else,NewY:=clamp(M.y,10,950)
NewY:=clamp(A_ScreenWidth-81-Win.H,10,950)
m.x-=Win.W
m.x:=clamp(m.x,1925,3800)
}else,	m.x:=clamp(m.x,50,1920)
m.y:=clamp(m.y-Win.H,100,950)
	t([win,M],m.x+50,m.y-40,4)


;how to call funcs with string split params
P:="Exile,100,100,2,2000" ;,WE:=func("T").bind(SS(P)*),%WE%()


Min Proc
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 54533251-82be-4824-96c1-47b60b740d00 893de

e8e-2bef-41e0-89c6-b55d0929964c 100


Max Proc fan
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100

First Last
AesopsFlop@gmail.com

Hotstring("aes","AesopsFlop2178")
C:\Users\Brett\AppData\Roaming\NVIDIA\GLCache\e8cd0f695d7b79c4accf23e7ccf1a5f3\7e4216aa80a0df36\86e909d6565bbf04.toc
C:\Users\Brett\AppData\Roaming\Macromedia\Flash Player\#SharedObjects\QX7A9REE\skype.com
C:\Users\Brett\AppData\Roaming\Macromedia\Flash Player\#SharedObjects\QX7A9REE\skype.com\#ui\preferences.sol
E:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\Image_Uploader_sps\Data\Scripts\zalivalka.nut

E:\SyMenu\ProgramFiles\SPSSuite\SyMenuSuite\_Trash\20170207-01.38.38.WSUS_Offline_Update_sps\static\StaticDownloadLinks-o2k10-enu.txt


; E:\AH\joymouse.ahk - AutoHotkey v1.1.24.05
; ahk_class AutoHotkey
; ahk_exe AutoHotkeyU64_UIA.exe
DetectHiddenWindows, On

if WIN:=win("E:\AH\joymouse.ahk ahk_class AutoHotkey")
{
	Process, close,% Win.PID
	; winclose, % Win.title
	msgbox % strobj(Win)
	; WinClose
; msgbox hello
; winclose,
close(),ST("POV_Watch","off"),ST("MouseWheel","off"),ST("Joy_Trigger_Watch","off")
}
else
{
Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\joymouse.ahk"
; If !runclose("C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\joymouse.ahk")
ST("POV_Watch",25),ST("MouseWheel",25),ST("Joy_Trigger_Watch",60)
}
; Else,	ST("POV_Watch","off"),ST("MouseWheel","off"),ST("Joy_Trigger_Watch","off")
DetectHiddenWindows, OFF
Exit() ;Right STICK CLICK
If !runclose("C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "E:\AH\joymouse.ahk")
ST("POV_Watch",25),ST("MouseWheel",25),ST("Joy_Trigger_Watch",60)
Else,	ST("POV_Watch","off"),ST("MouseWheel","off"),ST("Joy_Trigger_Watch","off")

Watermelon6$
Watermelon6$


full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
 try
 {
     if A_IsCompiled
         Run *RunAs "%A_ScriptFullPath%" /restart
     else
         Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
 }
 ExitApp
}
a=A_IsAdmin: %A_IsAdmin%`nCommand line: %full_command_line%


Browse For Folder
ahk_class #32770
ahk_exe chrome.exe
-
 Class: MMCMainFrame
 CMD: "C:\WINDOWS\SYSTEM32\MMC.EXE"
 H: 728
 Height: 728
 ID: 0x2b133c
 ID_Hwnd: 0x2b133c
 PID: 6532
 ProcessName: mmc.exe
 Text: Console Root\Local Computer Policy\Computer Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone
ActionsPaneView
Intranet Zone 56 setting(s)
0
 Title: Console1 - [Console Root\Local Computer Policy\Computer Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Sec]
 W: 1451
 Width: 1451
 X: 709
 Y: 206
- 20170222064736
- A_TimeIdle=62
A_TimeIdlePhysical=62
A_TimeSincePriorHotkey=-1
A_TimesincethisHotkey=-1

If M(Name,"i)xvideos.*mp4$")
t(Name "`nR(WGT(XVID)) = " r(wgt("XVID")," *?-? ?XVID.*"),1400,850,5,7000,"add")
	 	If instr(Name,"xvideos")&&instr(oldName,"crdownload")
	 		atitle:=r(wgt("XVID")," *?-? ?XVID.*"),t(MoveTo:="E:\ANIME\" (atitle?atitle:a_now) "." spath(name).ext),FileCopy(Name,MoveTo,1),t(FileMove(Name,"E:\ANIME\xvid",1))
else,	If instr(Name,"videoplayback")&&instr(OldName,"crdownload")
	 		Obj:=O[filegettime(name,"C")],t(FileMove(Name,obj.target,1)),	R:="mklink /H """ name """ """ obj.LinkFile """"
			else,	If M(Name,".mp4$")&&instr(OldName,"crdownload")
	 		t(FileCopy(Name,WorkingDir,1))


	MoveTo:="E:\ANIME\XVID\" r(wgt("XVID")," *?-? ?XVID.*") "." spath(name).ext
	 	T(filemove(name,Moveto,1),1400,850,5,7000,"add"))


TTOFF:
	; If(A_TimeSinceThisHotkey>=2000||A_TimeSincePriorHotkey>=2000||A_TimeIdle>=2000){
	If(A_TimeIdle>1500){
	settimer, ,off
	VTT:="A_TimeSinceThisHotkey = " A_TimeSinceThisHotkey "`nA_TimeSincePriorHotkey = " A_TimeSincePriorHotkey "`nA_ThisHotkey = " A_ThisHotkey "`nA_PriorHotkey = " A_PriorHotkey "`nkey = " key "`nA_PriorKey = " A_PriorKey "`nA_TimeIdlePhysical = " A_TimeIdlePhysical "`nA_TimeIdle = " A_TimeIdle
	tooltip % HK()
	sleep 2000
	tooltip
	}Return

	videoTitle=videoTitle.replace('videoplayback','hi')

	 		R:="mklink /H """ name """ """ O[CT(Name)].LinkFile """"

Obj:=O[filegettime(name,"C")],t(FileMove(Name,obj.target,1)),	R:="mklink /H """ name """ """ obj.LinkFile """"

			O[T:=filegettime(name,"C")]:=Obj:=%FCS%(Target,LinkFile,WorkingDir,Args,Description,IconFile,ShortcutKey,IconNumber,RunState:=1)

AutoTimer:
isdoubleclick() ; t(isdoubleclick()?"hi":"no")
return
t("GKS(""RButton"") = " GKS("RButton") "`ngetkeystatefunc = " GetKeyState("RButton"))
return

	VTT:="A_TimeSinceThisHotkey = " A_TimeSinceThisHotkey "`nA_TimeSincePriorHotkey = " A_TimeSincePriorHotkey "`nA_ThisHotkey = " A_ThisHotkey "`nA_PriorHotkey = " A_PriorHotkey "`nkey = " key "`nA_PriorKey = " A_PriorKey "`nA_TimeIdlePhysical = " A_TimeIdlePhysical "`nA_TimeIdle = " A_TimeIdle


[Window Title]
System Protection

[Content]
The restore point could not be created for the following reason:

The shadow copy provider had an error. Check the System and Application event logs for more information. (0x80042306)

BCDEDIT /SET {DEFAULT} BOOTMENUPOLICY LEGACY

 /R
/uiAccess=1
/IsHostApp=1


"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
--flag-switches-begin
--debug-packed-apps
--default-tile-height=1024
--default-tile-width=512
--disable-accelerated-2d-canvas
--disable-accelerated-video-decode
--disable-cast-streaming-hw-encoding
--disable-gesture-requirement-for-media-playback
--no-pings
--disable-touch-adjustment
--disable-views-rect-based-targeting
--enable-add-to-shelf
--enable-app-window-controls
--enable-default-media-session=duck-flash
--enable-devtools-experiments
--enable-fast-unload
--enable-grouped-history
--enable-icon-ntp
--enable-message-center-always-scroll-up-upon-notification-removal
--enable-nacl
--enable-offline-auto-reload-visible-only
--enable-password-generation
--enable-print-preview-register-promos
--enable-scroll-prediction
--enable-single-click-autofill
--enable-site-settings
--enable-tab-audio-muting
--disable-touch-drag-drop
--inert-visual-viewport
--mhtml-generator-option=skip-nostore-all
--save-page-as-mhtml
--secondary-ui-md
--show-autofill-type-predictions
--silent-debugger-extension-api
--enable-smooth-scrolling
--top-chrome-md=material
--touch-events=disabled
--sync-url=https://chrome-sync.sandbox.google.com/chrome-sync/alpha
--enable-features=DisplayPersistenceToggleInPermissionPrompts,PassiveDocumentEventListeners,PassiveEventListenersDueToFling,PrintScaling,enable-manual-password-generation,password-import-export
--flag-switches-end


  - Gateway
192.168.0.1
  - Network mask
255.255.255.0
- Use static

Hotstring("ids`t","idspispopd469")
Hotstring("lic`t","licorice8",2)
Hotstring("aes`t","AesopsFlop2178")
Hotstring("PASS`t","Klavius123",2)
Hotstring("UPS`t","abcDQS132#",2)
Hotstring("bert`t","bertram.arnold@yahoo.com")


GEforce Nvidia experience account login etc
Reticule469

GenerusJew@gmail.com
PornHub username Stratix469
SocialBlade= Reticule469

Hotstring("i)(ll)(\w+)(`n|" a_tab "|"a_space ")" ,"$1 = $2 $ 3 '$3'",3,1) 	; ",-,',/,\,.,?,!,`n, ,`t"))
> "C:\Program Files (x86)\System Explorer\service\SystemExplorerService64.exe" /snapshot ff 1 1


Troubleshoot payroll update PSxxx errors
The payroll update did not complete successfully because of some problem with the Payroll installation or configuration.

Error PS033

The most common cause of this error is a damaged file in the CPS folder of your QuickBooks installation.

To resolve the problem, navigate to C:\Program Files\Intuit\QuickBooks 20nn\Components\Payroll (where 20nn is the QuickBooks version number) and rename the CPS folder to CPSOLD. Then try running the payroll update again (Employees > Get Payroll Updates).

Error PS036

This error is caused by a problem with your payroll subscription or the way QuickBooks has recorded your payroll subscription.

To resolve the problem, check that you have the latest QuickBooks release and updates. Then open Payroll Account Maintenance (Employees > My Payroll Service > Account/Billing Information or Account Info/Preferences) and close it. Reboot your computer, and try running the payroll update again (Employees > Get Payroll Updates).

If you continue to get this error, visit our Go onlinePayroll Support web site for additional steps.

Errors PS032, PS034, PS058, PS077

For detailed suggestions for resolving these errors, visit our Go onlinePayroll Support web site.



Help Support Check the Support Site for more answers

Help Feedback Did this Help topic give you the information you needed?
 Yes  No
 Requires an Internet connection.



\d{5}-OEM-\d{7}-\d{5}

00359-OEM-8704531-74207

\d{5}-OEM-\d{7}-\d{5}

00359-OEM-8704531-74207

snapcrackle

crackthisbitch

snapcrackle

Proxy.btguard.com

1025

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
CMD


#x a
powercfg.exe /hibernate off


E:\Downloads\SyMenu\ProgramFiles\SPSSuite\NirSoftSuite\SysExporter_x64_sps>sysex
p.exe /Process "taskmgr.exe" /class "SysListView32" /Visible "Yes" /shtml "c:\te
mp\1.html"

E:\Downloads\SyMenu\ProgramFiles\SPSSuite\NirSoftSuite\SysExporter_x64_sps>sysex
p.exe /Process "taskmgr.exe" /class "SysListView32" /Visible "Yes" /shtml "c:\te
mp\1.html"

E:\Downloads\SyMenu\ProgramFiles\SPSSuite\NirSoftSuite\SysExporter_x64_sps>sysex
p.exe /Process "taskmgr.exe" /class "SysListView32" /Visible "Yes" /shtml "c:\te
mp\1.html"

E:\Downloads\SyMenu\ProgramFiles\SPSSuite\NirSoftSuite\SysExporter_x64_sps>sysex
p.exe /Process 7016 /shtml "c:\temp\1.html"

E:\Downloads\SyMenu\ProgramFiles\SPSSuite\NirSoftSuite\SysExporter_x64_sps>

sysexp.exe /handle 0x00020872 /process 5420 /shtml "c:\temp\1.html"

/handle 0x00020872 /process 5420

if not (A_IsAdmin or RegExMatch(full_command_line:=DllCall("GetCommandLine","str"), " /restart(?!\S)")){
 try {
  if A_IsCompiled
    Run *RunAs "%A_ScriptFullPath%" /restart
  else, Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
 } ExitApp
	}
a=A_IsAdmin: %A_IsAdmin%`nCommand line: %full_command_line%

Account Unknown
S-1-5-21-3301656078-755441028-1162137601-1004

In the "Run" window, enter regedit.
Click OK.
In the "Registry Editor" window, open: HKEY_LOCAL_MACHINE\SOFTWARE\Google\Update\Clients\.
In the "Registry Editor" window, open: HKEY_CURRENT_USER\SOFTWARE\Google\Update\Clients\.
Right-click {430FD4D0-B729-4F61-AA34-91526481799D}.
In the menu, select Delete.
Close "Registry Editor."
Install the application again.
If you need help, contact your system administrator.

 "E:\$RECYCLE.BIN; "C:\$Recycle.Bin";"*cache";"cache*";caches;plex media**

 "C:\$Recycle.Bin"; "E:\$RECYCLE.BIN"; "*Plex Media Server*";"*cache";"caches"

POV_Watch:
	If(POV:=GKS("JoyPOV"))>=0{
	PoV_Pressed:=True
	If(POV=0||POV=4500||POV=31500)
	Send(POVADD "{Up}")
	If(POV=22500||POV=27000||POV=31500){
		If GKS("Joy8")
			SendInput("#{Left}"),Sleep(200)
			else, if winactive("ahk_exe PlexMediaPlayer.exe")
			Send("+{Left}"),Sleep(200)
		Else,	t(	Send(POVADD "{Left}"),,,,2000)
	}
	If(POV=13500||POV=18000||POV=22500)
		{
		If GKS("Joy8")
			WS("Bottom"),Sleep(200) ; WinSet, Bottom,,% Win().title
		Else,	Send(POVADD "{Down}")
	}If(POV=4500||POV=9000||POV=13500)
	{
		If GKS("Joy8"){
			if winactive("ahk_group browser"
			; send("{F6}!{enter}")	; send("!d"),send("!{enter}")
		 ; send("!d!{enter}")
			 send("!+d"),sleep(200)
			; send("{SC029}")
			; SendInput("#{Right}"),Sleep(200)
			}
		else, if winactive("ahk_exe PlexMediaPlayer.exe")
			Send( "+{Right}"),Sleep(200)
			Else,Send(POVADD "{Right}")
		}
	}Return

		POV_Watch: ; JoyPOV Up Down Left Right
	If(POV:=GKS("JoyPOV"))>=0{

If(POV=0||POV=4500||POV=31500)
; Send {Up}
Send(POVADD . "{Up}")
If(POV=22500||POV=27000||POV=31500)
t(	Send(POVADD . "{Left}"),,,2000)
If(POV=13500||POV=18000||POV=22500)
; Send {Down}
Send(POVADD . "{Down}")
If(POV=4500||POV=9000||POV=13500)
; Send {Right} ; t(POV,,,500)
Send(POVADD . "{Right}")

}Return

		if GKS("Joy8")
			POVADD:="#"
			else,POVADD:=""

			; add:="#+"
		; send {LWinDown}
		; send {ShiftDown}
	}
	; else,add:=""
	add:=""
	If(POV=0||POV=4500||POV=31500)
	    Send %add%{Up}
	If(POV=22500||POV=27000||POV=31500)
	    Send %add%{Left}
	If(POV=13500||POV=18000||POV=22500)
	    Send %add%{Down}
	If(POV=4500||POV=9000||POV=13500)
	    Send %add%{Right} ; t(POV,,,500)
POVADD:="",MWADD:=""

If between(GKS("JoyZ"),0,40)&&Send("{MButton}")
If between(GKS("JoyZ"),0,40)
{
Send("{MButton}")
return
}

AutoAdd Regedit
E:\Documents\Reg\sublime 3 Debug Notepad.reg
