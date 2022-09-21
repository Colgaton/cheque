**** Modulo que listara todos os cheques de tal dia ****

use cheques index cheques

do while .t.

datavc=ctod("99/99/99")

set color to "w+/r"
for u=4 to 21
@u,20 say space(53)
next

@04,20 to 21,73 double
@04,21 say "Listar Cheques"

@ 06,24 say "Listar desde qual data: " get datavc
read
if lastkey()==27
return(1)
endif

set filter to datavc <= xDATAVC
go top

dbedit(08,22,20,72)
enddo
