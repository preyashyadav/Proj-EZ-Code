%effect on damping on the system response and poles 
clear all
clc
%first order system
sys = tf([0.2506],[1 0.2506])
subplot(5,3,13)
impulse(sys)
subplot(5,3,14)
step(sys)
subplot(5,3,15)
pzmap(sys)