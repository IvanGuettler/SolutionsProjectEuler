% Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

clear all; close all; clc

A=load('./input_Euler_013_Octave.txt');

B=A/10^12;

C=sum(B);

D=floor(C*10^10);
