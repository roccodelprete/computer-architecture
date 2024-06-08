*-----------------------------------------------------------
* Title      : esercizio 3.1 pagina 7
* Written by : Rocco
* Date       : 27/01/2022
* Description: IF D0 != 150 then (locazione di memoria $8800)=D5 + (contenuto della locazione $8504)
                           *else (locazione di memoria $8600)=D6 + (contenuto della locazione $8202) 
*-----------------------------------------------------------
    ORG    $1000
START:  movem.l A0/A1/A2/A2/D0/D5/D6,-(SP)
        lea     $8800,A0
        lea     $8600,A1
        lea     $8504,A2
        lea     $8202,A3
        move    #150,D0
        move    #7,D5
        move    #3,D6
        move    #4,(A2)
        move    #2,(A3)
        jsr     subr
        movem.l (SP)+,A0/A1/A2/A2/D0/D5/D6

    SIMHALT
    
subr    cmp     #150,D0
        beq     else
        
then    add     (A2),D5
        move    D5,(A0)
        jmp     fine
        
else    add     (A3),D6
        move    D6,(A1)
        
fine    rts

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
