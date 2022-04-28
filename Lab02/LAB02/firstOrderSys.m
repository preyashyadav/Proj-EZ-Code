%first order system
clear all
clc
sys = tf([0.2506],[1 0.2506])
subplot(3,1,1)
impulse(sys)
subplot(3,1,2)
step(sys)
subplot(3,1,3)
pzmap(sys)