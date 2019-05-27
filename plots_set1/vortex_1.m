clc
clear all
close all


zz = 0:pi/50:4*pi;
yy = zz.*sin(zz);
xx = zz.*cos(zz);


px = [0,diff(xx)];
py = [0,diff(yy)];
pz = [0,diff(zz)];

plot3(xx,yy,zz)
hold all

quiver3(xx(1:5:end),...
        yy(1:5:end),...
        zz(1:5:end),...
        px(1:5:end),...
        py(1:5:end),...
        pz(1:5:end));
hold off
    
    