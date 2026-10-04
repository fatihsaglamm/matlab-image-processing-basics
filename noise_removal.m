clear All;clc;

%Task1
A=imread("Noisy.png");% Load Noisy.png Image 
figure;
subplot(2,1,1);% Display Noisy.png and its histogram.
imshow(A);
title("Noisy");% put title of Noisy.png 
subplot(2,1,2);
imhist(A);% show Noisy.png Image'histogram
title("Noisy histogram");%put title of Noisy.png Image'histogram
%Task2
B = medfilt2(A,[15 15]);% Apply median filtering to reduce noise
imwrite(B,'Clean.png'); % Save the resultant image

figure;
subplot(1,2,1);%Display Noisy.png and its histogram.
imshow(B);

title("Clean");
subplot(1,2,2);
imhist(B);

title("Noisy histogram")



