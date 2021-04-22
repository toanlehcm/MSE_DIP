% We will start by exploring the grayslice function on a gradient image.
% 1. Create and display a gradient image.
% I = repmat(uint8([0:255]),256,1);
% figure, subplot(1,2,1), subimage(I), title('Original Image');

% 2. Slice the image and display the results.
% I2 = grayslice(I,16);
% subplot(1,2,2), subimage(I2,colormap(winter(16))), ...
% title('Pseudo-colored with "winter" colormap');

% 3. Slice the image into unequal partitions and display the result.
% levels = [0.25*255, 0.75*255, 0.9*255];
% I3 = grayslice(I,levels);
% figure, imshow(I3,spring(4))

% 4. Clear all variables and close any open figures.
% 5. Load and display the mri.jpg.
I = imread('mri.jpg');
figure, subplot(1,2,1), subimage(I), title('Original Image');
% 6. Pseudocolor the image.
I2 = grayslice(I,16);
subplot(1,2,2), imshow(I2, colormap(jet(16))), title('Pseudo-colored with "jet" colormap');
