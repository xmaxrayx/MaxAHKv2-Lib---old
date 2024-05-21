;forked from unbreakable-ray from old AHKv2-lib
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 10:24:44  on 19/12/2023   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
#Requires AutoHotkey v2.0

; try{
;   MsgBox(RegExMatch(" a Hi","i\w)hi",))  
; }
; catch as e
; {
;     MsgBox "An error was thrown!`nSpecifically: " e.Message
;     Exit
; }
 

;need add escape character

;MsgBox(optionDetectorMini_v1("loli bobi toti", "lol"))
;MsgBox(optionDetectorMini_v1("loli bobi toti", "loli"))
;(optionDetectorMini_v1("\koli bobi toti", "\\koli" ,,,,false))

optionDetectorMini_v1(Text, Haystack , Delimiters := A_Space , ReturnTrueValue := true ,ReturnFalseValue := false , CaseInsensitive  := true ){

 ;====================[1]Clean the text]=====================

 ;partial word search need to add

    Delimiters := Delimiters?? A_Space
    Text := trim(RegExReplace(Text, "\s+" , " ")) ;"(^\s+| +(?= ))|\s+$"
    ;MsgBox text

    if CaseInsensitive == true {
        ;Haystack := ("i)" . "\Q" . Haystack . "\E")
        Haystack := ("i)\" . Haystack . "\b")
    }
    else{   
        Haystack := ("\" . Haystack . "\b")
    }
     
    
    ;===============[2]Split the text into list]===============
    local optionList := StrSplit(Text , Delimiters)
    Loop optionList.Length
        {  
            MsgBox "The list contains [" optionList[A_Index] "] at (" . A_Index . ")`nList length: " . optionList.Length . "`nHaystack: " . Haystack

            if  0 != RegExMatch(optionList[A_Index],Haystack) ;===============[2-1]If we found the Target]===============
                {   
                    ;foundText := optionList.get(A_Index)   
                return ReturnTrueValue   
                }  
            ;     }
            ; else{ ;===============[2-2]If we did NOT found the Target]===============
                
            ; }  
        }
        return ReturnFalseValue
               
                
}



