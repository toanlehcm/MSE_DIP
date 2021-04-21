I0 = imread('nature_1600x1080.jpeg');
quarter_1 = I0(1:270, 1:1600, :)+100;
quarter_2 = I0(271:540, 1:1600, :)+75;
quarter_3 = I0(541:810, 1:1600, :)+50;
quarter_4 = I0(811:1080, 1:1600, :)+25;
figure(4) ; imshow(quarter_4) ;
newImg = cat(1,quarter_1,quarter_2,quarter_3,quarter_4);
figure(4) ; imshow(newImg) ;