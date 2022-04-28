%steady state error
clc
clear all
% Type ZERO System
Gp0 = zpk([-2 -3],[-8 -9 -12],100)
Kp0 = dcgain(Gp0)
ssr_steps0 = 1/(1+Kp0)
Gv0 = zpk([0 -2 -3],[-8 -9 -12],100)
Kv0 = dcgain(Gv0)
ssr_ramp0 = 1/Kv0
Ga0 = zpk([0 0 -2 -3],[-8 -9 -12],100)
Ka0 = dcgain(Ga0)
ssr_parabolic0 = 1/Ka0
% Type ONE System
Gp1 = zpk([-2-3],[0-8-9-12],100)
Kp1 = dcgain(Gp1)
ssr_steps1 = 1/(1+Kp1)
Gv1 = zpk([0 -2 -3],[0 -8 -9 -12],100)
Kv1 = dcgain(Gv1)
ssr_ramp1 = 1/Kv1
Ga1 = zpk([0 0 -2 -3],[0 -8 -9 -12],100)
Ka1 = dcgain(Ga1)
ssr_parabolic1 = 1/Ka1
% Type TWO System
Gp2 = zpk([ -2-3],[0 0-8-9-12],100)
Kp2 = dcgain(Gp2)
ssr_steps2 = 1/(1+Kp2)
Gv2 = zpk([0-2-3],[0 0-8-9-12],100)
Kv2 = dcgain(Gv2)
ssr_ramp2 = 1/Kv2
Ga2 = zpk([0 0-2-3],[0 0-8-9-12],100)
Ka2 = dcgain(Ga2)
ssr_parabolic2 = 1/Ka2
%PLOT RESPONSES
G0=zpk( [ -2 -3], [ -8 -9 -12], 100)
G1=zpk( [-2 -3], [0 -8 -9 -12], 100)
G2=zpk( [ -2-3], [0 0-8-9 -12], 100)
%Figure
%%
% Type 0 system
sys0=feedback(tf(G0),1) ;
% step input
subplot (3, 3, 1) ;
t=0.0001:0.01:5;
u=t./t;
lsim(sys0,u,t);
% Ramp input
subplot(3,3,2);
t=0.0001:0.01:5;
u=t;
u(1:100)=0;
lsim(sys0,u,t);
% acceleration input
subplot(3,3,3);
t=0.0001:0.01:5;
u=t.*t/2; 
u(1:100)=0;
lsim(sys0,u,t);
%%
% Type 1 system
sys1=feedback(tf(G1),1);
% step input
subplot(3,3,4);
t=0.0001:0.01:5;
u=t./t;u(1:100)=0;
lsim(sys1,u,t);
% Ramp input
subplot(3,3,5);
t=0.0001:0.01:5;
u=t;
lsim(sys1,u,t);
% acceleration input
subplot(3,3,6);
t=0.0001:0.01:5;
u=t.*t/2;
lsim(sys1,u,t);
%%
% Type 2 system
sys2=feedback(tf(G2),1);
% step input
subplot(3,3,7);
t=0.0001:0.01:5;
u=t./t;
u(1:100)=0;
lsim(sys2,u,t);
% Ramp input
subplot(3,3,8);
t=0.0001:0.01:5;
u=t;
u(1:100)=0;
lsim(sys2,u,t);
% acceleration input
subplot(3,3,9);
t=0.0001:0.01:5;
u=t.*t/2;
lsim(sys2, u,t)
