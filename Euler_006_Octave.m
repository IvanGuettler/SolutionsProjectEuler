% The sum of the squares of the first ten natural numbers is 385.

% The square of the sum of the first ten natural numbers is 3025.

% Hence the difference between the sum of the squares of the first ten natural
% numbers and the square of the sum is 2640.

% Find the difference between the sum of the squares of the first one hundred
% natural numbers and the square of the sum.

clear all; close all; clc

N=100;

suma1=sum([1:1:N].^2);
suma2=(sum([1:1:N]))^2;
disp(['-------->',num2str(suma2-suma1)])
