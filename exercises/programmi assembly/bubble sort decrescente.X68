*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:  lea     arr,A0
        clr     D2
        move    #len-2,D3
        
loop    move    (A0),D0
        move    2(A0),D1
        cmp     D0,D1
        ble     nsw
        move    D0,2(A0)
        move    D1,(A0)
        move    #1,D2

nsw     add     #2,A0
        dbra    D3,loop
        
        tst     D2
        bne     start
        SIMHALT             

    org     $8800
arr dc.w    17,11,10,18,5
len equ     5
    END    START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
