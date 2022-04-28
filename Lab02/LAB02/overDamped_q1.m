%overdamped
clear all
clc
sys = tf([25],[1 100 25])
subplot(3,1,1)
impulse(sys)
subplot(3,1,2)
step(sys)
subplot(3,1,3)
pzmap(sys)