clc;
clear all;
num=[25]
den=[1 5 25]
sys1=tf(num,den)
P1= pole(sys1)
Z1= zero(sys1)
r=roots(den)
ltiview(sys1)
num1=[25 50]
sys2= tf(num1,den)
Z2 = zero(sys2)
ltiview(sys2)
num2=[25 100]
sys3=tf(num2,den)
Z3 = zero(sys3)
ltiview(sys3)
ltiview(sys1,sys2,sys3)
