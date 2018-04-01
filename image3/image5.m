I=imread('lenna.jpg');
J1=imresize(I,1/2);% 1/2采样
J2=imresize(I,1/4);
J3=imresize(I,1/8);
subplot(1,4,1),subimage(I);title('原始图像');
subplot(1,4,2),subimage(J1);title('1/2采样');
subplot(1,4,3),subimage(J2);title('1/4采样');
subplot(1,4,4),subimage(J3);title('1/8采样');
figure;% 建立图像
K1=I/2;
K2=I/8;
K3=I/16;
subplot(1,4,1),subimage(I);title('256灰度级量化');
subplot(1,4,2),subimage(K1);title('128灰度级量化');
subplot(1,4,3),subimage(K2);title('32灰度级量化');
subplot(1,4,4),subimage(K3);title('16灰度级量化');
