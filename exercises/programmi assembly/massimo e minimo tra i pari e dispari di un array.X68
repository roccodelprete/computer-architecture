*------------------------------------------------------------------------------------------------
* Title      :  Minimo tra dispari di un array
* Written by :
* Date       :  01/12/2021
* Description:  Calcolo degli elementi dispari di un array e successivamente del minimo tra loro
*------------------------------------------------------------------------------------------------
        ORG     $8000
START:  lea     array,A0
        move    #len-1,D0
        move    #$00FE,D2   *definizione di un minimo corrente
        move    #$FFFF,D3   *definizione di un massimo corrente
        
loop    move    (A0)+,D1
        btst    #0,D1       *calcolo dell'elemento dispari
        bne     disp
        cmp     D3,D1       *calcolo elemento pari
        bgt     max
        jmp     ciclo
        
disp    cmp     D2,D1
        blt     min
        jmp     ciclo
        
max     move    D1,D3       *aggiornamento del massimo
        jmp     ciclo
        
min     move    D1,D2       *aggiornamento del minimo

ciclo   dbra    D0,loop
        
        move    D2,minimo        
        move    D3,massimo
        
        SIMHALT
        
        org     $8800
array   dc.w    3,5,2,17,54,41,8,99
minimo  ds.w    1
massimo ds.w    1
len     equ     8

        END     START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
