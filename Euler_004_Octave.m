%A palindromic number reads the same both ways. The largest palindrome made from
% the product of two 2-digit numbers is 9009 = 91 × 99.

%Find the largest palindrome made from the product of two 3-digit numbers.

clear all; close all; clc

largest=100*100;

for A=[900:999];
A
  for B=[900:999];

        C   =A*B;
        temp=C;
        b   =0;

        while temp>0
          b   =b+1;
          z(b)=mod(temp,10);
          temp=floor(temp/10);
        end

        palindrome=0;
        for d=[1:(floor(b/2)+1)];
              if (z(d)==z(b-d+1));
                palindrome=1;
              else
                palindrome=0;
                break
              end %if
        end       %for

        if (palindrome==1);
            if (C>largest);
              largest=C;
              disp(['--------------->',num2str(largest)])
            end
        end

        %clear z b temp

  end
end
