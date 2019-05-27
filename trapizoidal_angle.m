clc
clear all
close all

x1=0;y1=0;z1=0;
x2=0;y2=1;z2=0;
x3=1;y3=1;z3=0;
x4=2;y4=0;z4=0;

plot3(x1,y1,z1,'or',x2,y2,z2,'or',x3,y3,z3,'or',x4,y4,z4,'or')

v1=[x1,x2];
v2=[y1,y2];
v3=[z1,z2];
f = line(v1,v2,v3);

v1=[x2,x3];
v2=[y2,y3];
v3=[z2,z3];
f = line(v1,v2,v3);

v1=[x3,x4];
v2=[y3,y4];
v3=[z3,z4];
f = line(v1,v2,v3);

v1=[x4,x1];
v2=[y4,y1];
v3=[z4,z1];
f = line(v1,v2,v3);
