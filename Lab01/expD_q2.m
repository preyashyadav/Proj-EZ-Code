clear all
clc
f = 50; tp = 1 / f;
samples = 20;
t = 0:tp/samples:5*tp;
x = sin(2*pi*f*t) ./ (2*pi*f*t)
subplot(2,1,1)
plot(t,x)
stem(t,x)
title('Sine Function')
xlabel('Time period')
ylabel('Voltage')
grid on
x = cos(2*pi*f*t) ./ (2*pi*f*t)
subplot(2,1,2)
plot(t,x)
stem(t,x)
title('Cos Function')
xlabel('Time period')
ylabel('Voltage')
grid on
