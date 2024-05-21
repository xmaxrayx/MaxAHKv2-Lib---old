; #Requires AutoHotkey v2.0


dll := NewThread("
(
    SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav",1)
    
)")


Sleep 2000

; Attempt to terminate the newly created thread
Thread("Interrupt", , dll)

Sleep 2000

MsgBox "End"