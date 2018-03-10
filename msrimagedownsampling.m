clc;
clear all;
clear all;
figure
i=imread('eyemsr.jpg');
imshow(i);

%downsampling by 1/2n using bilinear interpolation

subplot(431);
k=imresize(i,1/2,'bilinear');
imshow(k);
title('Blinear');
ylabel('1/ 2');
%imwrite(k,'eyembi115.jpg')
subplot(434);
k2=imresize(i,1/4,'bilinear');
imshow(k2);
%imwrite(k2,'eyembi57.jpg');
ylabel('1/ 4');

subplot(437);
k3=imresize(i,1/6,'bilinear');
imshow(k3);
ylabel('1/ 6');
%imwrite(k3,'eyembi39.jpg')

subplot(4,3,10);
k4=imresize(i,1/8,'bilinear');
imshow(k4);
ylabel('1/ 8');
%imwrite(k4,'eyembi29.jpg')

%downsampling by 1/2n using bicubic interpolation
subplot(432);
k5=imresize(i,1/2,'bicubic');
imshow(k5);
title('Bicubic');
%imwrite(k5,'eyemb115.jpg')
subplot(435);
k6=imresize(i,1/4,'bicubic');
imshow(k6);
%imwrite(k6,'eyemb57.jpg')


subplot(438);
k7=imresize(i,1/6,'bicubic');
imshow(k7);
%imwrite(k7,'eyemb39.jpg')

subplot(4,3,11);
k8=imresize(i,1/8,'bicubic');
imshow(k8);
%imwrite(k8,'eyemb29.jpg')

%downsampling by 1/2n using pca
j=imread('eyemsrp.jpg');
%j2=imshow(j);

subplot(433);
k9=imresize(j,1/2,'bicubic');
imshow(k9);
title('eigen-patch');
%imwrite(k9,'eyemp115.jpg')
subplot(436);
k10=imresize(j,1/4,'bicubic');
imshow(k10);
%imwrite(k10,'eyemp57.jpg')


subplot(439);
k11=imresize(j,1/6,'bicubic');
imshow(k11);
%imwrite(k11,'eyemp39.jpg')

subplot(4,3,12);
k12=imresize(j,1/8,'bicubic');
imshow(k12);
%imwrite(k12,'eyemp29.jpg')
