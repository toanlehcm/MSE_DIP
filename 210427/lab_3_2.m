im = imread('bird_with_noise.jpg');
subplot(2,4,1); imshow(im); title('origin image');
im_grey = rgb2gray(im);

radius=3; 
filter=ones(radius,radius)/(radius*radius); 
im2 = imfilter(im_grey, filter);
subplot(2,4,2); imshow(im2); title('radius = 3');

radius2=5; 
filter=ones(radius2,radius2)/(radius2*radius2); 
im3 = imfilter(im_grey, filter);
subplot(2,4,3); imshow(im3); title('radius = 5');

radius3=7; 
filter=ones(radius3,radius3)/(radius3*radius3); 
im4 = imfilter(im_grey, filter);
subplot(2,4,4); imshow(im4); title('radius = 7');
