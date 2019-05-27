function varargout = airfoil_generator(varargin)
% AIRFOIL_GENERATOR MATLAB code for airfoil_generator.fig
%      AIRFOIL_GENERATOR, by itself, creates a new AIRFOIL_GENERATOR or raises the existing
%      singleton*.
%
%      H = AIRFOIL_GENERATOR returns the handle to a new AIRFOIL_GENERATOR or the handle to
%      the existing singleton*.
%
%      AIRFOIL_GENERATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AIRFOIL_GENERATOR.M with the given input arguments.
%
%      AIRFOIL_GENERATOR('Property','Value',...) creates a new AIRFOIL_GENERATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before airfoil_generator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to airfoil_generator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help airfoil_generator

% Last Modified by GUIDE v2.5 15-Feb-2018 21:59:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @airfoil_generator_OpeningFcn, ...
                   'gui_OutputFcn',  @airfoil_generator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before airfoil_generator is made visible.
function airfoil_generator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to airfoil_generator (see VARARGIN)

% Choose default command line output for airfoil_generator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes airfoil_generator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = airfoil_generator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function n_box_Callback(hObject, eventdata, handles)
% hObject    handle to n_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_box as text
%        str2double(get(hObject,'String')) returns contents of n_box as a double


% --- Executes during object creation, after setting all properties.
function n_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function naca_box_Callback(hObject, eventdata, handles)
% hObject    handle to naca_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of naca_box as text
%        str2double(get(hObject,'String')) returns contents of naca_box as a double


% --- Executes during object creation, after setting all properties.
function naca_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to naca_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in color_box.
function color_box_Callback(hObject, eventdata, handles)
% hObject    handle to color_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns color_box contents as cell array
%        contents{get(hObject,'Value')} returns selected item from color_box


% --- Executes during object creation, after setting all properties.
function color_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to color_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generate_box.
function generate_box_Callback(hObject, eventdata, handles)
% hObject    handle to generate_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%coding
n = str2num(get(handles.n_box,'String'));
naca = get(handles.naca_box,'String');

M = str2num(naca(1));
P = str2num(naca(2));
T = str2num(naca(3:4));

c = 1;       % Chord length
m = M*c/100; %maximum camber
p = P*c/10;  %location of maximum camber
t = T*c/100; % maximum thickness

str = get(handles.color_box,'String');
val = get(handles.color_box,'Value');

for i = 1:n
    theta = (i-1)*2*pi/n;
    x = 0.5*c*(1+cos(theta));

    % Mean camberline
    if (x<p)
       yc(i) = (m/p^2)*(2*p*x-x^2);
    else
       yc(i) = (m/(1-p)^2)*((1-2*p)+2*p*x-x^2);
    end

   %Thickness distribution
    yt = 5*t*(0.2969*sqrt(x) ...
              -0.1260*x-0.3516*x^2 ...
              +0.2843*x^3-0.1015*x^4);
    if i<(1+n/2)
        xa(i) = x;
        ya(i) = yc(i)+yt;
    else
        xa(i) = x;
        ya(i) = yc(i)-yt;
    end

    xa(n+1) = c; 
    ya(n+1) = 0; % TE

 end
 %plotting
 axes(handles.airfoil)
 plot(xa,ya,'-or')
 hold on 
 grid on
 switch str{val};
      case 'No color'
   
      case 'white'
          patch(xa,ya,'w')
   
      case 'red'
          patch(xa,ya,'r')

      case 'blue'
          patch(xa,ya,'b')

      case 'green'
          patch(xa,ya,'g')

      case 'yellow'
          patch(xa,ya,'y')

      case 'black'
          patch(xa,ya,'k')
 end
 axis equal;
hold off
