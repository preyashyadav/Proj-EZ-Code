%create a cosine/sine wave with f = 50 Hz
clc
clear all
f=50; tp=1/f;
fs=1000; ts=1/fs ;
% signal frequency in continuous time
% time period
% sampling frequency
% sampling Time
t=0:ts:3*tp;
x=cos(2*pi*f*t)
subplot(2,1,1)
plot(t,x)
title('50 Hz Cosine Wave')
xlabel('Time (s)');
ylabel('Voltage (V)');
t=0:ts:3*tp;
