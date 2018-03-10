clc;
clear all;

[fname path]=uigetfile('.jpg','Open Iris for Input:');
fname=strcat(path,fname);
im=imread(fname);
imshow(im);
title('Input Iris');
C=input('Enter the Class:');
%C=str2double (inputdlg ('Enter the Class:'));   

%feature extraction
F=FeatureStatistical(im);

try
    load db;
    F=[F C];
    db=[db;F];
    save db.mat db
catch
    db=[F C];
    save db.mat db
end