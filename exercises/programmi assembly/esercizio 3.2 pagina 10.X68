*-----------------------------------------------------------
* Title      : esercizio 3.2 pagina 10
* Written by : Rocco
* Date       : 03/02/2022
* Description: FOR i=1 to 60 step 2
              *D1=!D1+i+contenuto memoria ($8400) 
*-----------------------------------------------------------
    ORG    $8800
I   DC     1

    ORG    $1000
START: movem.l A0/D0/D1,-(SP)
       lea     $8400,A0
       move    I,D0
       move    #5,D1
       move    #4,(A0)
       jsr     subr
       movem.l (SP)+,A0/D0/D1

    SIMHALT
    
subr   cmp     #60,D0
       bge     fine
       
       not     D1
       add     D0,D1
       add     (A0),D1
       add     #2,D0
       jmp     subr
       
fine   rts

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
