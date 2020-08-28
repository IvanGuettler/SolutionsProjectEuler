%The prime factors of 13195 are 5, 7, 13 and 29.
%
%What is the largest prime factor of the number 600 851 475 143 ?

clear all; close all; clc


 Number=600851475143;
%Number=13195;

%--------
%Easy way
%--------
Factrs=factor(Number);
disp(max(Factrs));


%--------
%Step by Step
%--------
Fctr    =2;
lastFctr=1;

while (Number>1);

    if (mod(Number,Fctr)==0);

      lastFctr=Fctr;
      disp(['----------->',num2str(lastFctr)])
      Number  =Number/Fctr;

      while (mod(Number,Fctr)==0);
        Number=Number/Fctr;
      end %while

    end %if
    Fctr=Fctr+1;

end %while
disp(lastFctr)
