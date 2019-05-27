clc
clear all
close all

%cell dimensions
dx = 0.5; %length of the cell
dy=0.5;
dz = 0.5;
%cell centre
xc = 0.25;yc=0.25;zc=0.25;
plot3(xc,yc,zc,'*k')
hold on

%Bottom face
xO = xc-dx/2;yO=yc-dy/2;zO=zc-dz/2;
xA = xc+dx/2;yA=yc-dy/2;zA=zc-dz/2;
xB = xc+dx/2;yB=yc+dy/2;zB=zc-dz/2;
xC = xc-dx/2;yC=yc+dy/2;zC=zc-dz/2;

plot3(xO,yO,zO,'or','MarkerFaceColor','r',...
                    'MarkerSize',6);
              
                
                plot3(xA,yA,zA,'or','MarkerFaceColor','r',...
                    'MarkerSize',6)
                
                          
                               
   plot3(xB,yB,zB,'or','MarkerFaceColor','r',...
                    'MarkerSize',6)
                
 
                
                   plot3( xC,yC,zC,'or','MarkerFaceColor','r',...
                    'MarkerSize',6);
        
                
         v1 = [xO,xA];
         v2 = [yO,yA];
         v3 = [zO,zA];
         
         f = line(v1,v2,v3);
         
                
         v1 = [xA,xB];
         v2 = [yA,yB];
         v3 = [zA,zB];
         
         f = line(v1,v2,v3)
         
                
         v1 = [xC,xO];
         v2 = [yC,yO];
         v3 = [zC,zO];
         
         f = line(v1,v2,v3)
         
                
         v1 = [xB,xC];
         v2 = [yB,yC];
         v3 = [zB,zC];
         
         f = line(v1,v2,v3)
                
%top face
xD = xc-dx/2;yD=yc-dy/2;zD=zc+dz/2;
xE = xc+dx/2;yE=yc-dy/2;zE=zc+dz/2;
xF = xc+dx/2;yF=yc+dy/2;zF=zc+dz/2;
xG = xc-dx/2;yG=yc+dy/2;zG=zc+dz/2;

plot3(xD,yD,zD,'or','MarkerFaceColor','r',...
                    'MarkerSize',6);
              
                
                plot3(xE,yE,zE,'or','MarkerFaceColor','r',...
                    'MarkerSize',6)
                
                          
                               
   plot3(xF,yF,zF,'or','MarkerFaceColor','r',...
                    'MarkerSize',6)
                
 
                
                   plot3( xG,yG,zG,'or','MarkerFaceColor','r',...
                    'MarkerSize',6);
        
                
         v1 = [xD,xE];
         v2 = [yD,yE];
         v3 = [zD,zE];
         
         f = line(v1,v2,v3);
         
                
         v1 = [xE,xF];
         v2 = [yE,yF];
         v3 = [zE,zF];
         
         f = line(v1,v2,v3)
         
                
         v1 = [xF,xG];
         v2 = [yF,yG];
         v3 = [zF,zG];
         
         f = line(v1,v2,v3)
         
                
         v1 = [xG,xD];
         v2 = [yG,yD];
         v3 = [zG,zD];
         
         f = line(v1,v2,v3)        
         
% %vertical face
% xO = xc-dx/2;yO=yc-dy/2;zO=zc-dz/2;
% xA = xc+dx/2;yA=yc-dy/2;zA=zc-dz/2;
% xB = xc+dx/2;yB=yc-dy/2;zB=zc+dz/2;
% xC = xc-dx/2;yC=yc-dy/2;zC=zc+dz/2;
% 
% plot3(xO,yO,zO,'or','MarkerFaceColor','r',...
%                     'MarkerSize',6);
%               
%                 
%                 plot3(xA,yA,zA,'or','MarkerFaceColor','r',...
%                     'MarkerSize',6)
%                 
%                           
%                                
%    plot3(xB,yB,zB,'or','MarkerFaceColor','r',...
%                     'MarkerSize',6)
%                 
%  
%                 
%                    plot3( xC,yC,zC,'or','MarkerFaceColor','r',...
%                     'MarkerSize',6);
%         
%                 
%          v1 = [xO,xA];
%          v2 = [yO,yA];
%          v3 = [zO,zA];
%          
%          f = line(v1,v2,v3);
%          
%                 
%          v1 = [xA,xB];
%          v2 = [yA,yB];
%          v3 = [zA,zB];
%          
%          f = line(v1,v2,v3)
%          
%                 
%          v1 = [xC,xO];
%          v2 = [yC,yO];
%          v3 = [zC,zO];
%          
%          f = line(v1,v2,v3)
%          
%                 
%          v1 = [xB,xC];
%          v2 = [yB,yC];
%          v3 = [zB,zC];
%          
%          f = line(v1,v2,v3)   

       
         v1 = [xD,xO];
         v2 = [yD,yO];
         v3 = [zD,zO];
         
         f = line(v1,v2,v3);
         
                
         v1 = [xE,xA];
         v2 = [yE,yA];
         v3 = [zE,zA];
         
         f = line(v1,v2,v3)
         
                
         v1 = [xF,xB];
         v2 = [yF,yB];
         v3 = [zF,zB];
         
         f = line(v1,v2,v3)
         
                
         v1 = [xG,xC];
         v2 = [yG,yC];
         v3 = [zG,zC];
         
         f = line(v1,v2,v3)



         