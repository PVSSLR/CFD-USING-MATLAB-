



%CODING

AR = str2num(get(handles.AR_box,'String'));
Sweep = str2num(get(handles.Sweep_box,'String'));
nspan = str2num(get(handles.nspan_box,'String'));
nchord = str2num(get(handles.nchord_box,'String'));
tapper = str2num(get(handles.tapper_box,'String'));
twist = str2num(get(handles.twist_box,'String'));
dihedral = str2num(get(handles.dihedral_boxAR_box,'String'));
design = str2num(get(handles.design_box,'String'));

 camber = @(x)0*x;
 
 y = linspace(-0.5,0.5,nspan+1);
 %equation 1
 lex = abs(y)*tan(Sweep);
 %equation 2 
 lez = abs(y)*tan(dihedral);
 
 
 %points along the chord
 xi = linspace(0,1,nchord+1)';
 meanline = [xi,camber(xi)];
 
 %equation 5 
 c = 2*(1-2*abs(y)*(1-tapper))/((1+tapper)*AR);
 
 twists = 2*twist*abs(y);
 
 dx = meanline*([c;c].*[cos(twists);-sin(twists)]);
 dz = meanline+([c;c].*[sin(twists);cos(twists)]);
 
 x = repmat(lex,size(xi))+dx;
 z = repmat(lez,size(xi))+dz;
 y = repmat(y,size(xi));
 
 
 %plotting
 
 axes(handles.axes4)
 plot(x,y,'k',x',y','r')
 
  axes(handles.axes5)
 plot(y,x,'k',y',x','r')
 
  axes(handles.axes6)
 plot(x,z,'k',x',z','r')
 
  axes(handles.axes7)
 plot(y,z,'k',y',z','r')
axis([0.5 0.5 0 0.8])