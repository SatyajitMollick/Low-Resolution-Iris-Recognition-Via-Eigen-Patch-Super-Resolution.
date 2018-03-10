
X=imread('iris.bmp');
Y=multi_scale_retinex(X,[13 27 37]);
figure,imshow(X);
figure,imshow(Y,[]);