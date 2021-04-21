% Tu_1
I = imread('Atrium2.jpg');
imtool(I);
% Tu_3
x1 = 186; x2 = 211; y1 = 105; y2 = 159;
xmin = x1; ymin = y1; width = x2-x1; height = y2-y1;
I3 = imcrop(I, [xmin ymin width height]);
% figure(1); imshow(I3)

