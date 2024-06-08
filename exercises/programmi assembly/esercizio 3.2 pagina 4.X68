*-----------------------------------------------------------
* Title      : esercizio 3.2 pagina 4
* Written by : Rocco
* Date       : 26/01/2022
* Description: FOR i=1 to 120 step 2
              *D3=D3-contenuto memoria $8120 
*-----------------------------------------------------------
    ORG    $8800
I   DC     1    

    ORG    $1000
START:  movem.l A0/D0/D3,-(SP)
        lea     $8120,A0
        move    #3,(A0)
        move    #150,D3
        move    I,D0
        jsr     subr
        movem.l (SP)+,A0/D0/D3

    SIMHALT
    
subr    cmp     #120,D0
        bgt     fine
        
        sub     (A0),D3
        add     #1,D0
        jmp     subr

fine    rts        
    
    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
