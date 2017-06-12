A=imread('lenna.jpg'); %读入原始矩阵
[A1,map]=rgb2ind(A,110);%用最小方差量化将A转换为索引图像A1，map中至少含有110个颜色
A2=rgb2gray(A);%将A转换为灰度图像A2使用
A3=im2bw(A,0.5); %将A转换为二值图像A3使用，阈值设定为0.5，图像数据中凡是超过255*0.5=127.5的都变为255，否则变为0
subplot(2,2,1),imshow(A);%将A放在2行2列的平面上，第一行第一列，从左到右第一个位置；显示A图
xlabel('彩色图像');%在X轴上显示“彩色图像”
subplot(2,2,2),imshow(A1,map);
xlabel('索引色图像');
subplot(2,2,3),imshow(A2);
xlabel('灰度图像');
subplot(2,2,4),imshow(A3);
xlabel('二值图像');
whos   %列出所有信息