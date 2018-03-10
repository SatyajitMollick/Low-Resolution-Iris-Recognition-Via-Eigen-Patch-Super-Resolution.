clc;
%--------------------------------------------------------------------------
% Image acquisition
% -------------------------------------------------------------------------
%inputfilename = 'lena512color.tiff';
inputfilename = 'eye.jpg';
I = imread(inputfilename);
%--------------------------------------------------------------------------
% Image compression
% -------------------------------------------------------------------------
compressed = pca_compression(I);
%--------------------------------------------------------------------------
% Compressed data are stored on disk in a Matlab .mat file
% You can also zip it to decrease furtherly file size.
%--------------------------------------------------------------------------
compressed_filename = 'compressed_file';
save(compressed_filename,'compressed');
complete_compressedfilename = strcat(compressed_filename,'.mat');
%--------------------------------------------------------------------------
% Image decompression
% -------------------------------------------------------------------------
Irec = pca_decompression(compressed);
%--------------------------------------------------------------------------
% Visualization of original and decompressed image
% -------------------------------------------------------------------------
subplot(1,2,1),
imshow(uint8(I)),title('Original image'),
subplot(1,2,2),
imshow(uint8(Irec)),title('PCA eigen-patch image');
imwrite(uint8(Irec),'eyecompressed.jpg');
%--------------------------------------------------------------------------
% Performance evaluation
% -------------------------------------------------------------------------
mymessage = sprintf('%s%s','Input file: ',inputfilename);
disp(mymessage);
mymessage = sprintf('%s%s','Compressed file: ',complete_compressedfilename);
disp(mymessage);

dir_original   = dir(inputfilename);
dir_compressed = dir(complete_compressedfilename);

bytes_original   = dir_original(1).bytes;
bytes_compressed = dir_compressed(1).bytes;

mymessage = sprintf('%s%s','Bytes of input image: ',num2str(bytes_original));
disp(mymessage);
mymessage = sprintf('%s%s','Bytes of compressed data: ',num2str(bytes_compressed));
disp(mymessage);

cr = bytes_compressed/bytes_original;
mymessage = sprintf('%s%s','Compression ratio: ',num2str(cr));
disp(mymessage);

I0 = double(I);
I1 = double(Irec);
Id = (I0-I1);

I0v = I0(:);
Idv = Id(:);

signal = sum(I0v.^2);
noise  = sum(Idv.^2);

SNR    = 10*log10(signal/noise);
mymessage = sprintf('%s%s','SNR Signal to Noise Ratio: ',num2str(SNR));
disp(mymessage);

MSE  = noise/numel(I0);
mymessage = sprintf('%s%s','MSE Mean Squared Error: ',num2str(MSE));
disp(mymessage);

peak = max(I0(:));
PSNR = 10*log10(peak^2/MSE);
mymessage = sprintf('%s%s','PSNR Peak Signal to Noise Ratio: ',num2str(PSNR));
disp(mymessage);

