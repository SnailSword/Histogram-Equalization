function varargout = IMP_GUI(varargin)
%IMP_GUI M-file for IMP_GUI.fig
%      IMP_GUI, by itself, creates a new IMP_GUI or raises the existing
%      singleton*.
%
%      H = IMP_GUI returns the handle to a new IMP_GUI or the handle to
%      the existing singleton*.
%
%      IMP_GUI('Property','Value',...) creates a new IMP_GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to IMP_GUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      IMP_GUI('CALLBACK') and IMP_GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in IMP_GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IMP_GUI

% Last Modified by GUIDE v2.5 11-Jun-2016 23:57:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IMP_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @IMP_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before IMP_GUI is made visible.
function IMP_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for IMP_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IMP_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IMP_GUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --------------------------------------------------------------------
function Untitled_15_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.tif');
subplot(1,1,1),imshow(I);title('�������ѡ�����⼸�����ص�󰴻س�����ʾ��ѡ���ص������ֵ��');
vals =impixel



% --------------------------------------------------------------------
function Untitled_18_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.bmp');
subplot(2,1,1),imshow(I);title('�Ҷ�ͼ��')
subplot(2,1,2),imhist(I,64);title('�Ҷ�ͼ���ֱ��ͼ')
     
% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
close all
exit(0)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.bmp');
subplot(2,1,1),imshow(I);title('�Ҷ�ͼ��')
subplot(2,1,2),imhist(I,64);title('ֱ��ͼ')


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.tif');
subplot(1,1,1),imshow(I);title('����ѡ��鿴�����ص��س��鿴');
vals =impixel

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.tif');
level=graythresh(I);
bw=im2bw(I,level);
subplot(1,2,1),imshow(I);title('ԭʼͼ��');
subplot(1,2,2),imshow(bw);title('��ֵ����ͼ��');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.tif');
gray=rgb2gray(I);
J=histeq(gray,32);
[counts,x]=imhist(J);
I=imread('test.tif');
Q=rgb2gray(I);
subplot(2,2,1),imshow(Q);title('ԭʼ�Ҷ�ͼ��');
subplot(2,2,3),imhist(Q);title('ԭʼ�Ҷ�ͼ���ֱ��ͼ');
M=histeq(Q,counts);
subplot(2,2,2),imshow(M);title('ֱ��ͼ�涨����ĻҶ�ͼ��');
subplot(2,2,4),imhist(M);title('ֱ��ͼ���⻯��32���Ҷȼ���ĻҶ�ͼ��ֱ��ͼ');
axis square


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.tif');
gray=rgb2gray(I);
J=histeq(gray);
subplot(2,2,1),imshow(gray);title('ԭʼ�Ҷ�ͼ��');
subplot(2,2,2),imshow(J);title('ֱ��ͼ���⻯��ĻҶ�ͼ��');
subplot(2,2,3),imhist(gray);title('ԭʼ�Ҷ�ͼ��ֱ��ͼ');
subplot(2,2,4),imhist(J);title('ֱ��ͼ���⻯��ĻҶ�ͼ��ֱ��ͼ');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.bmp');
I=double(I);
subplot(1,2,1),imshow(I,[]);title('ԭʼͼ��');
h=[0 1 0,1 -4 1,0 1 0];
J=conv2(I,h,'same');
K=I-J;
subplot(1,2,2),imshow(K,[]);title('�������Ӷ�ģ��ͼ�������ǿ')

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I=imread('test.bmp');
BW1=edge(I,'sobel');
BW2=edge(I,'canny');
BW3=edge(I,'prewitt');
BW4=edge(I,'log');
subplot(3,2,1),imshow(I);title('ԭʼͼ��');
subplot(3,2,3),imshow(BW1);title('Sobel��Ե���');
subplot(3,2,4),imshow(BW2);title('Canny��Ե���');
subplot(3,2,5),imshow(BW2);title('prewitt��Ե���');
subplot(3,2,6),imshow(BW2);title('log��Ե���');
