%-- License plate.m :

function varargout = licenseplate(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
'gui_Singleton', gui_Singleton, ...
'gui_OpeningFcn', @licenseplate_OpeningFcn, ...
'gui_OutputFcn', @licenseplate_OutputFcn, ...
'gui_LayoutFcn', [] , ...
'gui_Callback', []);
if nargin && ischar(varargin{1})
gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
[varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
gui_mainfcn(gui_State, varargin{:});
end

function licenseplate_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);

function varargout = licenseplate_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

% --- Executes on button press in StartKnop.
function StartKnop_Callback(hObject, eventdata, handles)
A=handles.A;
org=A;
[h,w,f]=size(A);
%orginal image is shown
A = rgb2gray(A);
figure,imshow(A)
level = graythresh(A);
A = im2bw(A,level*1.3);
figure,imshow(A)
axes(handles.axes2);

A=edge(A,'roberts');
imshow(A);

horHist=zeros(w);

for i=1:w
tot=0;
for j=1:h

if (A(j,i)==1)
tot=tot+1;
end
end
horHist(i)=tot;
end
axes(handles.axes3);

gem=max(horHist)/2.3;
plot(horHist);
hstart=0;
heinde=0;
width=0;
hcounter=0;
arc=0;
hcoor=zeros(1,2);

for i=1:w
if horHist(i)>gem(1)
if(hstart==0)
hstart=i;
end
hcounter=0;
else
if hstart>0
if hcounter>(w*0.07)
heinde=i-hcounter;
width=heinde-hstart;
if(width>(w*0.1))
arc=arc+1;
hcoor(arc,1)=hstart;

hcoor(arc,2)=width;
end
hstart=0;
hcounter=0;
heinde=0;
width=0;
end
hcounter=hcounter+1;
end
end
end
[ww,f]=size(hcoor);
hstart=0;
hwidth=0;
%in case there are a plurality of horizontal places are found for the
%number plate we just pick up the widest position.
for i=1:ww
if(hcoor(i,2)>hwidth)
hwidth=hcoor(i,2);
hstart=hcoor(i,1);
end
end

A=A(:,hstart:(hstart+hwidth),:);
axes(handles.axes2);
imshow(A);
verHist=zeros(h);
for j=1:h
tot=0;
for i=2:hwidth

if (A(j,i-1)==1 && A(j,i)==0) || (A(j,i-1)==0 && A(j,i)==1)
tot=tot+1;
end
end
verHist(j)=tot;
end
axes(handles.axes4);
verh=zeros(1);
coun=1;

for i=1:h
if(verHist(i)>0)
verh(coun)=verHist(i);
coun=coun+1;
end
end
gem=mean(verh);
plot(verHist);
vstart=0;
veinde=0;
height=0;
vcounter=0;
arc=0;
vcoor=zeros(1,2);
h*0.07;

for(i=1:h)
if verHist(i)>gem(1)
if(vstart==0)
vstart=i;
end


vcounter=0;
else
if vstart>0
if vcounter>(h*0.03)
veinde=i-vcounter;
height=veinde-vstart;
if(height>(h*0.05))
arc=arc+1;
vcoor(arc,1)=vstart;
vcoor(arc,2)=height;
end
vstart=0;
vcounter=0;
veinde=0;
height=0;
end
vcounter=vcounter+1;
end
end
end
[l,f]=size(vcoor);
axes(handles.axes5);

A=org(vcoor(l,1):vcoor(l,1)+vcoor(l,2),hstart:(hstart+hwidth),:);
imshow(A);
axes(handles.axes6);

I=ocr(A);
LEN=length(I);
load DataBase;

RECOG=[];

Dlen=length(DataBase);
%Dlen=540;
k=1;
for i=1:LEN
Test=I{i};
for j=1:Dlen

Test2=DataBase{j};
X(j)=corr2(Test,Test2);

end
[Res INDEX]=max(X);
RECOG(k)=INDEX;
k=k+1;

disp(INDEX);

end
disp('Exit');

Len=length(RECOG);
Output=[];
for i=1:Len
a=RECOG(i);
if (a>=1)&&(a<=15)
Output=[Output '0'];


elseif (a>=16)&&(a<=30)
Output=[Output '1'];

elseif (a>=31)&&(a<=45)
Output=[Output '2'];


elseif (a>=46)&&(a<=60)
Output=[Output '3'];

elseif (a>=61)&&(a<=75)
Output=[Output '4'];


elseif (a>=76)&&(a<=90)
Output=[Output '5'];


elseif (a>=91)&&(a<=105)
Output=[Output '6'];


elseif (a>=106)&&(a<=120)
Output=[Output '7'];
elseif (a>=121)&&(a<=135)
Output=[Output '8'];


elseif (a>=136)&&(a<=150)
Output=[Output '9'];


elseif (a>=151)&&(a<=165)
Output=[Output 'A'];
elseif (a>=166)&&(a<=180)
Output=[Output 'B'];


elseif (a>=181)&&(a<=195)

74
Output=[Output 'C'];
elseif (a>=196)&&(a<=210)
Output=[Output 'D'];


elseif (a>=211)&&(a<=225)
Output=[Output 'E'];


elseif (a>=226)&&(a<=240)
Output=[Output 'F'];


elseif (a>=241)&&(a<=255)
Output=[Output 'G'];


elseif (a>=256)&&(a<=270)
Output=[Output 'H'] ;


elseif (a>=271)&&(a<=285)
Output=[Output 'I'];


elseif (a>=286)&&(a<=300)
Output=[Output 'J'];


elseif (a>=301)&&(a<=315)
Output=[Output 'K'];


elseif (a>=316)&&(a<=330)
Output=[Output 'L'];


elseif (a>=331)&&(a<=345)
Output=[Output 'M'];

elseif (a>=346)&&(a<=360)
Output=[Output 'N'];


elseif (a>=361)&&(a<=375)
Output=[Output 'O'] ;


elseif (a>=376)&&(a<=390)
Output=[Output 'P'] ;


elseif (a>=391)&&(a<=405)
Output=[Output 'Q'] ;


elseif (a>=406)&&(a<=420)
Output=[Output 'R'] ;


elseif (a>=421)&&(a<=435)
Output=[Output 'S'];


elseif (a>=436)&&(a<=450)
Output=[Output 'T'];


elseif (a>=451)&&(a<=465)
Output=[Output 'U'];


elseif (a>=466)&&(a<=480)
Output=[Output 'V'];


elseif (a>=481)&&(a<=495)

elseif (a>=496)&&(a<=510)
Output=[Output 'X'];


elseif (a>=511)&&(a<=525)
Output=[Output 'Y'];


elseif (a>=526)&&(a<=540)
Output=[Output 'Z'];

end
end
disp('NUMBER PLATE');
disp(Output);
Output=num2str(Output);
B1=num2str(Output);

set(handles.plaat,'String',B1);
filename=handles.filename;
username=filename(11:end-4);
mobilenum=filename(1:10);
messagek=strcat('Dear', username ,'from HYD traffic police ! Your vehicle(' ,B1,
') has crossed red light. So you need to pay the fine of 1000/- rupees at
commissioner office.'); %According to Article 377 of Indian Penal Code
tx ='ATI';
tx1=char(13);
tx2=char(26);
tx3=strcat('AT+CMGS="+91',mobilenum,'"');
tx4=messagek;
tx5='AT+CMGF=1';
s = serial('COM1');
s.baudrate=9600;
fopen(s);

s.Terminator = 'CR';
fprintf(s,'%s', tx);
fprintf(s,'%s', tx1);
BytesAvail=s.BytesAvailable;
if(BytesAvail > 0)
A=fread(s,BytesAvail,'char');
end
sprintf('%c', A)
fprintf(s,'%s', tx5);
fprintf(s,'%s', tx1);
fprintf(s,'%s', tx3);
fprintf(s,'%s', tx1);
fprintf(s,'%s', tx4);
fprintf(s,'%s', tx2);
BytesAvail=s.BytesAvailable;
if(BytesAvail > 0)
B=fread(s,BytesAvail,'char');
end
fclose(s)
guidata(hObject,handles)
function naam_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of naam as text
% str2double(get(hObject,'String')) returns contents of naam as a double

% --- Executes during object creation, after setting all properties.
function naam_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
set(hObject,'BackgroundColor','white');
end

function plaat_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of plaat as text
% str2double(get(hObject,'String')) returns contents of plaat as a double

% --- Executes during object creation, after setting all properties.
function plaat_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
[filename,pathname]=uigetfile('.jpg','select car image');
A=imread(strcat(pathname,filename));
axes(handles.axes1);
imshow(A);
set(handles.naam,'String',filename);
handles.A=A;
handles.filename=filename;
guidata(hObject,handles);
% hObject handle to pushbutton2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)

