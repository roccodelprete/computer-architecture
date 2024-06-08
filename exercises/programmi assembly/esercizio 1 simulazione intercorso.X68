*-----------------------------------------------------------
* Title      : Esercizio 1 simulazione intercorso
* Written by :
* Date       : 16/12/2021
* Description: Esercizio 1 simulazione intercorso
*-----------------------------------------------------------
     
       org      $8000
start  movem.l  A0/A1/D0/D1/D2,-(SP)
       lea      $8400, A0
       lea      $8200, A1
       move     #5,D0
       move     #3,D1
       move     #4,D3
       jsr      sbr
       movem.l  (SP)+,A0/A1/D0/D1/D2

sbr    add      (A1),D1

test   dbra     D3,sbr
       
ret    rts
       
       simhalt
      
       end      start

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
