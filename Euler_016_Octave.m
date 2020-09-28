% 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
%
% What is the sum of the digits of the number 2^1000

clear all; close all; clc; tic
Nmin=71;
Nmax=72;

rj=nan(1:(Nmax-Nmin)+1,1)
t=0;

for N=[Nmin:Nmax];
  A=2.0^N;
  disp([''])
  disp(['  N------------------------------------->',num2str(N)])
  disp(['2^N--------------------->',num2str(A)])
    S=0.0;
    Test=0.0;
    t=t+1;

    while Test<1
      B=mod(A,10.0);
      disp(['   --->',num2str(B)])
      S=S+B; clear B
      A=floor(A/10.0);
      if (A==0.0); Test=1; end
    end
    rj(t)=S;
    disp(['  S------------>',num2str(S)])

    Alt=2.0^N;
    Ndigits=dec2base(Alt,10) - '0';
    disp(['a.S------------>',num2str(sum(Ndigits))])
    clear Alt Ndigits
end

toc
