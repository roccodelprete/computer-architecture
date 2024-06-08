*-------------------------------------------------------------------------------------------------------------------
* Title      : Contare byte dispari
* Written by :
* Date       : 02/12/2021
* Description: Contare quanti byte dispari >20 e <55 sono memorizzati nelle locazioni di memoria $8100 a $810F
*-------------------------------------------------------------------------------------------------------------------
        org     $1000
start   lea     array,A0
        move    #len-1,D0
        clr     D2          *contatore
        
loop    move.b  (A0)+,D1
        btst    #0,D1
        beq     ciclo
        
pari    cmpi    #20,D1
        ble     ciclo
        
disp    cmpi    #20,D1
        ble     ciclo

magg20  cmpi    #55,D1
        bge     ciclo

min55   add.b   #1,D2

ciclo   dbra    D0,loop

        move    D2,count    *aggiornamento contatore  

        simhalt

        org     $8100
array   dc.b    $0F,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$1E,$1F
len     equ     $10
count   ds      1

        end     start

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
