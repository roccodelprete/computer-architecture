*-----------------------------------------------------------
* Title      : Indirizzamento indiretto con spiazzamento
* Written by :
* Date       : 25/11/2021
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:  movea.l #A,A0
        move    2(A0),D0
        add     4(A0),D0
        add     6(A0),D0
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
