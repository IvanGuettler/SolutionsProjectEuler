% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
% we can see that the 6th prime is 13.

% What is the 10 001st prime number?
clear all; close all; clc

N  =10001;
PNs=1;
Num=1;

while PNs<(N+1);

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
                New=0;
                break;
              else;
                break;
              end   %if  did we find the prime number?

            end     %if  did we test if the number can be factorized?

          end       %for did run all over the range from 2 to the number we are testing?

      end           %while

end %did we find N primer numbers?
