clear all
clc
%sampling theorem is verified (fs > 2f)
f = 40; tp = 1 / f; %freq and time period
fs = 100; ts = 1 / fs; %sampling freq and time period
t = 0:ts:10*tp;
x = sin(2*pi*f*t)
subplot(2,1,1)
stem(t,x)
plot(t,x)
title('Sine Function (Sampling Theorem Verified)')
xlabel('Time period')
ylabel('Voltage')
grid on
%sampling theorem is not verified (fs < 2f)
f = 140; tp = 1 / f; %freq and time period
fs = 100; ts = 1 / fs; %sampling freq and time period
t = 0:ts:30*tp;
x = sin(2*pi*f*t)
subplot(2,1,2)
stem(t,x)
plot(t,x)
title('Sine Function (Sampling Theorem not Verified)')
xlabel('Time period')
ylabel('Voltage')
grid on