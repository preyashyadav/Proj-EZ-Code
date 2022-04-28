clc
clear all
Gp0 = zpk([-2 -3],[-8 -9 -12],100)
Kp0 = dcgain(Gp0)
ssr_steps0 = 1/(1+Kp0)
Gv0 = zpk([0 -2 -3],[-8 -9 -12],100)
Kv0 = dcgain(Gv0)
ssr_ramp0 = 1/Kv0
Ga0 = zpk([0 0 -2 -3],[-8 -9 -12],100)
Ka0 = dcgain(Ga0)
ssr_parabolic0 = 1/Ka0

%PLOT RESPONSES
G0=zpk( [-2 -3], [-8 -9 -12], 100)


%Figure
% Type 0 system
sys0=feedback(tf(G0),1) ;
% step input
subplot (3, 3, 1) ;
t=0.0001:0.01:5;
u=t./t;
lsim(sys0,u,t);
%Ramp input
subplot(3,3,2);
t=0.0001:0.01:5;
u=t;u(1:100)=0;
lsim(sys0,u,t);
% acceleration input
subplot(3,3,3);
t=0.0001:0.01:5;
u=t.*t/2;
u(1:100)=0;
lsim(sys0,u,t);