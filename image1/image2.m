close;clear;clc;
I = imread('redbloodcell.tif');
T = histeq(I); %ֱ 直方图均衡化
subplot(221);
imshow(I);
title('修正前图像');
subplot(222);
imshow(T);
title('修正后图像');
subplot(223);
imhist(I);
title('修正前直方图');
subplot(224);
imhist(T);
title('修正后直方图');