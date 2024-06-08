*----------------------------------------------------------------------------------------
* Title      : esercizio 3.1 pagina 8
* Written by : Rocco
* Date       : 01/02/2022
* Description: IF bit 4 di X=0 then (locazione di memoria ($8700 + D1 * 3))=!D0 + 20
              *else (locazione di memoria ($8200 + D1 *2))=D1 - 30
*----------------------------------------------------------------------------------------
    ORG    $8800
X   DC     8 

    ORG    $1000
START:  movem.l A0/A1/D0-D3,-(SP)
        lea     $8700,A0
        lea     $8200,A1
        move    X,D2
        move    #5,D0
        move    #4,D1
        jsr     subr
        movem.l (SP)+,A0/A1/D0-D3

    SIMHALT
    
subr    btst    #4,D2
        bne     else
        
then    mulu    #3,D1
        not     D0
        add     #20,D0
        move    D0,(A0,D1)
        jmp     fine
        
else    move    D1,D3
        mulu    #2,D1
        sub     #30,D3
        move    D3,(A1,D3)
        
fine    rts

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
