% Starting in the top left corner of a 2×2 grid, and only being able to move to
% the right and down, there are exactly 6 routes to the bottom right corner.

% How many such routes are there through a 20×20 grid?

clear all; close all; clc
tic

% Implement this: https://www.iarcs.org.in/inoi/online-study-material/topics/dp-grid-paths.php


% Grid:
Nx=2;  %N of cells in X direction
Ny=2;  %N of cells in Y direction

NcX=Nx+1; %N of points in X direction
NcY=Ny+1; %N of points in Y direction

Path=zeros(NcX+1,NcY+1);

Path(:  ,1)=1;
Path(1,:  )=1;

for c = [1:(NcX*NcY)+1];

  for i=[1:NcX+1];
    Path(i,1) = 1;
    for j=[1:NcY+1];
      Path(1,j) = 1;
      if (i+j-2==c-1)
          Path(i,j)=Path(i-1,j)+Path(i,j-1);
      end

    end
  end

end

toc
