%If we list all the natural numbers below 10 that are multiples of 3 or 5,
%we get 3, 5, 6 and 9. The sum of these multiples is 23.
%Find the sum of all the multiples of 3 or 5 below 1000.

M1=3;
M2=5;
KRAJ=1000;

SUMA=0;

for i=[1:(KRAJ-1)];

    if or( (mod(i,M1)==0), ( mod(i,M2)==0) )
        SUMA=SUMA+i;
        disp(i)
    end

endfor

disp(SUMA);
