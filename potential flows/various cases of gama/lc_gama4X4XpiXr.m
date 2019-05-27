clc
clear all
close all

%lifiting flow over a circular cyliner


U = 1; 
mu =pi;%lifiting_cylinder_strength strength
R = sqrt(mu/(2*pi*U));
theta = 0:0.1:2*pi;
x1 = R*cos(theta);
y1 = R*sin(theta);
gama=2*4*pi*U*R;
%GRID*
x = -2:0.02:2;
y = -2:0.02:2;

for m = 1:length(x);
     for n = 1:length(y);
         xx(m,n) = x(m);
         yy(m,n) = y(n);
         % velocity potential function
         phi_lifting_cylinder(m,n) = U*x(m)+...
                                    (mu*x(m)/(2*pi*(x(m)^2+y(n)^2)))-...
                                    (gama/(2*pi))*atan(y(n)/x(m));
         %stream function
         psi_lifting_cylinder(m,n) = U*y(n)-...
                                   (mu*y(n)/(2*pi*(x(m)^2+y(n)^2)))+...
                                   (gama/(4*pi))*log(x(m)^2+y(n)^2);
     end
end
%plotting syntax

figure(1)
%psi-phi mesh
%equipotential lines
contour(xx,yy,phi_lifting_cylinder,[-3:0.3:3],'r')
hold on
%streamlines
contour(xx,yy,psi_lifting_cylinder,[-3:0.3:3],'k')
hold on
fill(x1,y1,'y')
axis square

figure(2)
%streamlines
contour(xx,yy,psi_lifting_cylinder,[-3:0.3:3],'k')
hold on
fill(x1,y1,'y')
axis square

figure(3)
%stream surfaces
contourf(xx,yy,psi_lifting_cylinder,[-3:0.3:3])
hold on
fill(x1,y1,'y')
axis square