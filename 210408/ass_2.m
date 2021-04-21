I = imread('Atrium2.jpg');
I = imresize(I,2);
imtool(I);
I2(:,:,1) = I(:,:,3); %first layer of I2 is blue
I2(:,:,2) = I(:,:,2); %second layer of I2 is green
I2(:,:,3) = I(:,:,1); %third layer of I2 is red
figure; imshow(I2)