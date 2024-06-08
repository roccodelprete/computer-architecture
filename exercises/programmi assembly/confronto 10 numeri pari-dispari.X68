*------------------------------------------------------------------------------------------------------------
* Title      :  Confronto tra 10 numeri pari/dispari
* Written by :
* Date       :
* Description:  Confronto di 10 elementi di un vettore e definizione di quali sono pari e quali sono dispari
*------------------------------------------------------------------------------------------------------------
        ORG    $1000
START:  lea    arr,A0
        lea    arrPari,A1
        lea    arrD0xcispari,A2
        move   #len-1,D3

loop    move   (A0)+,D1
        btst   #0,D1
        bne    disp
        
pari    add    #1,lenPari
        move   D1,(A1)+
        jmp    test
        
disp    add    #1,lenDispari
        move   D1,(A2)+

test    dbra   D3,loop
        
        simhalt
        
        org $8800
arr     dc.w    1,2,3,4,5,6,7,8,9,10
arrPari ds.w    10
arrDispari ds.w 10
len     equ     10
lenPari ds.w    1
lenDispari ds.w 1
    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
