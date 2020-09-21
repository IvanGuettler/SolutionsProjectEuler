% The following iterative sequence is defined for the set of positive integers:
%
% n → n/2 (n is even)
% n → 3n + 1 (n is odd)
%
% Using the rule above and starting with 13, we generate the following sequence:
%
% 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
% It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
% Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
%
% Which starting number, under one million, produces the longest chain?
%
% NOTE: Once the chain starts the terms are allowed to go above one million.

clear all; close all; clc

tic

limit=1000*1000;
Max=1;
MaxNumber=1;
nTerms=nan(limit,1);

for n=[1:limit]
  if (mod(n,1000)==0);
      disp(['Analiziram...........',num2str(n)]);
  end
  NNNNNN=n;
  nTerms(n)=1;
  Condition=0;

  while Condition<1;
    if (mod(NNNNNN,2)==0);
        NNNNNN=NNNNNN/2;
        nTerms(n)=nTerms(n)+1;
        %disp(num2str(NNNNNN));
    else
        NNNNNN=3*NNNNNN+1;
        nTerms(n)=nTerms(n)+1;
        %disp(num2str(NNNNNN));
    end %even or odd

    if (NNNNNN<n);
      nTerms(n)=nTerms(n)+nTerms(NNNNNN);
      if (nTerms(n)>Max)
        Max=nTerms(n);
        MaxNumber=n;
      end
      Condition=1;
    end %NNNNNN<n

    if (NNNNNN==1);
        %disp("---------- The end!----------------")
        %disp(["Number of terms: ",num2str(nTerms)])
        if (nTerms(n)>Max)
          Max=nTerms(n);
          MaxNumber=n;
        end   %if Max
        Condition=1;
    end       %NNNNNN==1
  end         %condition

end

toc
