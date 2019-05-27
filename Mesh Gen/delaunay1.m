clc
clear all
close all

[x,y] = PointSet;

tr = delaunay(x,y);
triplot(tr,x,y,'k')
hold on 
plot(x,y,'or')
axis equal