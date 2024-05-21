#Requires AutoHotkey v2.0



; MsgBox(ComObject("WScript.Shell").Exec('start /min cmd.exe /c systeminfo ').StdOut.ReadAll())
;MsgBox(ComObject("WScript.Shell").Exec('cmd.exe /c systeminfo | findstr /b /c:"OS Name"').StdOut.ReadAll())

ss := ComObject("Wscript.Shell")

MsgBox "hello"
MsgBox ss.Exec('cmd.exe /c  systeminfo | findstr /b /c:"OS Name"').StdOut.ReadAll()

MsgBox l

; MsgBox(ComObject("WScript.Shell").Exec('cmd.exe /c systeminfo | findstr /b /c:"OS Name"').StdOut.ReadAll())




l := systeminfo

class systeminfo {
    class windowsOS {
        static Call(*){
            ; MsgBox(ComObject("WScript.Shell").Exec('cmd.exe /c systeminfo | findstr /b /c:"OS Name"').StdOut.ReadAll())
            return 8
        }
        static FullVersion(){

        }
        static NumberVersion(){
            
        }
    }
    
}


; MsgBox(ComObject("WScript.Shell").Exec('cmd.exe /c systeminfo | findstr /b /c:"OS Name"').StdOut.ReadAll())
MsgBox systeminfo.windowsOS