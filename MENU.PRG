******
* Menu principal
******

******
* Op‡oes para o ambiente

set date brit
set wrap on
set message to 23 center
set procedure to funcoes
******
********
* Checa a existencia de arquivos de dados

if !file("cheques.dbf")
 do criar
endif

use cheques
if !file("cheques.ntx")
 index on xDATAVC to cheques
endif

set index to cheques
**********

*******
* Variaveis
op=0
*******
clear
full_screen(00,00,24,13,"b+/b+")

do while .t.

set color to "w+/r"
for u=4 to 21
@u,20 say space(53)
next
@ 04,20 to 21,73 double
@ 10,23 say "Quantidade de registros: "
@ 10,47 say lastrec()
@ 11,23 say "Data de hoje: "
@ 11,37 say date()
@ 12,23 say "Horario: "
@ 12,37 say time()

set color to w+/b+
@ 00,00, 24,15 box repl("±",24)
@ 00,00 to 24,16 double

@ 07,03 to 13,13 double
@ 08,04 prompt [Adicionar]
@ 09,04 prompt [ Remover ]
@ 10,04 prompt [ Mostrar ]
@ 11,04 prompt [ Imprimir]
@ 12,04 prompt [  Sair   ]

menu to op

do case
        case op=1
      do add
        case op=2
*      do del
        case op=3
      do listar
        case op=4
      do print
        case op=5
      fim()
endcase

enddo
