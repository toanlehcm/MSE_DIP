I = imread('Atrium2.jpg');
I_big1 = imresize(I,3);
% figure, imshow(I), title('Original Image');
% figure, imshow(I_big1), ...
title('Enlarged Image w/ bicubic interpolation');
imtool(I)
% imtool(I_big1);
% ex_9
I_big2 = imresize(I,3,'nearest');
I_big3 = imresize(I,3,'bilinear');
figure, imshow(I_big2), ...
title('Resized w/ nearest-neighbor interpolation');
figure, imshow(I_big3), ...
title('Resized w/ bilinear interpolation');
