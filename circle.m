function [X,Y] = circle(r);

theta=linspace(0,2*pi,5);
x=r*cos(theta);
y=r*sin(theta);
plot(x,y);
title('circle');
axis equal;


