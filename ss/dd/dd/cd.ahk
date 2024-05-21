#Requires AutoHotkey v2.0

MsgBox(cd(  A_ScriptDir , 1 ))




Cd(path , back := unset){


    if path 







    if !IsSet(back){
        return ComObject("WScript.Shell").Exec("cmd.exe /c cd " path " && cd").StdOut.ReadAll()
    }
    
    
    else{
                if RegExMatch(back, "\b[0-9]+\b"  ) {
                    back_str:= ""
                    b := "../"
                    i := back
                    while i != 0{
                        back_str .= b
                        i--
                    }                    
                    return ComObject("WScript.Shell").Exec("cmd.exe /c cd " path " && cd" back_str " && cd").StdOut.ReadAll()
                }





        return ComObject("WScript.Shell").Exec("cmd.exe /c cd " path " && cd" back_str " && cd").StdOut.ReadAll()



    }
    


}



; MsgBox a

; MsgBox(ComObject("WScript.Shell").Exec('cmd.exe /c dir').StdOut.ReadAll())


