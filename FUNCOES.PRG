***** Arquivo onde ficam as funçoes e procedures *****

procedure criar

create tempo
append blank
replace field_name with "xDATAVC"
replace field_type with "d"
replace field_len  with 8
replace field_dec  with 0
append blank
replace field_name with "xNOME"
replace field_type with "c"
replace field_len  with  30
replace field_dec  with  0
append blank
replace field_name with "xDIAS"
replace field_type with "n"
replace field_len  with  2
replace field_dec  with  0
append blank
replace field_name with "xJUROS"
replace field_type with "n"
replace field_len  with  5
replace field_dec  with  2
append blank
replace field_name with "xBANCO"
replace field_type with "c"
replace field_len  with 15
replace field_dec  with 0
append blank
replace field_name with "xNCHEQUE"
replace field_type with "n"
replace field_len  with 10
replace field_dec  with 0
append blank
replace field_name with "xVALOR"
replace field_type with "n"
replace field_len  with 7
replace field_dec  with 2
append blank
replace field_name with "xAGENCIA"
replace field_type with "c"
replace field_len  with 5
replace field_dec  with 0

create cheques from tempo
erase tempo.dbf

return
**************
function full_screen(x1,y1,x2,y2,cor)

setcolor(cor)
for w=x1 to x2
@ x1,y1 say repl("Û",y2-y1)
next

return(NIL)


