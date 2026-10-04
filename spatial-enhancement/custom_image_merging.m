clear All;clc;

A=imread("background.jpg");%load background.jpg. 
A=rgb2gray(A);%convert grayscale.
B=imread("Landspace.jpg");%load background.jpg.
B=rgb2gray(B);%convert grayscale
D = imresize(B,[413 612],'bicubic');% resize to same A's dimensions.
Merge=A+D;%merge A and D
% Display D,A and their merge  in same figure;
subplot(1,3,1);
imshow(D);
title('Landsapace');
subplot(1,3,2);
imshow(A);
title('Background');
subplot(1,3,3);
imshow(Merge);
title('Merge');


