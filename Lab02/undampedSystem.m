%effect on damping on the system response and poles 
%second order system
clear all
clc
% undamped system
sys = tf([25],[1 0 25])
subplot(5,3,1)
impulse(sys)
subplot(5,3,2)
step(sys)
subplot(5,3,3)
pzmap(sys)