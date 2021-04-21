I = imread('Atrium2.jpg');
I_sm2 = imresize(I,0.5,'nearest');
I_sm3 = imresize(I,1.5,'bilinear');
I_sm4 = imresize(I,2.5,'bicubic');
figure, subplot(1,3,1), imshow(I_sm2), ...
title('Nearest-neighbor Interpolation');
subplot(1,3,2), imshow(I_sm3), title('Bilinear Interpolation');
subplot(1,3,3), imshow(I_sm4), title('Bicubic Interpolation');
