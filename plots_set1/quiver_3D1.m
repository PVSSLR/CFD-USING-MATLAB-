clc
clear all
close all
%define all x,y,z
[x,y,z] = meshgrid(-0.8:0.2:0.8,...
                   -0.8:0.2:0.8,...
                   -0.8:0.2:0.8);
%calculate homogeneous trubulence values at each (x,y,z)

u =  sin(pi*x).*cos(pi*y).*cos(pi*z);
v = -cos(pi*x).*sin(pi*y).*cos(pi*z);
w =  sqrt(2/3)*cos(pi*x).*cos(pi*y).*sin(pi*z);

quiver3(x,y,z,u,v,w)

axis([-1 1 -1 1 -1 1])