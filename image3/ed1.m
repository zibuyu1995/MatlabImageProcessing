close;clear;clc;
I = imread('lena.jpg');
gray = rgb2gray(I);
T1 = gray + 20;%亮度提高20
T2 = gray - 40;%亮度降低40
subplot(221);
imshow(T1);
title('亮度提高20后的图像');
subplot(222);
imshow(T2);
title('亮度降低40后的图像');
subplot(223);
imhist(T1);%直方图显示
title('亮度提高20后直方图');
subplot(224);
imhist(T2);
title('亮度降低40后直方图');
