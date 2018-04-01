clc;clear;
A=imread('lena.jpg');
B=rgb2gray(A);
subplot(2,2,1);imshow(B);title('原灰度图');
C=imnoise(B,'salt & pepper',0.04);
subplot(2,2,2);imshow(C);title('加噪声后图像');
PSF=fspecial('motion',9,0); % PSF为点扩散函数，默认
[K]=deconvblind(A,PSF);
subplot(2,2,3);imshow(K);title('盲滤波后图像');