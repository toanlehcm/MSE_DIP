im1 = rgb2gray(imread('Image2.jpg'));

% gama = 0,2;
im1_case1 = im1.^0.2; %1 ma tran va 1 constant
im1_case2 = im1.^1;
im1_case3 = im1.^5;
figure; 
subplot(2,2,1); imshow(im1); title(im1);
subplot(2,2,2); imshow(im1_case1); title(im1_case1);
subplot(2,2,3); imshow(im1_case2); title(im1_case2);
subplot(2,2,3); imshow(im1_case3); title(im1_case3);
