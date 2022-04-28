%effect on damping on the system response and poles 
%second order system
clear all
clc
%overdamped
sys = tf([25],[1 100 25])
subplot(5,3,10)
impulse(sys)
subplot(5,3,11)
step(sys)
subplot(5,3,12)
pzmap(sys)