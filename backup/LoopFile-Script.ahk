; Example #6: Convert filenames passed in via command-line parameters to long names,
; complete path, and correct uppercase/lowercase characters as stored in the file system.
Loop %0%  ; For each file dropped onto the script (or passed as a parameter).
{
tool:=a_now " " A_ScriptName " "
    GivenPath := %A_Index%  ; Retrieve the next command line parameter.
    Loop %GivenPath%, 1
        LongPath = %A_LoopFileLongPath%
tool=%tool%%GivenPath% --> %LongPath%`n
}
tooltip % tool
fileappend % tool, log.log
sleep 5000
exitapp