% 2520 is the smallest number that can be divided by each of the numbers from
% 1 to 10 without any remainder.

% What is the smallest positive number that is evenly divisible by all of the
% numbers from 1 to 20?

close all; clear all; clc

tic

Test=1;
Larg=19;
Broj=0;

while (Test>0);

  Broj=Broj+19*17*13*11;        %taking into account prime numbers > 10

  for divi=[20:-1:10];          %skipping 1-9 because the are involved in 10-20
    if (mod(Broj,divi)==0);
        Test=0;
    else
        Test=1;
        break
    end %if
  end   %for

end     %while

disp(['----->',num2str(Broj)]);

toc
