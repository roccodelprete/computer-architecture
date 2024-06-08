*-----------------------------------------------------------
* Title      : Esercizio 2 simulazione intercorso
* Written by :
* Date       : 16/12/2021
* Description: Esercizio 2 simulazione intercorso
*-----------------------------------------------------------
        org     $8400
start   lea     array,A0
        movem.l A0/A1/D0-D4,-(SP)
        move    #len-1,D3
        move    #20,D0
        move    #50,D1
        move    count,D2
        jsr     sbr
        move    D2,count
        movem.l (SP)+,A0/A1/D0-D4
        
        simhalt
        
sbr     clr     D2
loop        move.b  (A0)+,D4
        btst    #0,D4
        bne     ciclo
        
pari    cmp     D0,D4
        ble     ciclo
        
        cmp     D1,D4
        bge     ciclo

true    add.b   #1,D2

ciclo   dbra    D3,loop
        
ret     rts

        org     $8120
array   dc.b    16,23,42,57,32,45
len     equ     6
count   ds      1

        end     start

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
