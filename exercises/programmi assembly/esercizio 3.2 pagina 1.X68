*-----------------------------------------------------------
* Title      : esercizio 3.2 pagina 1
* Written by : Rocco
* Date       : 27/01/2022
* Description: FOR i=1 to contenuto della memoria $8600 then D0=D0+contenuto memoria $8500
*-----------------------------------------------------------
    ORG    $8800
i   DC     1    
    
    ORG    $1000
START:  movem.l A0/A1/D0/D1,-(SP)
        lea     $8600,A0
        lea     $8500,A1
        move    #5,(A1)
        move    #4,(A0)
        move    #7,D0
        move    I,D1
        jsr     subr
        movem.l (SP)+,A0/A1/D0/D1

    SIMHALT
    
subr    cmp     (A0),D1
        bgt     fine
        
        add     (A1),D0
        add     #1,D1
        jmp     subr
        
fine    rts
    
    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
