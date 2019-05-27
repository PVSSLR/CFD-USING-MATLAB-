clc
clear all
close all

%NODE
M = 40;
%INNER RADIUS
r1 = 1;
r2 = 1.5*r1;
r3 = 1.5*r2;
r4 = 1.5*r3;
r5 = 1.5*r4;
r6 = 1.5*r5;

theta(1) = 0;

for i = 1:M+1
    dtheta = 2*pi/M;
    theta(i+1) = theta(i)+dtheta;
    theta(i) = theta(i+1);
    x1(i) = r1*cos(theta(i));
    y1(i) = r1*sin(theta(i));
    x2(i) = r2*cos(theta(i));
    y2(i) = r2*sin(theta(i));
    x3(i) = r3*cos(theta(i));
    y3(i) = r3*sin(theta(i));
    x4(i) = r4*cos(theta(i));
    y4(i) = r4*sin(theta(i));
    x5(i) = r5*cos(theta(i));
    y5(i) = r5*sin(theta(i));
    x6(i) = r6*cos(theta(i));
    y6(i) = r6*sin(theta(i));
    
    
end

patch(x6,y6,'y')
% hold on
patch(x3,y3,'g')

for i = 1:M
    v1= [x1(i+1),x1(i)];
    v2= [y1(i+1),y1(i)];
  f = line(v1,v2);
  
  v1= [x2(i+1),x2(i)];
    v2= [y2(i+1),y2(i)];
  f = line(v1,v2);
  
  v1= [x3(i+1),x3(i)];
    v2= [y3(i+1),y3(i)];
  f = line(v1,v2);
  
  v1= [x4(i+1),x4(i)];
    v2= [y4(i+1),y4(i)];
  f = line(v1,v2);
  
  v1= [x5(i+1),x5(i)];
    v2= [y5(i+1),y5(i)];
  f = line(v1,v2);
  
  v1= [x6(i+1),x6(i)];
    v2= [y6(i+1),y6(i)];
  f = line(v1,v2);
  
end
for i = 1:M
    v1= [x1(i),x2(i)];
    v2= [y1(i),y2(i)];
  f = line(v1,v2);
  
  v1= [x2(i),x3(i)];
    v2= [y2(i),y3(i)];
  f = line(v1,v2);
  
  v1= [x3(i),x4(i)];
    v2= [y3(i),y4(i)];
  f = line(v1,v2);
  
  v1= [x4(i),x5(i)];
    v2= [y4(i),y5(i)];
  f = line(v1,v2);
  
  v1= [x5(i),x6(i)];
    v2= [y5(i),y6(i)];
  f = line(v1,v2);
  
  v1= [x6(i),x1(i)];
    v2= [y6(i),y1(i)];
  f = line(v1,v2);
  
end


hold on
plot(x1,y1,'bo',x2,y2,'bo',x3,y3,'bo',x4,y4,'bo',x5,y5,'bo',x6,y6,'bo','MarkerFaceColor','w','MarkerEdgeColor','r',...
                 'Markersize',4)
             
% plot(x1,y1,'bo','MarkerFaceColor','w','MarkerEdgeColor','r',...
%                  'Markersize',4)
%              
% plot(x2,y2,'bo','MarkerFaceColor','w','MarkerEdgeColor','r',...
%                 'Markersize',4)
% plot(x3,y3,'bo','MarkerFaceColor','w','MarkerEdgeColor','r',...
%                  'Markersize',4)             
% plot(x4,y4,'bo','MarkerFaceColor','w','MarkerEdgeColor','r',...
%                  'Markersize',4)
% plot(x5,y5,'bo','MarkerFaceColor','w','MarkerEdgeColor','r',...
%                  'Markersize',4)
% plot(x6,y6,'bo','MarkerFaceColor','w','MarkerEdgeColor','r',...
%                  'Markersize',4)
             
             
             
             
             


 