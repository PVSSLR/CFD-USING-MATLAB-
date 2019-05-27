clc
clear all
close all
%nonlifting 
U = 1; R = 1;
xlist = -2:0.01:2;
ylist = -2:0.01:2;
[x,y] = meshgrid(xlist,ylist)
z = x+1i*y;
W = U*(z+R^2./z);
contourf(xlist,ylist,imag(W),-3:0.25:3);
axis square