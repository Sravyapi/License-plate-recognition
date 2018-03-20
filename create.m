clear all
clc
close all
DataBase=[];
str='.bmp';
k=1;
for i=1:15
filename=strcat(num2str(i),str);
cd '0'
a=imread(filename);
C=Train(a);
% close all;
figure;
imshow(C,[]);
DataBase{k}=C;
k=k+1;
cd ..

end
close all;
for i=1:15
filename=strcat(num2str(i),str);
cd '1'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end

for i=1:15
filename=strcat(num2str(i),str);
cd '2'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd '3'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd '4'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd '5'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end

for i=1:15
filename=strcat(num2str(i),str);
cd '6'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd '7'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end

for i=1:15
filename=strcat(num2str(i),str);
cd '8'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd '9'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'A'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'B'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'C'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'D'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'E'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'F'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'G'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'H'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'I'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'J'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'K'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'L'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'M'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'N'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..
end
for i=1:15
filename=strcat(num2str(i),str);
cd 'O'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'P'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'Q'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'R'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'S'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'T'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'U'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'V'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'W'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'X'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'Y'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
for i=1:15
filename=strcat(num2str(i),str);
cd 'Z'
a=imread(filename);
C=Train(a);
DataBase{k}=C;
k=k+1;
cd ..

end
save DataBase DataBase
