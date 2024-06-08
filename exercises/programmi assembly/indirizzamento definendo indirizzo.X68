*-----------------------------------------------------------
* Title      : Indirizzamento indiretto definedo l'indirizzo
* Written by :
* Date       : 01/12/2021
* Description: for j=0 to 50
                 *if j<=20
                    *locazione di memoria($8200+j)=D3+1
                 *else
                    *locazione di memoria($8100+j)=D3-2
*-----------------------------------------------------------
        org     $8000
START:  move.b  #4,D3
        move.b  #j-1,D0
        move.l  #$8100,A0
        move.l  #$8200,A1
        
loop    cmpi.b  #20,D0
        bgt     else  
        move.b  D3,(A0,D0)
        add.b   #1,(A0,D0)
        jmp     ciclo
        
else    move.b  D3,(A1,D0)
        sub.b   #2,(A1,D0)
        
ciclo   dbra    D0,loop

        SIMHALT
        
        org     $8800
j       equ     51

        END     START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
