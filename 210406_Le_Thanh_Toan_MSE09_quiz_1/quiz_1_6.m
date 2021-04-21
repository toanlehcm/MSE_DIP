I1 = imread('nature_1080x1920.jpeg');
I2 = imread('nature_1080x1920_2.jpeg');
I3 = imread('nature_1080x1920_3.jpeg');
I4 = imread('nature_1080x1920_4.jpeg');

newImg_1 = cat(2,I1,I2);
newImg_2 = cat(2,I3,I4);
newImg_3 = cat(1,newImg_1, newImg_2);
figure(1); imshow(newImg_3);

