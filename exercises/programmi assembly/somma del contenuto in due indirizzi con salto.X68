*-------------------------------------------------------------------------------------------------------------------
* Title      : Somma del contenuto in due indirizzi con salto
* Written by :
* Date       : 02/12/2021
* Description: Sommare il contenuto di due indirizzi e successivamente saltare in una nuova locazione
*-------------------------------------------------------------------------------------------------------------------
        org     $1000
start   move.l  #$810A,A0
        move.l  #$810B,A1
        move.b  (A0),D1
        move.b  (A1),D2
        move.b  #$0F,D1
        move.b  #$05,D2
        add.b   D1,D2
        
        btst    #0,D2
        bne     fine
        
        cmpi    #15,D2
        blt     fine
        
        cmpi    #25,D2
        bgt     fine

salto   jmp     $8600 

fine    simhalt

        end     start



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
