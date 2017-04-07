ratesong(){
CR:=(IT:=ComObjCreate("Itunes.Application")).CurrentTrack.rating
if instr(a_thishotkey,"_Play_Pause")
return (IT.playerstate)?IT.pause(): IT.play()
else,if instr(a_thishotkey,"_Next")
IT.NextTrack()
else,if instr(a_thishotkey,"_Prev")
IT.PreviousTrack()
else,if instr(a_thishotkey,"_Stop")
return IT.Stop()
t:={BASE:CLASSLIST,"Artist":IT.CurrentTrack.artist,"Song":IT.CurrentTrack.name,"CurrentRating":CR}
if instr(a_thishotkey,"NumpadAdd")
t["NewRating"]:=IT.CurrentTrack.rating:=CR+1
; t:={BASE:CLASSLIST,"Artist":IT.CurrentTrack.artist,"Song":IT.CurrentTrack.name,"CurrentRating":CR,"NewRating":IT.CurrentTrack.rating:=CR+1}
else,if instr(a_thishotkey,"NumpadSub")
t["NewRating"]:=IT.CurrentTrack.rating:=CR-1
; t:={BASE:CLASSLIST,"Artist":IT.CurrentTrack.artist,"Song":IT.CurrentTrack.name,"CurrentRating":CR,"NewRating":IT.CurrentTrack.rating:=CR-1}
else, if m(A_ThisHotkey,"i)Numpad\K\d",m)
t["NewRating"]:=IT.CurrentTrack.rating:=SubStr(a_thishotkey,0)*20
; t:={BASE:CLASSLIST,"Artist":IT.CurrentTrack.artist,"Song":IT.CurrentTrack.name,"CurrentRating":CR,"NewRating":IT.CurrentTrack.rating:=SubStr(a_thishotkey,0)*20}
T(T)
if (t.newrating<61)
sleep(500),IT.play(),sleep(500)
t.push({"NArtist":IT.CurrentTrack.artist,"Song":IT.CurrentTrack.name}),t(t.list)
IT:=""
}

; NR:=m<6?(SubStr(a_thishotkey,0)*20):100
; (NR:=m<6?(SubStr(a_thishotkey,0)*20):((m=7)?101:81)),t:={BASE:CLASSLIST,"Artist":IT.CurrentTrack.artist,"Song":IT.CurrentTrack.name,"NewRating":IT.CurrentTrack.rating:=NR},t(t),((t.rating<61)?(sleep(500),IT.play()):t(IT.CurrentTrack.name))

; else, if m(A_ThisHotkey,"i)Numpad\K\d",m)
; (NR:=m<6?(SubStr(a_thishotkey,0)*20):((m=7)?101:81)),t:={BASE:CLASSLIST,"Artist":IT.CurrentTrack.artist,"Song":IT.CurrentTrack.name,"NewRating":IT.CurrentTrack.rating:=NR},t(t),((t.rating<61)?(sleep(500),IT.play()):t(IT.CurrentTrack.name))
; IT:=""