clc;clear;
A=imread('lena.jpg');
B=rgb2gray(A);
subplot(2,2,1);imshow(B);title('原灰度图');
C=imnoise(B,'salt & pepper',0.04);
subplot(2,2,2);imshow(C);title('加噪声后图像');
PSF=fspecial('motion',9,2); % PSF为点扩散函数，默认
J=deconvreg(A,PSF,1000);   % NSR为信噪比
subplot(2,2,3);imshow(J);title('规则维纳滤波后图像');
K=deconvwnr(A,PSF,1);
subplot(2,2,4);imshow(K);title('无规则维纳滤波后图像');