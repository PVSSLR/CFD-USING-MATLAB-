%vector plot
[x,y] = meshgrid(-2:0.2:2);

f = x.*exp(-x.^2-y.^2);
[u,v] = gradient(f,0.2,0.2);

figure(1)
contour(x,y,f)
hold on 

figure(2)
quiver(x,y,u,v);


