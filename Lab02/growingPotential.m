% % x(t) = e^at cos wt clc
clear all 
f=50;
tp=1/f;
samples=20;
t=0:tp/samples:5*tp;
a=10
x=exp(a*t).*cos(2*pi*f*t)
subplot(2,1,1) 
plot(t,x)
title('Growing Exponential')
xlabel('Time(s)');
ylabel('Voltage (V)');