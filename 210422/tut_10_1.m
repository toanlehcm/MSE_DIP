% 1. Load and display the test image.
% I = imread('coins.png');
% figure, imshow(I), title('Original Image');

% 2. Display a histogram plot of the coins image to determine what threshold level to use.
% figure, imhist(I), title('Histogram of Image');

% 4. Set the threshold value to 85 and generate the new image.
% T = 85; I_thresh = im2bw(I,( T / 255));
% figure, imshow(I_thresh), title('Threshold Image (heuristic)');

% 5. Use the graythresh function to generate the threshold value automatically.
% T2 = graythresh(I);
% I_thresh2 = im2bw(I,T2);
% figure, imshow(I_thresh2), title('Threshold Image (graythresh)');

% 6. Close all open ﬁgures and clear all workspace variables.
% 7. Load the gradient_with_text image and prepare a subplot.
% I = imread('gradient_with_text.tif');
% figure, imshow(I), title('Original Image');

% 8. Globally threshold the image.
% I_gthresh = im2bw(I,graythresh(I));
% figure, imshow(I_gthresh), title('Global Thresholding');
% figure, imhist(I), title('Histogram of Original');