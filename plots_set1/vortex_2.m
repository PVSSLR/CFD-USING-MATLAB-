clc
clear all
close all

x = [];
y = [];
z = [];
px = [];
py = [];
pz = [];

figure(1)

for i = 1:100
    a = rand;
    b = rand;
    zz{i} = 0:pi/50:10*pi;
    yy{i} = a*zz{i}.*sin(zz{i});
    xx{i} = b*zz{i}.*cos(zz{i});
    px{i} = [0,diff(xx{i})];
    py{i} = [0,diff(yy{i})];
    pz{i} = [0,diff(zz{i})];
    
    plot3(xx{i},yy{i},zz{i})
    hold all
end
hold off




