  *** Modulo de adiçao/cálculo de um registro ***



set color to "w+/r"
for u=4 to 21
@u,20 say space(53)
next

@ 04,20 to 21,73 double
@ 04,21 say "Adicionar"
do while .t.                                            

datavc=ctod("99/99/99")    && Data de vencimento
datapg=ctod("99/99/99")    && Data de pagamento
nome=space(30)             && Anta que emitiu o cheque
dias=0                     && datavc - datapg
valor=0                    && Valor da muamba
tjuros=0.065               && Valor pre-definido dos juros
banco=space(15)            && Nome do banco(explorador) do cheque
ncheque=0                  && Numero do cheque :P
agencia=space(20)          && Numero da Agencia exploradora

@ 08,24 say "Data de Vencimento: " get datavc
@ 09,24 say "Data de Pagamento : " get datapg
read

if lastkey()=27
return(1)
endif

dias=datavc-datapg         

@ 10,35 say "Dias (datavc - datapg):"
@ 10,59 say str(dias) 

@ 12,35 say "Nome do dono do cheque: "
@ 13,31 get nome pict "@!"
read

if lastkey()=27
return(1)
endif

@ 15,24 say "Valor do cheque: " get valor pict "999.99"  
read

if lastkey()=27
return(1)
endif

juros=(valor*tjuros)/30         && Calcula os juros
juros=juros*dias                && Em cima dos dias :) EXPLORAÇAO!

@ 16,35 say "Juros: "               
@ 16,44 say juros pict "@E99999"    

@ 18,24 say "Banco: " get banco     
read

if lastkey()=27
return(1)
endif

@ 19,24 say "Agencia bancaria: " get agencia pict "9999" 
read

if lastkey()=27
return(1)
endif

@ 20,24 say "Numero do cheque: " get ncheque  
read

if lastkey()=27
return(1)
endif

use cheques index cheques

append blank
replace xDATAVC  with datavc
replace xNOME    with nome
replace xDIAS    with dias
replace xJUROS   with juros
replace xBANCO   with banco
replace xNCHEQUE with ncheque
replace xVALOR   with valor
replace xAGENCIA with agencia

enddo
