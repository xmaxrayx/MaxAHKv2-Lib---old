#Requires AutoHotkey v2.0


str := "C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav"


g := musicPlayer()

g.setPath(str)


g.start(, 1 ,)

Sleep 50000
g.close()
; g.start(str)
; 4




class musicPlayer {
    musicPlayer__PID := unset
    musicplayer__path := unset

    start(path?, enableLoop := false, loopTime := 0 ) {
        musicPlayer__PID := ""
        if enableLoop == false
            enableLoop := 0
        
        musicplayer__path := this.musicplayer__path??unset
        if !IsSet(path) && isSet(musicplayer__path)
            path := this.musicplayer__path

        ; this.musicPlayer__PID
        
        Run('"musicplayerV1.py"' ' "' path '"' ' "' enableLoop '"' ' "' loopTime '"' , , "Hide" ,&musicPlayer__PID )
        this.musicPlayer__PID := musicPlayer__PID
        


    }

    setPath(path){
        this.musicplayer__path := path
    }



    close(Pid?) {
        if !IsSet(Pid){
            if !ProcessExist(this.musicPlayer__PID)
                ProcessWait(this.musicPlayer__PID, 10)
            ProcessClose(this.musicPlayer__PID)
        }else{
            ProcessClose(Pid)
        }


    }


}


