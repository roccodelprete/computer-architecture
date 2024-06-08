*---------------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:  FOR i=1 to contenuto della memoria $8400 step 3
               *D2=D2+contenuto memoria $8204
*---------------------------------------------------------------
    ORG    $8800
I   DC     1

    ORG    $1000
START:  movem.l A0/A1/D0-D3,-(SP)
        lea     $8400,A0
        lea     $8204,A1
        move.b  #7,(A0)
        move.b  #4,(A1)
        move    I,D0
        move    #5,D2
        jsr     subr
        movem.l (SP)+,A0/A1/D0-D3    

    SIMHALT 
    
subr    move.b  (A0),D3
        cmp     D3,D0
        bgt     fine
        
        move.b  (A1),D1
        add     D1,D2
        
        add     #1,D0
        jmp     subr
        
fine    rts
    
    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
