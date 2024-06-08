*-----------------------------------------------------------
* Title      : esercizio 3.2 pagina 8
* Written by : Rocco
* Date       : 27/01/2022
* Description: FOR i=4 to contenuto della memoria $8200 then D2=D2 + D1 
*-----------------------------------------------------------
    ORG    $8800
I   DC     4
    
    ORG    $1000
START:  movem.l A0/D0/D1/D2,-(SP)
        lea     $8200,A0
        move    #10,(A0)
        move    I,D0
        move    #5,D1
        move    #6,D2
        jsr     subr
        movem.l (SP)+,A0/D0/D1/D2

    SIMHALT
    
subr    cmp     (A0),D0
        bgt     fine
        
then    add     D1,D2
        add     #1,D0
        jmp     subr
        
fine    rts
        
    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
