close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
% 线性变换
I = im2double(I);
k = 1.2;
t = linspace(0,1,256);% 产生0到1 256个点行矢量
if k > 0
    T1 = k.*t;
else
    T1 = k.*t + 1;
end
t = linspace(0,1,numel(T1));% 产生0到1 T1中元素总数的点行矢量
G1 = interp1(t,T1,I);% 差值函数，线性变换y=T1,X=z，计算I的值
subplot(331);
imshow(G1);
title('线性变换');
subplot(334);
plot(t,T1);
title('线性变换函数');
xlabel('输入值');
ylabel('输出值');
subplot(337);
imhist(G1);
title('线性变换灰度直方图');

% 对数变换
c = 1;
t = 0:255;
T2 = c*log(t);
T2 = T2./max(T2);
z = linspace(0,1,numel(T2));
G2 = interp1(z,T2,I);
subplot(332);
imshow(G2);
title('对比度变换');
subplot(335);
plot(t/max(t),T2);
title('对比度变换函数');
xlabel('输入值');
ylabel('输出值');
subplot(338);
imhist(G2);
title('对比度变换直方图');

% 幂变换
a = 2;
t = 0:255;
T3 = t.^a;
T3 = T3./max(T3);
z = linspace(0,1,numel(T3));
G3 = interp1(z,T3,I);
subplot(333);
imshow(G3);
title('�ݺ����任');
subplot(336);
plot(t/max(t),T3);
title('�ݺ����任����');
xlabel('����ֵ');
ylabel('���ֵ');
subplot(339);
imhist(G3);
title('�ݺ����任�Ҷ�ֱ��ͼ');


