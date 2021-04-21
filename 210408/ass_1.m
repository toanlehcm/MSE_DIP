I = imread('Atrium2.jpg');
subplot(1, 4, 1); imshow(I);
subplot(1, 4, 2); imshow(I(:,:,1));
subplot(1, 4, 3); imshow(I(:,:,2));
subplot(1, 4, 4); imshow(I(:,:,3));
% chi ve 1 ma tran, 1 layer