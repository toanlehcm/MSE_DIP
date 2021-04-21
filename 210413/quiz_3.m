% Convert the value of the gamma corrected image (when y=5) to integer
% ranging frome 0 to 255. Calculate and display its histogram. Perform
% histogram equalization to this image. Display the resulted image and the
% histogram of resulted image.


I = imread('Image2.jpg');
E = double(rgb2gray(I));
F = double(E/max(E(:)));
%R = im2bw(E, 0.3);
%R1 = imadjust(F,[],[],0.2);
%check đổi double sang uint8
R2 = imadjust(F,[],[],1);
R2 = uint8(round(R2*255));
    
R3 = imadjust(F,[],[],5); 
R3 = uint8(round(R3*255));

%tạo histogram của R3 
hist_1 = histcounts(R3,0:1:255);
hist_2 = histeq(R3,256);

subplot (2,2,1); imshow(R3), title("Gamma y = 5");
subplot (2,2,2); bar(hist_1), title("Histogram");
subplot (2,2,3); bar(hist_2), title("Histogram EQ");
subplot (2,2,4); imshow(hist_2), title("After hist EQ");