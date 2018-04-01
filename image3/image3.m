I=imread('lenna.jpg');
J=rgb2gray(I);% rgb图像转灰度图像
subplot(2,3,1),imshow(J);title('灰度图像')% 
J=double(J);%将像素值转换为双精度浮点型
[m,n]=size(J);%取图像矩阵长和宽
sumg=0.0;
for i=1;m;
for j=1;n;
sumg=sumg+J(i,j);
end
end
avg=sumg/(m*n) 
maxg=max(max(J)) % 返回图像矩阵最大值
ming=min(min(J)) % 返回图像矩阵最小值
whos; 
