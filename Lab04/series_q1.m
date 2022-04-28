clc
clear all
numg=[1 1];
deng = [500 0 0];
numh=[1 1]; 
denh = [1 2]
[num, den]= series(numg,deng,numh,denh);
disp("Blocks Connected in series")
printsys (num,den)