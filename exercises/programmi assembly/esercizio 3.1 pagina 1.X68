*-------------------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:   IF indice ==12
                *then (locazione di memoria ($8200 + indice))=D3- 1
                *else (locazione di memoria ($8100 + indice))=D3*2
*-------------------------------------------------------------------
    ORG    $1000
I   DC      4

    ORG    $8800
START:  movem.l A0/A1/D0-D3,-(SP)
        lea     $8200,A0
        lea     $8100,A1
        move    I,D0
        move    #3,D3
        jsr     subr
        movem.l (SP)+,A0/A1/D0-D3
        
    SIMHALT
    
subr    cmp     #12,D0
        BEQ     then
        
else    add     D0,A1
        mulu    #2,D3
        move.b  D3,(A1)
        jmp     fine        
        
then    add     D0,A0
        sub     #1,D3
        move.b  D3,(A0)
        
fine    rts
        
    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
