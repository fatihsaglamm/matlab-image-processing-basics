clear All;clc;
F=imread("Noisy2.png");% Load Noisy2.png Image 

H = ones(9, 9) / (9* 9);% 9*9 avrage filter
Clean=conv2(double(F), H, 'same');%apply H  filter F in same size.
Clean = uint8(Clean);% convert to unit8.



Hx=[-1,-2,-1;0,0,0;1,2,1];% Sobel filter to find horizontal edge
Hy=[-1,0,1;-2,0,2;-1,0,1];% Sobel filter to find vertical edge edge
imgx=abs(conv2(double(F), Hx, 'same'));%apply Hx  filter F in same size.
imgy=abs(conv2(double(F), Hy, 'same'));%apply Hy  filter F in same size.
Cimgx=abs(conv2(double(Clean), Hx, 'same'));%apply Hx  filter Clean in same size.
Cimgy=abs(conv2(double(Clean), Hy, 'same'));%apply Hy  filter Clean in same size.


Merge=imgy+imgx;% merge horizontal and vertical edges of F
CMerge=Cimgy+Cimgx; % merge horizontal and vertical edges of Clean
% Display Noisy2.png and its clean2 image and their edges in the  figure.
figure;
subplot(4,2,1);
imshow(F);
title("Noisy2");
subplot(4,2,2);
imshow(Clean);
title("Clean2");

subplot(4,2,3);
imshow(imgx)
title("horizontal of Noisy2");

subplot(4,2,4);
imshow(imgy);
title("vertical of Noisy2");
subplot(4,2,5);
imshow(Cimgx);
title("horizontal of Clean2");
subplot(4,2,6);
imshow(Cimgy);
title("vertical of Clean2");
subplot(4,2,7);

imshow(Merge);
title("horizontal and vertical of Noisy");

subplot(4,2,8);
imshow(CMerge);
title("horizontal and vertical of Clean2");






