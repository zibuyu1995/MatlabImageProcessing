A=imread('lenna.jpg');
figure   %建立图形
B=rgb2gray(A);%将A转换为灰度图像B使用
subplot(1,3,1),%将B放在1行3列的平面上，第一行第一列，从左到右第一个位置
imshow(B)%显示B图
title('灰度图像')%给B图加一个标题“灰度图像”
[A1,map]=gray2ind(B,63);%用最小方差量化将B转换为索引图像A1，map中至少含有63个颜色
subplot(1,3,2),
imshow(A1,map)
title('灰度图像变索引图像')
RGB=ind2rgb(A1,map)%索引图转换为彩色图
subplot(1,3,3)
imshow(RGB);
title('索引图像变彩色图像')
