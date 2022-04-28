%Blocks connected in parallel
clc
clear all
num1 = 1;
den1 =[1 2];
num2 =[1 3];
den2 =[1 10];
[nump, denp] = parallel(num1, den1, num2, den2);
disp("Blocks connected in parallel")
printsys(nump, denp);
