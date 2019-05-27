clc
clear all
close all

%Uniform flow parallel to X-axis
U = 1; %give any number
%GRID
x = -2:0.02:2;
y = -2:0.02:2;          

for m = 1:length(x);
     for n = 1:length(y);
         xx(m,n) = x(m);
         yy(m,n) = y(n);
         % velocity potential function
         phi_uf(m,n) = U*x(m);
         %stream function
         psi_uf(m,n) = U*y(n);
     end
end
%plotting syntax

figure(1)
%psi-phi mesh
%equipotential lines
contour(xx,yy,phi_uf,[-2:0.05:2],'r')
hold on
%streamlines
contour(xx,yy,psi_uf,[-2:0.05:2],'k')

figure(2)
%streamlines
contour(xx,yy,psi_uf,[-2:0.05:2],'k')
xlabel('x')
         
figure(3)
%stream surfaces
contourf(xx,yy,psi_uf,[-2:0.05:2])

