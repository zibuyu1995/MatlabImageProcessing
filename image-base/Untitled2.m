I=imread('lenna.jpg');
J=rgb2gray(I);%将I转换为灰度图像J使用
subplot(2,3,1),imshow(J);title('灰度图像')%将B放在2行3列的平面上，第一行第一列，从左到右第一个位置；显示B图；给B图加一个标题“灰度图像”
J=double(J);%将像素值转换为浮点数据双精度
[m,n]=size(J);%取矩阵（图像I）的长和宽
sumg=0.0;
for i=1;m;%循环，i的值从1取到m
for j=1;n;
sumg=sumg+J(i,j);
end
end
avg=sumg/(m*n)
maxg=max(max(J))
ming=min(min(J))
whos; 
