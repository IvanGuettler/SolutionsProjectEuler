% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
%
% Find the sum of all the primes below two million.

clear all; close all; clc

LIM  =2*1000*1000;
LIM=10;
PNs  =1;
Num  =1;
PN(1)=1;
Suma =0;

tic

while Num<LIM;

      New=1;

      while (New==1)

          Num=Num+1;

          if (PNs==1);
            Raspon=[2:Num];
          else
            Raspon=[PN(:)' (PN(end)+1):Num];
          end

          for dummy=[Raspon];

            if (mod(Num,dummy)>0);
                New=1;
            else

              if (dummy==Num);
                disp(['----->',num2str(PNs),'.  ------->',num2str(Num)])
                PN(PNs)  =Num;
                PNs      =PNs+1;
                Suma     =Suma+Num;
                if (Num>LIM);
                    Suma=Suma-Num;
                end
                New      =0;
                break;
              else;
                break;
              end   %if  did we find the prime number?

            end     %if  did we test if the number can be factorized?

          end       %for did run all over the range from 2 to the number we are testing?

      end           %while

end

disp(['-------------->',num2str(Suma)])

toc
