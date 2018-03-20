function I1 = ocr( img )
% Works only for German license plates because only that, I found a
% alphabet
wait=1;
% img is already segmented license plate
[h,w,f]=size(img);
imshow(img);
pause(wait);
[h,w,f]=size(img);
img = rgb2gray(img);
imshow(img);
pause(wait);
% Also this image we converted to a binary image
img=~(img<100);
imshow(img);
pause(wait);
% By the use of this function are all of the black parts in the image which
are connected according to the 8-connectivity, and are smaller than a number of
pixels is removed (depending on the dimensions).
img=~bwareaopen(~img, round((h*w)*0.02));
imshow(img);
pause(wait);
% are all connected labeled
[L Ne]=bwlabel(not(img));
gem=zeros(1);
for n=1:Ne
% here we go looking for the number of pixels per Connected region, so
that we can then use the average threshold
[r,c] = find(L==n);
n1=img(min(r):max(r),min(c):max(c));
gem(n)=bwarea(n1);
end
I1=[];
gem=mean(gem);
tresh=2;
verhoudingtresh=1.1;
str='';
% we are going to terminate any connected region and see if they meet
the specifications of a letter
k=1;
for n=1:Ne
[r,c] = find(L==n);
n1=img(min(r):max(r),min(c):max(c));
height=max(r)-min(r)+1;
width=max(c)-min(c)+1;
perc=bwarea(n1)/(height*width);
if(~(bwarea(n1)<gem(1)/tresh || bwarea(n1)>gem(1)*tresh)) &&
height>(width*verhoudingtresh) && perc>0.3
imshow(n1);
n2=imresize(n1,[45,24]);
imwrite(n2,strcat(num2str(k),'.bmp'));
I1{k}=n2;
k=k+1;
else
img(min(r):max(r),min(c):max(c))=1;
end
pause(wait);
end
imshow(img);
end
