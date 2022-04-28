% identical discrete time signals from
% continuous time signals of frequency 50 and 550 Hz
% sampled with a sampling frequency of 1kHz
clc
clear all
%sampling theorem (fs>2fc) satisfied
f=40; tp=1/f;
fs=100;
ts=1/fs ;
% signal frequency in continuous time
% time period
% sampling frequency
% sampling Time
t=0:ts:10*tp;
x=sin(2*pi*f*t)
subplot(2,1,1)
stem(t,x)
title('fc = 40 Hz and fs = 1 kHz')
xlabel('Time (s)');
ylabel('Voltage (V)');
