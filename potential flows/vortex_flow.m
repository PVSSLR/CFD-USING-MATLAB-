clc
clear all
close all

%free Vortex flow
gama = 2; %vortex strength
%GRID
x = -2:0.02:2;
y = -2:0.02:2;

for m = 1:length(x);
     for n = 1:length(y);
         xx(m,n) = x(m);
         yy(m,n) = y(n);
         % velocity potential function
         phi_vortex_strength(m,n) = (gama/(2*pi))*atan(y(n)/x(m));
         %stream function
         psi_vortex_strength(m,n) = (gama/(4*pi))*log(x(m)^2+y(n)^2);
     end
end
%plotting syntax

figure(1)
%psi-phi mesh
%equipotential lines
contour(xx,yy,phi_vortex_strength,[-2:0.05:2],'r')
hold on
%streamlines
contour(xx,yy,psi_vortex_strength,[-2:0.05:2],'k')

figure(2)
%streamlines
contour(xx,yy,psi_vortex_strength,[-2:0.05:2],'k')
         
figure(3)
%stream surfaces
contourf(xx,yy,psi_vortex_strength,[-2:0.05:2])

