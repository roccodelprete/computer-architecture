*-----------------------------------------------------------
* Title      : Minimo di un array
* Written by :
* Date       : 01/12/2021
* Description: Calcolo del minimo in un vettore
*-----------------------------------------------------------
        org     $8000
start   lea     array,A0
        move    #len-1,D3
        move    (A0),D1     *minimo corrente
        
loop    move    2(A0)+,D2
        cmp     D2,D1
        blt     min
        jmp     test
        
min     move    D2,D1       *aggiornamento minimo

test    dbra    D3,loop
        move    D1,minimo
        simhalt
        
        org     $8800
array   dc.w    2,10,25,30,50
len     equ     5
minimo  ds.w    1
        end     start
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
