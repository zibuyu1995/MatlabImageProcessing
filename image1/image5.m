close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
N = imnoise(I,'salt & pepper');%添加椒盐噪声默认为0.5
H = fspecial('average');%正方形均值掩膜
G1 = imfilter(N,H);%均值滤波
G2 = medfilt2(N);%2维中值滤波
subplot(221);
imshow(I);
title('原图像');
subplot(222);
imshow(N);
title('加椒盐噪声图像');
subplot(223);
imshow(G1);
title('均值滤波图像');
subplot(224);
imshow(G2);
title('中值滤波图像');
