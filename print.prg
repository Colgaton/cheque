**** Modulo que imprimira todos os cheques a partir de tal dia ****

do while !isprinter()
alert("Ligue a impressora")
enddo

use cheques index cheques

do while .t.
set device to screen

datavc=ctod("99/99/99")

set color to "w+/r"
for u=4 to 21
@u,20 say space(53)
next

@04,20 to 21,73 double
@04,21 say "Imprimir Cheques"

@ 06,24 say "Imprimir desde qual data: " get datavc
read
if lastkey()==27
return(1)
endif

set filter to datavc <= xDATAVC
go top

set device to print

@ prow(),0 say chr(27)+"E"
@ prow()+1,0 say "Impressao de dados"
@ prow()+1,0 say "------------------"
@ prow()+1,0 say chr(27)+"F"

cont=0

do while cont < lastrec()

@ prow()+1,0 say xNOME

skip 1
cont=cont+1

enddo

 enddo

return(1)
