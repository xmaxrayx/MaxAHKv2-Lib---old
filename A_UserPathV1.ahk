#Requires AutoHotkey v2.0

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 18:22:20  on 7/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


A_UserPath(*){

    A_UserPath__str := A_MyDocuments
    A_UserPath__str := RegExReplace(A_UserPath__str, "\\Documents" , "")

    return A_UserPath__str

} 


