% 1. Load and display the blobs test image.
I = imread('Atrium2.jpg');
figure(1), imshow(I), title('Original Image');
% Dilation
% 2. Create a 3x3 structuring element with all coefﬁcients equal to 1.
SE_1 = strel('square',3);
% 3. Perform dilation using the generated SE and display the results.
I_dil_1 = imdilate(I,SE_1);
figure(2), imshow(I_dil_1), title('Dilated with 3x3');
% Let us now see what happens when using a SE shape other than a square.
% 4. Create a 1 × 7 SE with all elements equal to 1 and dilate the image.
SE_2 = strel('rectangle', [1 7]);
I_dil_2 = imdilate(I, SE_2);
figure(3), imshow(I_dil_2), title('Dilated with 1x7');
SE_2_2 = strel('rectangle', [7 1]);
I_dil_2_2 = imdilate(I, SE_2_2);
figure(4), imshow(I_dil_2_2), title('Dilated with 7x1');
