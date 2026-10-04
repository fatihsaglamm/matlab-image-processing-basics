%% Q1 
clear all;clc;

image = imread('noisy1.png');% read noisy1.png
figure;
imshow(image); title('Orijinal');


x = size(image,1);% calculates the number of rows in  image
 y = size(image,2);% calculates the number of columns in  image
 xlabel(x);
 ylabel(y);
 figure;

imshow(image);% show image with  number of rows and number of columns
B = image ( 752:861, 819:975 );% Cut part of image to look clearly hitstogram of imagae.
figure;
imshow(B);% show B
figure;

imhist(B);% show hitstogram of B

% fourier transform  
A=double(image);
F = fft2(A); 
F_shifted = fftshift(F); 
magnitude_spectrum = log(abs(F_shifted) + 1); % we use Log  to better look fourier spektrum
figure;
imshow(magnitude_spectrum, []); title('Frekans Spektrum');
% İmage has Periodic Noise .


% We use  Notch idaelrerjekt Filtre to recover image.
[M, N] = size(image);
% adjust to find point correct 
D0 = 30; 
uk = 60; vk = 5; 

% Calculation of distances
[Dkp, Dkn] = deal(zeros(M, N));
for u = 1:M
    for v = 1:N
        Dkp(u, v) = sqrt((u - (M/2) - uk)^2 + (v - (N/2) - vk)^2);
        Dkn(u, v) = sqrt((u - (M/2) + uk)^2 + (v - (N/2) + vk)^2);
    end
end

% Notch idealreject filtre rule (Hnr)
Hnr = ones(M, N);
Hnr(Dkp <= D0) = 0;  
Hnr(Dkn <= D0) = 0;  

% show filter
figure;
imshow(Hnr, []); title('Notch Reject Filter');

% Apply  filter
F_filtered = F_shifted .* Hnr; 
F_filtered_shifted = ifftshift(F_filtered); 
recover = ifft2(F_filtered_shifted); 

% show recover image
figure;
imshow(recover, []); title('recover image');
Hx=[-1,-2,-1;0,0,0;1,2,1];% Sobel filter to find horizontal edge
Hy=[-1,0,1;-2,0,2;-1,0,1];% Sobel filter to find vertical edge edge
imgx=abs(conv2(double(image), Hx, 'same'));%apply Hx  filter F in same size.
imgy=abs(conv2(double(image), Hy, 'same'));%apply Hy  filter F in same size.
Cimgx=abs(conv2(double(recover), Hx, 'same'));%apply Hx  filter Clean in same size.
Cimgy=abs(conv2(double(recover), Hy, 'same'));%apply Hy  filter Clean in same size.
Merge=imgy+imgx;
CleanMerge=Cimgx+Cimgy;
figure;

subplot(4, 2, 1);
imshow(uint8(imgx));
title("Horizontal of noisy2 (1).png");

subplot(4, 2, 2);
imshow(uint8(imgy));
title("Vertical of noisy1.png");

subplot(4, 2, 3);
imshow(uint8(Cimgx));
title("Horizontal of Clean");

subplot(4, 2, 4);
imshow(uint8(Cimgy));
title("Vertical of Clean");

subplot(4, 2, 5);
imshow(uint8(Merge));
title("Horizontal and Vertical of noisy1.png");

subplot(4, 2, 6);
imshow(uint8(CleanMerge));
title("Horizontal and Vertical of recover");

imwrite(recover,'recover_noisy1.png');


 %% Q2
 clear all;clc;

A = imread("noisy2 (1).png");% read noisy2 (1).png
figure;

imshow(A);% show A
x = size(A,1);% calculates the number of rows in  image
 y = size(A,2);% calculates the number of columns in  image
 xlabel(x);
 ylabel(y);
 figure;

imshow(A);% show A with  number of rows and number of columns
B = A ( 752:861, 819:975 );% Cut part of image to look clearly hitstogram of imagae.
figure;
imshow(B);% show B
figure;

imhist(B);% show hitstogram of B
% If we analyze hitstogram of B, B has additive noise   which is uniUniform Noise

midf = ordfilt2(A,5,ones(5,5));% we use median filter  5*5 to recoverd

figure;
subplot(2,1,1);


imshow(midf);title('recover');
subplot(2,1,2);
imshow(A);
title('nosiy2');

Hx=[-1,-2,-1;0,0,0;1,2,1];% Sobel filter to find horizontal edge
Hy=[-1,0,1;-2,0,2;-1,0,1];% Sobel filter to find vertical edge edge
imgx=abs(conv2(double(A), Hx, 'same'));%apply Hx  filter F in same size.
imgy=abs(conv2(double(A), Hy, 'same'));%apply Hy  filter F in same size.
Cimgx=abs(conv2(double(midf), Hx, 'same'));%apply Hx  filter Clean in same size.
Cimgy=abs(conv2(double(midf), Hy, 'same'));%apply Hy  filter Clean in same size.
Merge=imgy+imgx;
CleanMerge=Cimgx+Cimgy;
figure;

subplot(4, 2, 1);
imshow(uint8(imgx));
title("Horizontal of noisy2 (1).png");

subplot(4, 2, 2);
imshow(uint8(imgy));
title("Vertical of noisy2 (1).png");

subplot(4, 2, 3);
imshow(uint8(Cimgx));
title("Horizontal of Clean");

subplot(4, 2, 4);
imshow(uint8(Cimgy));
title("Vertical of Clean");

subplot(4, 2, 5);
imshow(uint8(Merge));
title("Horizontal and Vertical of noisy2 (1).png");

subplot(4, 2, 6);
imshow(uint8(CleanMerge));
title("Horizontal and Vertical of Clean2");
imwrite(midf,'Clean.png'); % Save the resultant image

%% Q3
clear all;clc;
C= imread("noisy3.png");% read noisy2 (1).png
figure;

imshow(C);
x = size(C,1);% calculates the number of rows in  image
y = size(C,2);% calculates the number of coulamns in  image
xlabel(x);
ylabel(y);
D = C ( 752:861, 819:975 );% Cut part of image to look clearly hitstogram of imagae.
figure;
imshow(D);
figure;
imhist(D);

A = im2double(C); % make double image

% fourier transform  
F = fft2(A);
F_shifted = fftshift(F); 


magnitude_spectrum = log(abs(F_shifted) + 1); % we use Log  to better look fourier spektrum
title('Frekans Spektrum');
figure;
% İmage has motion blur.
imshow(magnitude_spectrum, []);
%linear motion of 25 and angle of 55
h = fspecial('motion',25,55);
% we use wiener filtering to recover

estimated_nsr = 0.0001 / var(A(:));


% additive noise of estimated noise to signal ratio(nsr)

T= deconvwnr(C,h,estimated_nsr);
figure;
title(T);

imshow(T),title('Filtered Image');
Hx=[-1,-2,-1;0,0,0;1,2,1];% Sobel filter to find horizontal edge
Hy=[-1,0,1;-2,0,2;-1,0,1];% Sobel filter to find vertical edge edge

imgx=abs(conv2(double(C), Hx, 'same'));%apply Hx  filter F in same size.
imgy=abs(conv2(double(C), Hy, 'same'));%apply Hy  filter F in same size.
Cimgx=abs(conv2(double(T), Hx, 'same'));%apply Hx  filter Clean in same size.
Cimgy=abs(conv2(double(T), Hy, 'same'));%apply Hy  filter Clean in same size.
Merge=imgy+imgx;
CleanMerge=Cimgx+Cimgy;
figure;

subplot(4, 2, 1);
imshow(uint8(imgx));
title("Horizontal of noisy2 (1).png");

subplot(4, 2, 2);
imshow(uint8(imgy));
title("Vertical of noisy2 (1).png");

subplot(4, 2, 3);
imshow(uint8(Cimgx));
title("Horizontal of Clean");

subplot(4, 2, 4);
imshow(uint8(Cimgy));
title("Vertical of Clean");

subplot(4, 2, 5);
imshow(uint8(Merge));
title("Horizontal and Vertical of noisy2 (1).png");

subplot(4, 2, 6);
imshow(uint8(CleanMerge));
title("Horizontal and Vertical of Clean2");
imwrite(T,'Clean.png'); % Save the resultant image




%% Q4
E= imread("noisy4.png");% read noisy2 (1).png
figure;

imshow(E);
x = size(E,1);% calculates the number of rows in  image
y = size(E,2);% calculates the number of coulamns in  image
xlabel(x);
ylabel(y);
R = E ( 752:861, 819:975 );% Cut part of image to look clearly hitstogram of imagae.
figure;
imshow(R);
figure;
imhist(R);% show histogram of image
A = im2double(E);

F = fft2(A);
F_shifted = fftshift(F);
magnitude_spectrum = log(abs(F_shifted) + 1);% we use Log  to better look fourier spektrum
figure;
imshow(magnitude_spectrum, []);
h = fspecial('disk',7);
% imega has disk. 
% we use wiener filtering to recover

estimated_nsr = 0.0001 / var(A(:));
title('Frekans Spektrum');
T= deconvwnr(E,h,estimated_nsr);
figure;
title(T);

imshow(T),title('Filtered Image');

Hx=[-1,-2,-1;0,0,0;1,2,1];% Sobel filter to find horizontal edge
Hy=[-1,0,1;-2,0,2;-1,0,1];% Sobel filter to find vertical edge edge
imgx=abs(conv2(double(C), Hx, 'same'));%apply Hx  filter F in same size.
imgy=abs(conv2(double(C), Hy, 'same'));%apply Hy  filter F in same size.
Cimgx=abs(conv2(double(T), Hx, 'same'));%apply Hx  filter Clean in same size.
Cimgy=abs(conv2(double(T), Hy, 'same'));%apply Hy  filter Clean in same size.
Merge=imgy+imgx;
CleanMerge=Cimgx+Cimgy;
figure;

subplot(4, 2, 1);
imshow(uint8(imgx));
title("Horizontal of noisy2 (1).png");

subplot(4, 2, 2);
imshow(uint8(imgy));
title("Vertical of noisy2 (1).png");

subplot(4, 2, 3);
imshow(uint8(Cimgx));
title("Horizontal of Clean");

subplot(4, 2, 4);
imshow(uint8(Cimgy));
title("Vertical of Clean");

subplot(4, 2, 5);
imshow(uint8(Merge));
title("Horizontal and Vertical of noisy2 (1).png");

subplot(4, 2, 6);
imshow(uint8(CleanMerge));
title("Horizontal and Vertical of Clean2");
imwrite(T,'Clean.png'); % Save the resultant image

