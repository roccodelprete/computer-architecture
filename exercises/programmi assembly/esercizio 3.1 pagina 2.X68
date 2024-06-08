*-----------------------------------------------------------------------------------------------------------
* Title      : esercizio 3.1 pagina 2
* Written by : Rocco
* Date       : 31/01/2022
* Description: IF indice >=20 then (locazione di memoria ($8200 + contenuto della locazione $8210))=3 * D2
              *else (locazione di memoria ($8400 + contenuto della locazione $8220))= 2 * D1
*-----------------------------------------------------------------------------------------------------------
    ORG    $8800
I   DC     20

    ORG    $1000
START:  movem.l A0-A3/D0-D2,-(SP)
        lea     $8200,A0
        lea     $8400,A1
        lea     $8210,A2
        lea     $8220,A3
        move    I,D0
        move    #5,D1
        move    #8,D2
        move    #5,(A2)
        move    #7,(A3)
        jsr     subr
        movem.l (SP)+,A0-A3/D0-D2
        
    SIMHALT
    
subr    cmp     #20,I
        bge     then
        
else    add     (A3),A1
        mulu    #2,D1
        move.b  D1,(A1)
        jmp     fine
        
then    add     (A2),A0
        mulu    #3,D2
        move.b  D2,(A0)
        
fine    rts

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
