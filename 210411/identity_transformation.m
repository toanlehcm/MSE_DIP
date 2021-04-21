% -1
% x = uint8(0:255);
% plot(x); xlim([0 255]); ylim([0 255]);
% --2---
% I = imread('moon.tif');
% I_adj = x(I + 100);
% figure, subplot(1,2,1), imshow(I), title('Original Image');
% subplot(1,2,2), imshow(I_adj), title('Adjusted Image');
% --3---
% y = uint8(255:-1:0); I_neg = y(I + 1);
% figure, subplot(1,3,1), plot(y), ...
% title('Transformation Function'), xlim([0 255]), ylim([0 255]);
% subplot(1,3,2), imshow(I), title('Original Image');
% subplot(1,3,3), imshow(I_neg), title('Negative Image');
% --4---
% I_cmp = imcomplement(I);
% I_dif = imabsdiff(I_cmp,I_neg);
% figure, imshow(I_cmp)
% figure, imshow(I_dif,[])
% --5. Close all open ﬁgures and clear all workspace variables.
% --6. Generate a logarithmic transformation function.
x = 0:255; c = 255 / log(256);
y=c*log(x + 1);%tang do sang
figure, subplot(2,2,1), plot(y), ...
title('Log Mapping Function'), axis tight, axis square
% --7. Use the transformation function to generate the adjusted image.
I = imread('Atrium2.jpg');
I_log = uint8(y(I + 1));
subplot(2,2,2), imshow(I), title('Original Image');
subplot(2,2,3), imshow(I_log), title('Adjusted Image');
% --8. Show a brightened version of the image.
I_br = imadd(I,100);
subplot(2,2,4), imshow(I_br), title('Original Image Scaled');
% y(x) = exp(x/c) - 1;
% --9
z = exp(x/c) - 1;
I_invlog = uint8(z(I_log + 1));
figure, subplot(2,1,1), plot(z), title('Inverse-log Mapping Function');
subplot(2,1,2), imshow(I_invlog), title('Adjusted Image');




