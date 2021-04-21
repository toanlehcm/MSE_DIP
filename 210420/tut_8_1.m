% Edge Detection Using the Prewitt Operator
% 1. Load and display the test image.
% I = imread('lenna.tif');
I=histeq(rgb2gray(imread('mandrill.tif')));
figure, subplot(2,2,1), imshow(I), title('Original Image');
% 2. Extract the edges in the image using the Prewitt operator.
[I_prw1,t1] = edge(I,'prewitt');
subplot(2,2,2), imshow(I_prw1), title('Prewitt, default thresh');
% 3. Add noise to the test image and extract its edges.
I_noise = imnoise(I,'gaussian');
[I_prw2,t2] = edge(I_noise,'prewitt');
subplot(2,2,3), imshow(I_noise), title('Image w/ noise');
subplot(2,2,4), imshow(I_prw2), title('Prewitt on noise');
% Edge Detection Using the Sobel Operator
% 4. Extract the edges from the test image using the Sobel edge detector.
[I_sob1,t1] = edge(I,'sobel');
figure, subplot(2,2,1), imshow(I), title('Original Image');
subplot(2,2,2), imshow(I_sob1), title('Sobel, default thresh');
% 5. Extract the edges from the test image with Gaussian noise using the Sobel edge detector.
[I_sob2,t2] = edge(I_noise,'sobel');
subplot(2,2,3), imshow(I_noise), title('Image w/ noise');
subplot(2,2,4), imshow(I_sob2), title('Sobel on noise');
% 6. Extract the edges from the test image with the Sobel operator with no thinning.
I_sob3 = edge(I,'sobel','nothinning');
figure, subplot(1,2,1), imshow(I_sob1), title('Thinning');
subplot(1,2,2), imshow(I_sob3), title('No Thinning');
% 7. Display the horizontal and vertical convolution results from the Sobel operator.
[I_sob4,t,I_sobv,I_sobh] = edge(I,'sobel');
figure
subplot(2,2,1), imshow(I), title('Original Image');
subplot(2,2,2), imshow(I_sob4), title('Complete Sobel');
subplot(2,2,3), imshow(abs(I_sobv),[]), title('Sobel Vertical');
subplot(2,2,4), imshow(abs(I_sobh),[]), title('Sobel Horizontal');
