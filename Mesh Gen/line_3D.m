clc
clear all
close all

x1=0;y1=1;z1=1;
x2=2;y2=2;z2=4;
plot3(x1,y1,z1,'or',x2,y2,z2,'or')

v1=[x1,x2];
v2=[y1,y2];
v3=[z1,z2];
f = line(v1,v2,v3);

