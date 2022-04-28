clc;
clear all;
num=[25]
den=[1 5 25]
sys1=tf(num,den)
P1 = pole(sys1)
Z1 = zero(sys1)
r=roots(den)
ltiview(sys1)
a=poly([-2;r])
num1=num/1
sys2= tf(num1,a)
P2 = pole(sys2)
ltiview(sys2)
num2=num/1
a1=poly([-4;r])
sys3=tf(num2,a1)
P3 = pole(sys3)
ltiview(sys3)
ltiview(sys1,sys2,sys3)