clc
clear all
x=dsolve('Dx=-10*x')
x=dsolve('D2x=-25*x', 'x(0)=5','Dx(0)=0')
x=dsolve('D2x=-10*Dx-25*x', 'x(0)=5','Dx(0)=0')