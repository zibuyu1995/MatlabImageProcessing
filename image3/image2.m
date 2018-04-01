A=imread('lenna.jpg');
figure   % 建立图像
B=rgb2gray(A);% rgb图像转灰度图像
subplot(1,3,1),% 显示位置
imshow(B)% 显示图像
title('灰度图像')%
[A1,map]=gray2ind(B,63);%最小方差量化将图像转变为索引图像
subplot(1,3,2),
imshow(A1,map)
title('灰度图像转索引图像')
RGB=ind2rgb(A1,map)% 索引图像转彩色图像
subplot(1,3,3)
imshow(RGB);
title('索引图像变彩色图像')
