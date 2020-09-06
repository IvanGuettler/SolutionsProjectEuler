% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
%
% Find the sum of all the primes below two million.

clear all; close all; clc

LIM   =2*1000*1000;
Suma  =0;
Option=2; % 1: brute force (very slow)
          % 2: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes (117.934 sec/  2020-09-06 ThinkPad laptop)

tic

if (Option==1);

PNs  =1;
Num  =1;
PN(1)=1;

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
                PN(PNs)  =Num;
                PNs      =PNs+1;
                if (mod(PNs,100)==0);
                    disp(['----->',num2str(PNs),'.  ------->',num2str(Num)])
                end
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

end %Option=1 brute force

%-------------------------------------------------------------------------------

if (Option==2) % https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

    A(1:LIM)=1;
    A(1)    =0;
    LIM2=floor(sqrt(LIM));

    for i=[2:LIM2];
        VEKTOR=[0:LIM];
        RASPON=VEKTOR.*i+i^2; CLEAN=find(RASPON(:)<=LIM); RASPON=RASPON(CLEAN);
        if (A(i)==1);
            for j=[RASPON]
              A(j)=0;
            end % j
        end     % if
    end         % i

end
Suma=sum(find(A==1));
disp(['-------------->',num2str(Suma)])

%-------------------------------------------------------------------------------

toc
