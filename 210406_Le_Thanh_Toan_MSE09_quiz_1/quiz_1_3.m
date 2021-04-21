I0 = imread('nature_1080x1920.jpeg');
I0 = rgb2gray(I0); 
quarter_1 = I0(:, 1:270) -150;
quarter_2 = I0(:, 271:540) -75;
quarter_3 = I0(:, 541:810) -25;
quarter_4 = I0(:, 811:1080);
newImg = cat(2, quarter_1,quarter_2,quarter_3,quarter_4);
figure(4) ; imshow(newImg) ;