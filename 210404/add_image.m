I1 = imread('Atrium2.jpg')
I1 = imresize(I1, [667 1000]);

I2 = imread('Image2.jpg')
I2 = imresize(I2, [667 1000]);

% I3 = imadd(I1, I2);
I3 = bitand(I1, I2)
% bitand co gia tri den nhieu hon, vi 1 and 1 moi co gia tri la 1
figure, imshow(I3)


I4 = bitor(I1, I2); % bitor den nhieu hon
% imshow(I4)

I5 = 255 - I2; %tính từ trái sang phải
% figure, im show(I5);

I6 = bitxor(I1, I2);
% imshow(I6)

I7 = bitcmp(I1, I2);
imshow(I7)