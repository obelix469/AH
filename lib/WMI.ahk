WMI(Query){
static BIOS:="BIOSVersion,BuildNumber,Caption,CurrentLanguage,Description,InstallableLanguages,InstallDate,ListOfLanguages,Manufacturer,Name,PrimaryBIOS,ReleaseDate,SerialNumber2,SMBIOSBIOSVersion,cSMBIOSMajorVersion,SMBIOSMinorVersion,SMBIOSPresent,SoftwareElementID,SoftwareElementState,Status,TargetOperatingSystem,Version"
; WMI[WQLQuery]:=ComputerSystem|PointingDevice|OperatingSystem|Desktop|BIOS|OnBoardDevice
Pre:="Select * from Win32_"
WQLQuery:=Pre SR(Query,Pre)
colItems:=ComObjGet("winmgmts:{impersonationLevel=impersonate}!\\" A_ComputerName "\root\cimv2").ExecQuery(WQLQuery)._NewEnum

}

PropertyList := "Caption,CreationClassName,Description,DeviceType,Enabled,"
. "HotSwappable,InstallDate,Manufacturer,Model,Name,OtherIdentifyingInfo,"
. "PartNumber,PoweredOn,Removable,Replaceable,SerialNumber,SKU,Status,Tag,Version"
objWMIService := ComObjGet("winmgmts:{impersonationLevel=impersonate}!\\" . A_ComputerName . "\root\cimv2")
WQLQuery = Select * From Win32_OnBoardDevice
colOnboard := objWMIService.ExecQuery(WQLQuery)._NewEnum
While colOnboard[objOnboard]
Loop, Parse, PropertyList, `,
    OnboardDeviceList .= A_index = 1 ? objOnboard[A_LoopField] . "`n" : "`t" . A_LoopField . ":`t" . objOnboard[A_LoopField] . "`n"
msgbox % OnboardDeviceList
exitapp

