InputImage=imread('eyeadjust.jpg');
ReconstructedImage=imread('eyeab115.jpg');
n=size(InputImage);
M=n(1);
N=n(2);
MSE = sum(sum((InputImage-ReconstructedImage).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);
%fprintf('\nMSE: %7.2f ', MSE);
fprintf('\nPSNR: %9.7f dB\n', PSNR);