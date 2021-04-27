im = imread('bird_with_noise.jpg');
subplot(2,4,1); imshow(im); title('origin image');
im_grey = rgb2gray(im);

base_filter=[0 0 0 0 0;1 1 1 1 1;0 0 0 0 0;-1 -1 -1 -1 -1;0 0 0 0 0]; 
im5 = imfilter(im_grey, filter);
subplot(2,4,5); imshow(im5); title('base filter angle = 0');

angle = 45;
filter=imrotate(base_filter,angle,'crop'); 
im6 = imfilter(im_grey, filter);
subplot(2,4,6); imshow(im6); title('base filter angle = 45');

angle = 90;
filter=imrotate(base_filter,angle,'crop'); 
im7 = imfilter(im_grey, filter);
subplot(2,4,7); imshow(im7); title('base filter angle = 90');

angle = 135;
filter=imrotate(base_filter,angle,'crop'); 
im8 = imfilter(im_grey, filter);
subplot(2,4,8); imshow(im8); title('base filter angle = 135');
