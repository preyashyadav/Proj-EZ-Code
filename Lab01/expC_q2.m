%%
clear all
clc
f = 50; tp = 1 / f; %freq and time period
fs = 1000; ts = 1 / fs; %sampling freq and time period
t = 0:ts:10*tp;
x = exp(-i*2*pi*f*t)
plot(t,x)
title('Exponential Function')
xlabel('Time period')
ylabel('Voltage')
grid on