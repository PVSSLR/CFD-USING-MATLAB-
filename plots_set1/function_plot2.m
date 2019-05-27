clc
clear all 
close all

figure
ezplot(@(x,y)y.^2-x.^2+4,[-3 3 -3 3]) 
hold on 
ezplot(@(x,y)y.^2-x.^2,[-3 3 -3 3])
ezplot(@(x,y)y.^2-x.^2-2,[-3 3 -3 3])
ezplot(@(x,y)y.^2-x.^2-4,[-3 3 -3 3])
hold off

grid on

legend('c =-4','c=0','c=2','c=4')
title('y^2-x^2-c=0 for c = [-4 0 2 4]')