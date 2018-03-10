clc;
clear all;
clear all;
i=imread('eye.jpg');
figure
subplot(221);
j=imshow(i);
title('Original image');
j2=imadjust(i);
subplot(222);
imshow(j2);
%imwrite(j2,'eyeadjust.jpg')
title('imadjust');
subplot(223);
j3=adapthisteq(i);
imshow(j3);
%imwrite(j3,'eyeaclahe.jpg')
title('clahe');
subplot(224);
Y=multi_scale_retinex(i,[13 27 37]);
X=imshow(Y,[]);
%imwrite(mat2gray(Y), 'eyemsr.jpg')
title('msr');

