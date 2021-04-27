% 1. Generate a filter mask using the following code: 
im = imread('statue_roman.jpg');
subplot(2,4,1); imshow(im); title('origin image');
im_grey = rgb2gray(im);
im_grey = im_grey/max(im_grey(:));
subplot(2,4,2); imshow(im_grey); title('grey image');