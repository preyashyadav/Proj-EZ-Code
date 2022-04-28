%effect on damping on the system response and poles 
%second order system
clear all
clc
%critically damped
sys = tf([25],[1 10 25])
subplot(5,3,7)
impulse(sys)
subplot(5,3,8)
step(sys)
subplot(5,3,9)
pzmap(sys)