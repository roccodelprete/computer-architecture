*-------------------------------------------------------------------------------------------------------------------
* Title      : Somma del contenuto in due indirizzi con salto - sottoprogramma
* Written by :
* Date       : 15/12/2021
* Description: Sommare il contenuto di due indirizzi e successivamente saltare in una nuova locazione
*-------------------------------------------------------------------------------------------------------------------
       org      $810A
array  dc.b     $0A,$0B
        
       org      $8500
start  movem.l  D0/D1,-(SP)
       lea      $810A, A0
       lea      $810B, A1
       jsr      test
       movem.l  (SP)+,A0/A1/D0/D1
       
       org      $8600
test   move.b   (A0),D1
       move.b   (A1),D1
       add.b    D0,D1
       btst     #0,D1
       bne      jump
       cmpi.b   #15,D1
       blt      jump
       cmpi     #25,D1
       bgt      jump
       jmp      $8600
       
jump   rts
       
       simhalt
      
       end      start

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
