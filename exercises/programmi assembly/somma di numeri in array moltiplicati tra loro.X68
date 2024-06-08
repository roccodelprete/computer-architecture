*-----------------------------------------------------------
* Title      : Somma di numeri in array moltiplicati tra loro
* Written by :
* Date       : 25/11/2021
* Description: sum=0;
              *for(j=5 to 19)
                *sum=sum+x[j]*y[j]
              *end for
*-----------------------------------------------------------
        ORG    $1000
START:  clr    D2   *rgistro con somma
        clr    D4   *registro indice
        lea    x,A0
        lea    y,A1     
        move   #len-1,D3
 
loop    move   10(A0,D4),D1 *D1=x[j]
        mulu   10(A1,D4),D1 *x[j]*y[j]
        add    D1,D2        *sum=sum+x[j]*y[j]
        add    #2,D4        *j++
        
        dbra   D3,loop
        move   D2,sum
        simhalt
        
        org    $8800
x       dc     1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
y       dc     1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
len     equ    15
sum     ds     2
        end    START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
