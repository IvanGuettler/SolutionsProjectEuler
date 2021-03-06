% The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

% 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

% Let us list the factors of the first seven triangle numbers:

% 1: 1
% 3: 1,3
% 6: 1,2,3,6
% 10: 1,2,5,10
% 15: 1,3,5,15
% 21: 1,3,7,21
% 28: 1,2,4,7,14,28

%   We can see that 28 is the first triangle number to have over five divisors.

%   What is the value of the first triangle number to have over five hundred divisors?

clear all; close all; clc
tic

option=3 %1 Too slow: naive approach
         %2 Still too slow: https://www.geeksforgeeks.org/first-triangular-number-whose-number-of-divisors-exceeds-n
	       %3 https://mathschallenge.net/library/number/number_of_divisors

if (option==1);

              test=0;
generatingTriangle=1;

                NaturalNumber =1;
 TriangleNumber(NaturalNumber)=1;

	while (test==0)

		while (generatingTriangle==1)
			%-----------------------------
			%Generate next triangle number
			%-----------------------------
			NaturalNumber     =NaturalNumber+1;
			TriangleNumber(NaturalNumber)=TriangleNumber(NaturalNumber-1)+NaturalNumber;
			disp(['--------------------------->Triangle number:',num2str(TriangleNumber(NaturalNumber))]);


			%-----------------------------
			%Find all factors of the triangle number
			%-----------------------------
			Fact=0;
			for Factor=[1:TriangleNumber(NaturalNumber)];
				if (mod(TriangleNumber(NaturalNumber),Factor)==0);
				Fact=Fact+1;
				end
			end


			%-----------------------------
			%Print triangle number factors
			%-----------------------------
			%disp('----------------->Factors');
			TriangleNumberFactor{NaturalNumber,:}

			%-----------------------------
			%Print number of factors
			%-----------------------------
			disp(['----------------->Number of factors:',num2str(Fact)]);


			%-----------------------------
			%Stop everything
			%-----------------------------
			if (Fact>5);
				test              =1;
				generatingTriangle=0;
				disp(['----------------------------'])
				disp(['--------SOLUTION------------'])
				disp(['----------------------------'])
				TriangleNumber(NaturalNumber)
				break
			end
		end

	end

% Option 2
elseif (option==2);

              test=0;
generatingTriangle=1;

                NaturalNumber =1;
 TriangleNumber(NaturalNumber)=1;

	while (test==0)

		while (generatingTriangle==1)
			%-----------------------------
			%Generate next triangle number
			%-----------------------------
			NaturalNumber     =NaturalNumber+1;
			TriangleNumber(NaturalNumber)=(NaturalNumber+1)*NaturalNumber/2;
			%disp(['--------------------------->Triangle number:',num2str(TriangleNumber(NaturalNumber))]);

			%-----------------------------
			%Find all factors of the triangle number i.e. of the coprimes
			%-----------------------------
			Fact=1;

			if (mod(NaturalNumber,2)==0);
				A=(NaturalNumber/2);
				for Factor=[1:A];
					if (mod(A,Factor)==0);
						Fact=Fact+1;
					end
				end
				A=NaturalNumber+1;
				for Factor=[1:A];
					if (mod(A,Factor)==0);
						Fact=Fact+1;
					end
				end
			else
				A=NaturalNumber;
				for Factor=[1:A];
					if (mod(A,Factor)==0);
						Fact=Fact+1;
					end
				end
				A=(NaturalNumber+1)/2;
				for Factor=[1:A];
					if (mod(A,Factor)==0);
						Fact=Fact+1;
					end
				end

			end

			%-----------------------------
			%Stop everything
			%-----------------------------
			if (Fact>50);
				test              =1;
				generatingTriangle=0;
				disp(['----------------------------'])
				disp(['--------SOLUTION------------'])
				disp(['----------------------------'])
				TriangleNumber(NaturalNumber)
				break
			end
		end

	end

  % Option 3
  elseif (option==3);

                test=0;
  generatingTriangle=1;

                  NaturalNumber =1;
   TriangleNumber(NaturalNumber)=1;

  	while (test==0)

  		while (generatingTriangle==1)
  			%-----------------------------
  			%Generate next triangle number
  			%-----------------------------
  			NaturalNumber     =NaturalNumber+1;
  			TriangleNumber(NaturalNumber)=(NaturalNumber+1)*NaturalNumber/2;

  			%-----------------------------
  			%Find all factors of the triangle number i.e. of the coprimes
  			%-----------------------------
  			[F,N]=factor(TriangleNumber(NaturalNumber));
        % ---> https://mathschallenge.net/library/number/number_of_divisors
        % We begin by writing the number as a product of prime factors: n = paqbrc...
        % then the number of divisors, d(n) = (a+1)(b+1)(c+1)...
        Fact=prod(N(:)+1);

  			%-----------------------------
  			%Stop everything
  			%-----------------------------
  			if (Fact>500);
  				test              =1;
  				generatingTriangle=0;
  				disp(['----------------------------'])
  				disp(['--------SOLUTION------------'])
  				disp(['----------------------------'])
  				TriangleNumber(NaturalNumber)
  				break
  			end
  		end

  	end

end %options


toc

% Option 1
%   5 :  < 1  sec
%  50 :  ~31  sec
% 100 : ~167  sec
% 250 : too long  sec

% Option 2
%  https://www.geeksforgeeks.org/first-triangular-number-whose-number-of-divisors-exceeds-n/
%  inefficient still in my implementation

% Option 3
% 500 : 11.22 sec
