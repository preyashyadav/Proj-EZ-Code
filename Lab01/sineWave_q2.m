%sine & wave figure
f = 50; 
tp = 1 / f;
samples = 20;
t = 0:tp/samples:5*tp;
x = cos(2*pi*f*t);
y = sin(2*pi*f*t);
plot3(t,x,y)
title('Sine & Cos')
xlabel('Time (s)')
ylabel('Cos')
zlabel('Sin')
grid on