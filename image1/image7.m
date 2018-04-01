clear all;
f=imread('moon.tif');
w=fspecial('laplacian',0);%建立预定义的拉普拉斯滤波算子
g1=imfilter(f,w,'replicate');%对任意类型数组或多维图像进行滤波
subplot(221);
imshow(g1);
f2=im2double(f); 
g2=imfilter(f2,w,'replicate');
subplot(222);
imshow(g2,[]);
g=f2-g2;%原图减去此滤波结果,以还原失去的灰度色调
subplot(223);
imshow(g);
subplot(224);
imshow(f);
title('原图像');

