clear All;clc;
A=imread("Moon.png");%load Moon.png.
figure;
subplot(1,3,1);
imshow(A);
B=imread("Image.png");%load Image.png.

subplot(1,3,2);

imshow(B);
Merge=B+A; %merge Image and Moon  

subplot(1,3,3);

imshow(Merge);% Display Image Moon and their merge  in same figure;
