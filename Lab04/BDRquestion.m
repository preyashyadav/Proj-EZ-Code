%Block diagram reduction question
clc
clear all
n1=1;d1=1;
n2=1;d2=[1 1];
n3=1;d3=[1 2];
n4=1;d4=[1 3];
n5=4;d5=1;
n6=8;d6=1;
n7=12;d7=1;
nblocks=7;
blkbuild
q = [ 1 0 0 0 0
    2 1 -5 0 0
3 2 -6 0 0
4 2 -6 3 -7
5 3 0 0 0
6 3 0 0 0
7 4 0 0 0 ]
iu = 1;
iy = 4;
[A,B,C,D]=connect(a,b,c,d,q,iu,iy);
sys=ss(A,B,C,D);
sys=tf (sys)