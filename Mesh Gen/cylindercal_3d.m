clc
clear all
close all

tic

M = 40; 
L = 10;

r1 = 1;
r2 = 1.5*r1;
r3 = 1.5*r2;
r4 = 1.5*r3;
r5 = 1.5*r4;
r6 = 1.5*r5;

theta(1) = 0;
T = -1;
T0 = 1;

for j = 1:L+1
    T= T+T0
for i = 1:M+1
   
    dtheta = 2*pi/M;
    theta(i+1) = theta(i)+dtheta;
%     theta(i) = theta(i+1);
    x1(i,j) = r1*cos(theta(i));
    y1(i,j) = r1*sin(theta(i));
    z1(i,j) = T;
    x2(i,j) = r2*cos(theta(i));
    y2(i,j) = r2*sin(theta(i));
    z2(i,j) = T;
    x3(i,j) = r3*cos(theta(i));
    y3(i,j) = r3*sin(theta(i));
    z3(i,j) = T;
    x4(i,j) = r4*cos(theta(i));
    y4(i,j) = r4*sin(theta(i));
    z4(i,j) = T;
    x5(i,j) = r5*cos(theta(i));
    y5(i,j) = r5*sin(theta(i));
    z5(i,j) = T;
    x6(i,j) = r6*cos(theta(i));
    y6(i,j) = r6*sin(theta(i));
    z6(i,j) = T;
    
    
end
end

for j = 1:L
    for i= 1:M
        v1 = [x1(i+1,j),x1(i,j)];
        v2 = [y1(i+1,j),y1(i,j)];
        v3 = [z1(i+1,j),z1(i,j)];
        f = line(v1,v2,v3);
        
         v1 = [x2(i+1,j),x2(i,j)];
        v2 = [y2(i+1,j),y2(i,j)];
        v3 = [z2(i+1,j),z2(i,j)];
        f = line(v1,v2,v3);
        
         v1 = [x3(i+1,j),x3(i,j)];
        v2 = [y3(i+1,j),y3(i,j)];
        v3 = [z3(i+1,j),z3(i,j)];
        f = line(v1,v2,v3);
        
         v1 = [x4(i+1,j),x4(i,j)];
        v2 = [y4(i+1,j),y4(i,j)];
        v3 = [z4(i+1,j),z4(i,j)];
         f = line(v1,v2,v3);
        
         v1 = [x5(i+1,j),x5(i,j)];
        v2 = [y5(i+1,j),y5(i,j)];
        v3 = [z5(i+1,j),z5(i,j)];
        f = line(v1,v2,v3);
        
         v1 = [x6(i+1,j),x6(i,j)];
        v2 = [y6(i+1,j),y6(i,j)];
        v3 = [z6(i+1,j),z6(i,j)];
        f = line(v1,v2,v3);

        v1 = [x1(i,j),x2(i,j)];
        v2 = [y1(i,j),y2(i,j)];
        v3 = [z1(i,j),z2(i,j)];
         f = line(v1,v2,v3);
        
         v1 = [x2(i,j),x3(i,j)];
        v2 = [y2(i,j),y3(i,j)];
        v3 = [z2(i,j),z3(i,j)];
        f = line(v1,v2,v3);
        
         v1 = [x3(i,j),x4(i,j)];
        v2 = [y3(i,j),y4(i,j)];
        v3 = [z3(i,j),z4(i,j)];
        f = line(v1,v2,v3);
        
         v1 = [x4(i,j),x5(i,j)];
        v2 = [y4(i,j),y5(i,j)];
        v3 = [z4(i,j),z5(i,j)];
        f = line(v1,v2,v3);
        
         v1 = [x5(i,j),x6(i,j)];
        v2 = [y5(i,j),y6(i,j)];
        v3 = [z5(i,j),z6(i,j)];
        f = line(v1,v2,v3);
       
         v1 = [x6(i,j),x1(i,j)];
        v2 = [y6(i,j),y1(i,j)];
        v3 = [z6(i,j),z6(i,j)];
        f = line(v1,v2,v3);
 end
end
hold on
 for j = 1:L-1
for i= 1:M
        v1 = [x1(i,j),x1(i,j+1)];
        v2 = [y1(i,j),y1(i,j+1)];
        v3 = [z1(i,j),z1(i,j+1)];
        f = line(v1,v2,v3);
        
         v1 = [x2(i,j),x2(i,j+1)];
        v2 = [y2(i,j),y2(i,j+1)];
        v3 = [z2(i,j),z2(i,j+1)];
        f = line(v1,v2,v3);
        
         v1 = [x3(i,j),x3(i,j+1)];
        v2 = [y3(i,j),y3(i,j+1)];
        v3 = [z3(i,j),z3(i,j+1)];
        f = line(v1,v2,v3);
        
         v1 = [x4(i,j),x4(i,j+1)];
        v2 = [y4(i,j),y4(i,j+1)];
        v3 = [z4(i+1,j),z4(i,j+1)];
         f = line(v1,v2,v3);
        
         v1 = [x5(i,j),x5(i,j+1)];
        v2 = [y5(i,j),y5(i,j+1)];
        v3 = [z5(i,j),z5(i,j+1)];
        f = line(v1,v2,v3);
        
         v1 = [x6(i,j),x6(i,j+1)];
        v2 = [y6(i,j),y6(i,j+1)];
        v3 = [z6(i,j),z6(i,j+1)];
        f = line(v1,v2,v3);
end
 end
toc

view(45,180)



