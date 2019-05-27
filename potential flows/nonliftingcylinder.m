clc
clear all
close all

%lifiting flow over a circular cyliner
gama=1;
U = 1; 
mu =1;%lifiting_cylinder_strength strength

%GRID*
x = -2:0.02:2;
y = -2:0.02:2;

for m = 1:length(x);
     for n = 1:length(y);
         xx(m,n) = x(m);
         yy(m,n) = y(n);
         % velocity potential function
         phi_lifting_cylinder(m,n) = U*x(m)+...
                                    (mu*x(m)/(2*pi*(x(m)^2+y(n)^2)));
                                  
         %stream function
         psi_lifting_cylinder(m,n) = U*y(n)-...
                                   (mu*y(n)/(2*pi*(x(m)^2+y(n)^2)));
     end                          
                                   
end
%plotting syntax

figure(1)
%psi-phi mesh
%equipotential lines
contour(xx,yy,phi_lifting_cylinder,[-2:0.2:2],'r')
hold on

%streamlines
contour(xx,yy,psi_lifting_cylinder,[-2:0.2:2],'k')
hold on
axis square

figure(2)
%streamlines
contour(xx,yy,psi_lifting_cylinder,[-2:0.2:2],'k')
hold on
axis square

figure(3)
%stream surfaces
contourf(xx,yy,psi_lifting_cylinder,[-2:0.2:2])
hold on

axis square