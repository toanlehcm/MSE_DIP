% Read an Image from disk. Convert it to grey image and normalize it's
% value to (0,1). Set threshold = 0.5 (or many number you like), and
% display the resulted binary image.


I = imread('Image\2.jpg');
E = double(rgb2gray(I));
F = double(E/max(E(:)));
%R = im2bw(E, 0.3);

%chuyển thành đen trắng với ngưỡng 0.4
R = imbinarize(F,0.4);
subplot (1,3,1); imshow(I), title("Original")
subplot (1,3,2); imshow(F), title("Grey with nomalize")
subplot (1,3,3); imshow(R), title("WB with threshold = 0.4")