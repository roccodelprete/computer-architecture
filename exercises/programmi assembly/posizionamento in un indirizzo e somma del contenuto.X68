*-------------------------------------------------------------------
* Title      : posizionamento in un indirizzo e somma del contenuto
* Written by :
* Date       : 02/12/2021
* Description: for i=1 to contenuto di $8400
                   *D2=D2+contenuto di $8200
*-----------------------------------------------------------
        org     $8800
start   move.l  #$8200,A0
        move.l  #$8400,A1
        move.b  (A1),D0     *contatore iterazione
        move.b  (A0),D1
        
        sub.b   #1,D0
        
loop    add.b   D1,D2

ciclo   dbra    D0,loop

fine    simhalt

        end     start


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
