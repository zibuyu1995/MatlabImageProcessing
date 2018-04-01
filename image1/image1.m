close;clear;clc;
I = imread('lena.jpg');
gray = rgb2gray(I);
T1 = gray + 20;%亮度提高20
T2 = gray - 40;%亮度提高40
subplot(221);
imshow(T1);
title('亮度提高20图像');
subplot(222);
imshow(T2);
title('亮度提高40图像');
subplot(223);
imhist(T1);%ֱ显示图像直方图ʾ
title('亮度提高20直方图');
subplot(224);
imhist(T2);
title('亮度提高40直方图');
