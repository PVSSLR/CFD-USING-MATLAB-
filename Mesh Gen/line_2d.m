clc
clear all
close all

x1=0;y1=0;
x2=1;y2=1;

plot(x1,y1,'or',x2,y2,'or')

v1 = [x1,x2];
v2 = [y1,y2];

f = line(v1,v2);
