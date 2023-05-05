function varargout = study_gui_duide(varargin)
% STUDY_GUI_DUIDE MATLAB code for study_gui_duide.fig
%      STUDY_GUI_DUIDE, by itself, creates a new STUDY_GUI_DUIDE or raises the existing
%      singleton*.
%
%      H = STUDY_GUI_DUIDE returns the handle to a new STUDY_GUI_DUIDE or the handle to
%      the existing singleton*.
%
%      STUDY_GUI_DUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STUDY_GUI_DUIDE.M with the given input arguments.
%
%      STUDY_GUI_DUIDE('Property','Value',...) creates a new STUDY_GUI_DUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before study_gui_duide_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to study_gui_duide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help study_gui_duide

% Last Modified by GUIDE v2.5 05-May-2023 19:24:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @study_gui_duide_OpeningFcn, ...
                   'gui_OutputFcn',  @study_gui_duide_OutputFcn, ...
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


% --- Executes just before study_gui_duide is made visible.
function study_gui_duide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to study_gui_duide (see VARARGIN)

% Choose default command line output for study_gui_duide
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes study_gui_duide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = study_gui_duide_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editfz_Callback(hObject, eventdata, handles)
% hObject    handle to editfz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editfz as text
%        str2double(get(hObject,'String')) returns contents of editfz as a double


% --- Executes during object creation, after setting all properties.
function editfz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editfz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editpl_Callback(hObject, eventdata, handles)
% hObject    handle to editpl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editpl as text
%        str2double(get(hObject,'String')) returns contents of editpl as a double


% --- Executes during object creation, after setting all properties.
function editpl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editpl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=eval(handles.editfz.String);
f=eval(handles.editpl.String)/50;
theta=eval(handles.editxj.String)/180*pi;
x=linspace(0,2*pi,60);
if handles.OpSin.Value==1
    y=A*sin(f*x+theta);
else
    y=A*cos(f*x+theta);
end
plot(x,y);
handles.PStyle.Enable='On';

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function editxj_Callback(hObject, eventdata, handles)
% hObject    handle to editxj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editxj as text
%        str2double(get(hObject,'String')) returns contents of editxj as a double


% --- Executes during object creation, after setting all properties.
function editxj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editxj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function PStyle_Callback(hObject, eventdata, handles)
% hObject    handle to PStyle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Solid_Callback(hObject, eventdata, handles)
% hObject    handle to Solid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hline=findobj('Type','line');
hline.LineStyle='-';
handles.Solid.Checked='On';
handles.Dotted.Checked='Off';
handles.Dashed.Checked='Off';

% --------------------------------------------------------------------
function Dotted_Callback(hObject, eventdata, handles)
% hObject    handle to Dotted (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hline=findobj('Type','line');
hline.LineStyle=':';
handles.Solid.Checked='Off';
handles.Dotted.Checked='On';
handles.Dashed.Checked='Off';

% --------------------------------------------------------------------
function Dashed_Callback(hObject, eventdata, handles)
% hObject    handle to Dashed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hline=findobj('Type','line');
hline.LineStyle='--';
handles.Solid.Checked='Off';
handles.Dotted.Checked='Off';
handles.Dashed.Checked='On';

% --------------------------------------------------------------------
function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hline=findobj('Type','line');
hline.Color='r';
handles.r.Checked='On';
handles.g.Checked='Off';
handles.b.Checked='Off';

% --------------------------------------------------------------------
function g_Callback(hObject, eventdata, handles)
% hObject    handle to g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hline=findobj('Type','line');
hline.Color='g';
handles.r.Checked='Off';
handles.g.Checked='On';
handles.b.Checked='Off';

% --------------------------------------------------------------------
function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hline=findobj('Type','line');
hline.Color='b';
handles.r.Checked='Off';
handles.g.Checked='Off';
handles.b.Checked='On';