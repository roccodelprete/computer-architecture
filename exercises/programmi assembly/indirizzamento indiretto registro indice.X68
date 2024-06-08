*-----------------------------------------------------------
* Title      : Indirizzamento indiretto con registro indice
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
        clr     D1
START:  movea.l #A,A0
        add.b   #2,D1
        move    (A0,D1),D0
        add.b   #2,D1
        add     (A0,D1),D0
        add.b   #2,D1
        add     (A0,D1),D0
        move    D0,(A0)    
        simhalt
        
        org $8800
B       dc  4
C       dc  3
D       dc  9
A       ds  1
        END    START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
