f=140;
tp=1/f;
fs=100;
ts=1/fs ;
% signal frequency in continuous time
% time period
% sampling frequency
% sampling Time
t=0:ts:30*tp;
x=sin(2*pi*f*t)
subplot(2,1,2)
stem(t,x)
title('fc = 440 Hz and fs = 1 kHz')
xlabel('Time (s)');
ylabel('Voltage (V)');
grid on
