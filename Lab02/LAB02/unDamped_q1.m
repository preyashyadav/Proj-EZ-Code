clear all
clc
% undamped system
sys = tf([25],[1 0 25])
subplot(3,1,1)
impulse(sys)
subplot(3,1,2)
step(sys)
subplot(3,1,3)
pzmap(sys)