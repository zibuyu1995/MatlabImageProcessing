close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
G = edge(I,'sobel');%edge函数的三个边缘检测器sobel，loG，和canny
subplot(121);
imshow(I);
title('原图像');
subplot(122);
imshow(G);
title('sobel边缘算子图像');