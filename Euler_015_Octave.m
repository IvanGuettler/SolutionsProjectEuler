% Starting in the top left corner of a 2×2 grid, and only being able to move to
% the right and down, there are exactly 6 routes to the bottom right corner.

% How many such routes are there through a 20×20 grid?

clear all; close all; clc
tic

% Implement this: https://www.iarcs.org.in/inoi/online-study-material/topics/dp-grid-paths.php


% Grid:
Nx=20;  %N of cells in X direction
Ny=20;  %N of cells in Y direction

NcX=Nx+1; %N of points in X direction
NcY=Ny+1; %N of points in Y direction

Path=zeros(NcX,NcY);

for c = [2:(NcX*NcY)];

  for i=[2:NcX];
    Path(i,1) = 1;   %--->upper border
    for j=[2:NcY];
      Path(1,j) = 1; %--->left border
      if (i+j==c)
          Path(i,j)=Path(i-1,j)+Path(i,j-1);
      end

    end
  end

end

toc
