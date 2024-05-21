
#SingleInstance Force
; myvar := 50

; Script := "
; (
; 	MsgBox Worker(A_MainThreadID)['myvar']
; )"
; Worker(Script)
; MsgBox "end"


; script:= ("
; (   
;     MsgBox "lol"
;     SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav" , 1)
;     OnExit ExitFunc
;     ExitFunc(*){
;         MsgBox 'good bey'
;     }
    
; )")




; ; Worker(0,script,"sss")
; L := worker(script,,"pizaa" )
; Sleep(500)
; L.ExitApp() ;it close msgbox








; MsgBox "hello from main script"

; myvar:=50

; Script := "
; (
;     SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav" , 1)
; 	Alias(myvar:=0, ahkGetVar('myvar', 1, A_MainThreadID))
;     MsgBox myvar


; )"
; t:=Worker(Script)


; ; t.Pause()

; ; MsgBox t.ThreadID "`n" A_ThreadID

; Sleep(50)

; ahkPause(0 , t.ThreadID)
; f := ahkExec(Script)
; ahkTerminate()
; ahkPause(1, f)

; t.ExitApp(-1)

; MsgBox "end"

; #Include 

; ;####Requires AutoHotkey v2.0


; string1:="
; (
; SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav",1)
; )"

; dll1:=  Worker(string1, ,"pizaa") 
; Sleep(1)
; ; dll1.ExitApp()
; Sleep(500)

; MsgBox A_MainThreadID "`n" dll1.ThreadID


; dll1.Reload() 
; dll1:=Worker(string1)
; ahkPause(1, dll1.ThreadID)
; Sleep(8888)




f::{
    Critical
    ahkPause(1, dll)
    ToolTip "yes"
}
;/####

/*
dll := Worker(script)
script := ("
(
    Loop {
        ; SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav",0)
        ToolTip 'Thread running'
        Sleep(1000)
    }
)")
*/



dll:= NewThread("
(
    Loop {
        SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav")
        ; ToolTip 'Thread running'
        Sleep 1
    }
)")



; dll["thread"]("Terminate", true)
; Critical
; Thread("Interrupt", dll)
; ahkPause(1, dll.ThreadID)
; dll.ExitApp()


Sleep 500
; ahkPause(1, dll)
MsgBox 'end'