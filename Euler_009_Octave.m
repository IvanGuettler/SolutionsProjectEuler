% A Pythagorean triplet is a set of three natural numbers,
% a < b < c, for which,
%
% a^2 + b^2 = c^2
%
% For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.
%
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.

test=0;

while test==0

    for a=[1:1000];
    for b=[a:1000];

        c=sqrt(a^2+b^2);
        if (a+b+c==1000);
            test=1;
            break
        end
    end
    if (test==1);
        disp(['------------->',num2str(a*b*c)])
        break
    end
    end
end
