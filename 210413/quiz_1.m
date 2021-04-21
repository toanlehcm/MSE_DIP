im = rgb2gray(imread('Image2.jpg'));
% im1 = im/max(im(:));
im = im2double(im)/max(im(:));
threshold=0.5;
im1(im1 <= threshold)=0;
im1(im1 > threshold)=0;
figure(1); imshow(im1);

