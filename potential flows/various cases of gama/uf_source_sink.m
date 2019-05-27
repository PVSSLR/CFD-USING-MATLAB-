clc
clear all
close all

%a source and sink in a uniform flow
U = 1;
L = 1;%sink strength
M = -1; %source strength
%GRID
x = -2:0.02:2;
y = -2:0.02:2;

for m = 1:length(x);
     for n = 1:length(y);
         xx(m,n) = x(m);
         yy(m,n) = y(n);
         % velocity potential function
         Z = (M/(4*pi))*log(x(m)^2+y(n)^2);
         W = (L/(4*pi))*log(x(m)^2+y(n)^2);
         I = (M/(2*pi))*atan(y(n)/x(m));
         O = (L/(2*pi))*atan(y(n)/x(m));
         phi_source(m,n) = U*x(m)+Z+W;
         %stream function
         psi_source(m,n) = U*y(n)+I+O;
     end
end
%plotting syntax

figure(1)
%psi-phi mesh
%equipotential lines
contour(xx,yy,phi_source,[-2:0.05:2],'r')
hold on
%streamlines
contour(xx,yy,psi_source,[-2:0.05:2],'k')

figure(2)
%streamlines
contour(xx,yy,psi_source,[-2:0.05:2],'k')
         
figure(3)
%stream surfaces
contourf(xx,yy,psi_source,[-2:0.05:2])

