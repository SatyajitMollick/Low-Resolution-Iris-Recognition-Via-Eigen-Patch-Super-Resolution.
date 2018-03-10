clc;
clear all;
clear all;
figure
i=imread('eyeadjust.jpg');
imshow(i);

%downsampling by 1/2n using bilinear interpolation

subplot(431);
k=imresize(i,1/2,'bilinear');
imshow(k);
title('Blinear');
ylabel('1/ 2');
%imwrite(k,'eyeabi115.jpg')
subplot(434);
k2=imresize(i,1/4,'bilinear');
imshow(k2);
ylabel('1/ 4');
%imwrite(k2,'eyeabi57.jpg')


subplot(437);
k3=imresize(i,1/6,'bilinear');
imshow(k3);
ylabel('1/ 6');
%imwrite(k3,'eyeabi39.jpg')

subplot(4,3,10);
k4=imresize(i,1/8,'bilinear');
imshow(k4);
ylabel('1/ 8');
%imwrite(k4,'eyeabi29.jpg')

%downsampling by 1/2n using bicubic interpolation
subplot(432);
k5=imresize(i,1/2,'bicubic');
imshow(k5);
title('Bicubic');
%imwrite(k5,'eyeab115.jpg')
subplot(435);
k6=imresize(i,1/4,'bicubic');
imshow(k6);
%imwrite(k6,'eyeab57.jpg')

subplot(438);
k7=imresize(i,1/6,'bicubic');
imshow(k7);
%imwrite(k7,'eyeab39.jpg')

subplot(4,3,11);
k8=imresize(i,1/8,'bicubic');
imshow(k8);
%imwrite(k8,'eyeab29.jpg')

%downsampling by 1/2n using pca
j=imread('eyeadjustp.jpg');

subplot(433);
k9=imresize(j,1/2,'bicubic');
imshow(k9);
title('eigen-patch');
%imwrite(k9,'eyeap115.jpg')
subplot(436);
k10=imresize(j,1/4,'bicubic');
imshow(k10);
%imwrite(k10,'eyeap57.jpg')

subplot(439);
k11=imresize(j,1/6,'bicubic');
imshow(k11);
%imwrite(k11,'eyeap39.jpg')

subplot(4,3,12);
k12=imresize(j,1/8,'bicubic');
imshow(k12);
%imwrite(k12,'eyeap29.jpg')
