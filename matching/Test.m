clc;
clear all;

[fname path]=uigetfile('.jpg','Open Iris for testing:');
fname=strcat(path,fname);
im=imread(fname);
imshow(im);
title('Test Iris');

%Output Result
Ftest=FeatureStatistical(im);
load db.mat
Ftrain=db(:,1:2);
Ctrain=db(:,3);
for (i=1:size(Ftrain,1))
   distance(i,:)= sum(abs(Ftrain(i,:)-Ftest));
   
end
Min=min(distance);
if(Min<30)
M=find(distance==Min,1);
det_class=Ctrain(M);
msgbox(strcat('Iris belongs to Person:',num2str(det_class)));
else
    msgbox('This Iris is not in the database.');
end
