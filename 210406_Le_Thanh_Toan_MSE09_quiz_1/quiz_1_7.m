I0 = imread('chess_board.jpeg');
figure(1) ; imshow(I0) ;
red = I0(:, :, 1);
green = I0(:, :, 2);
blue = I0(:, :, 3);

black = red == 0 & green == 0 & blue == 0;
white = red == 255 & green == 255 & blue == 255;

blue(black) = 255;

green(white) = 0;
blue(white) = 0;

I1 = cat(3, red, green, blue);
figure(2) ; imshow(I1) ;