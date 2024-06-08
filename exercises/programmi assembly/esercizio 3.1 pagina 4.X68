*-----------------------------------------------------------
* Title      : Esercizio 3.1 pagina 4
* Written by : Rocco
* Date       :
* Description: IF indice <30
              *then (locazione di memoria $8320)=D2 + X
              *else (locazione di memoria $8606)=D2 * Y 
*-----------------------------------------------------------
    ORG    $8800
I   DC     1
X   DC     5
Y   DC     3

    ORG    $1000
START:  movem.l A0/A1/D0-D3,-(SP)
        lea     $8320,A0
        lea     $8606,A1
        move    I,D0
        move    X,D1
        move    #4,D2
        move    Y,D3
        jsr     subr
        movem.l (SP)+,A0/A1/D0-D3

    SIMHALT
 
subr    cmp     #30,D0
        blt     then
        
else    mulu    D3,D2
        move    D2,(A1)
        
        jmp     fine
        
then    add     D1,D2
        move    D2,(A0)
        
fine    rts

    END    START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
