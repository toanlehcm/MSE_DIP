I1 = imread('nature_1080x1920.jpeg');
I2 = imread('nature_1080x1920_2.jpeg');
figure(1); imshow(I1);
figure(2); imshow(I2);

a1 = I1(:, 1:540, :);
a2 = I1(:, 541:1080, :);
b1 = I2(:, 1:540, :);
b2 = I2(:, 541:1080, :);
newImg_1 = cat(2,a1,b2);
figure(3); imshow(newImg_1);
% -----

a3 = I1(1:960, :, :);
a4 = I1(961:1920, :, :);
b3 = I2(1:960, :, :);
b4 = I2(961:1920, :, :);
newImg_2 = cat(1,b4,a3);
figure(4); imshow(newImg_2);