clc
clear all
close all

%This program transforms a circle 
%streamline around it in z-plane to a joukowsky airfoil
%Flow around it 

%Radius of cylinder 
R = 1;
%INCLINED UNIFORM FLOW VELOCITY
Vinf = 1.0;
%angle of attack

%circle center offset
xoff = -0.093*R;
yoff = 0.08*R;
%zoff=xoff+1i*yoff;
zoff = complex(xoff,yoff);

%problem domain 
xmin = -3.5*R;
xmax = 3.5*R;

ymin = -3.5*R;
ymax = 3.5*R;

%CREATE GRID
%no of node points in x-direction 
nx = 200;
%no of node points in x-direction 
ny = 200;

% [x,y] = meshgrid(linspace(xmin,xmax,nx),...
%                  linspace(ymin,ymax,ny));
% alpha = 5*pi/180;
for i = 1:40;
    alpha = i*pi/180;
xlist = linspace(xmin,xmax,nx);
ylisy = linspace(ymin,ymax,ny);

[x,y] = meshgrid(xlist,ylisy);
z = complex(x,y);

%*******************************************************************
% Flow in z-plane:Over a circular cylinder
%******************************************************************
%location of trailing edge on circular clinder 
thetaTE = -asin(yoff/R);
%circulation
gama = 4*pi*Vinf*R*sin(alpha-thetaTE);
%CPF - complex potential function in z-plane
%equation A
w = Vinf*exp(-1i*alpha)*(z-zoff)+...     %inclinded uf
    R^2*Vinf*exp(1i*alpha)./(z-zoff)+... %doublet flow
    1i*gama.*log(z-zoff)/(2*pi);         %vortex flow

%Streamfunction

streamfunction = imag(w);

% Flow field  around cylinder 
z_pt = complex(xoff+R,yoff);

w_pt = Vinf*exp(-1i*alpha)*(z_pt-zoff)+...     %inclinded uf
    R^2*Vinf*exp(1i*alpha)./(z_pt-zoff)+... %doublet flow
    1i*gama.*log(z_pt-zoff)/(2*pi);         %vortex flow

streamfunction_pt = imag(w_pt);
%Distance from the center of the cylinder
r = sqrt((x-xoff).^2+(y-yoff).^2);

indx = find(r<=R);
Streamfunction(indx) = streamfunction_pt;
levelmin = streamfunction(1,nx);
levelmax = streamfunction(ny,1);
levels = linspace(levelmin,levelmax,50)

theta = linspace(0,2*pi,100);
%points on the cylinder 
z_c = zoff+R*exp(1i*theta);
x_c = real(z_c);
y_c = imag(z_c);
xTE = xoff+sqrt(R^2-yoff^2);
b = xTE;
xLE = xoff-sqrt(R^2-yoff^2);

% plot(x_c,y_c)
% hold on
% plot(xTE,0,'or')
% grid on
% plot(xLE,0,'sb')
% axis square

zTE = complex(xTE,0);
zLE = complex(xLE,0);
%CVPF-COMPLEX VELOCITY POTENTIAL FUNCTION(EQUATION D)
dwbydz = Vinf*exp(-1i*alpha)-...
         Vinf*R^2*exp(1i*alpha)./(z-zoff).^2+...
         (1i*gama/(2*pi))./(z-zoff);
    

%**************************************************************************
%Flow around airfoil
%**************************************************************************

%KZT 
ksi = z+b^2./z;
zeta = real(ksi);
eta = imag(ksi);

%points on airfoil
ksi_a = z_c+b^2./z_c;
zeta_a = real(ksi_a);
eta_a = imag(ksi_a);

dksibydz = 1-(b^2./z.^2);

%velocity in ksi plane

v_ksi = dwbydz./dksibydz;

%pressure distribution on airfoil
Cp = 1-(v_ksi.*conj(v_ksi)/Vinf^2);
Cp(indx) = 0.0;


levels = linspace(-10,1,);
contour(zeta,eta,Cp,levels)
colormap('cool')
axis equal
axis ([xmin xmax ymin ymax])
hold on 
plot(ksi_a,'k-')
patch(zeta_a,eta_a,'k')
title('pressure distribution(pressure contour)')
hold off

J(i) = getframe;
end


movie2avi(J,'PressureCr.avi','compression','none')








    
    
