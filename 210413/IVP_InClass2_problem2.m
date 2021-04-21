% Perform Gamma correction to the grey Image. The transform equation is
% S = C*r^y, where r is the input intensity, s is the output intensity, c
% is constant is usually get 1, is the parameter that you could change. Set
% y =0.2, 1 and 5. Sisplay and compare the different results.


I = imread('Image\2.jpg');
E = double(rgb2gray(I));
F = double(E/max(E(:)));

%Gamma correctio bằng hàm imadjust
R1 = imadjust(F,[],[],0.2);
%Gamma correction bằng công thức S = C*r^y với C = 1.
R1_ = F.^0.2;


R2 = imadjust(F,[],[],1);
R2_ = F.^1;
R3 = imadjust(F,[],[],5);
R3_ = F.^5;

subplot (2,2,1); imshow(I), title("Original");
subplot (2,2,2); imshow(R1), title("Gamma y = 0.2");
subplot (2,2,3); imshow(R2), title("Gamma y = 1");
subplot (2,2,4); imshow(R3), title("Gamma y = 5");