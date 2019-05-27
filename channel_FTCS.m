clc
clear all
close all

%This program creates animation of evolving velocity in a 
%2D channel flow btw parallel plates
%(i)  Both stationary 
%(ii) bottom plate stationary and top plate moving
%(iii) both plates in relative motion

%----------------------------------------------------
%PARAMETERS
%----------------------------------------------------
h = 1;             %distance btw two plates
dpbydx = -2.0;      %pressure gradient in x-direction
fbx   = 0.4;       %Bodyforce in x-direction
mu    = 0.6;       %Molecular Viscosity
rho   = 0.56;      %density
U1  = 0.0;         %Velocity of bottom plate
U2 = 0.0;           %Velocity of top plate
N = 32;             %no of intervals
alpha = 0.45;       % Numerical diffusion number 

%Kinematic Viscosity
nu = mu/rho;

%Number of time steps
nstep = 2000

%GRID
dy = h/N;
%Step size 
dt = alpha*dy*dy/nu;

%initialize the grid 

for i = 1:N+1
    Y(i) = (i-1)*dy;
    u(i) = 0.0;
end

t = 0.0;
%----------------------------------------------------
%BOUNDARY COND
%----------------------------------------------------

u(1) = U1;
u(N) = U2;


%Main loop(Time marching)

for step = 1:nstep
    t = t+dt;
    unew(1) = U1;
    for i = 2:N
    unew(i) = (1-2*alpha)*u(i)+alpha*u(i-1)+alpha*u(i+1)...
               +dt*(fbx-dpbydx/rho);
    end
    
    unew(N+1) = U2;
    u = unew;
    
    
    if(step==1)
        Handle1 = plot(u,Y,'o-');
        set(Handle1,'erasemode','xor')
        set(gca,'fontsize',15)
        axis([0 0.8 0 h])
        xlabel('u','fontsize',15)
        ylabel('y','fontsize',15)
    else
        set(Handle1,'XData',u,'YData',Y);
        pause(0.02)
        drawnow
    end
    
   step
end
    
    
    





