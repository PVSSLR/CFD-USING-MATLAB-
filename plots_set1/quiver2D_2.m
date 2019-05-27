[x,y] = meshgrid(0:0.2:2);

u = cos(x).*y;
v = sin(x).*y;

quiver(x,y,u,v,'r')