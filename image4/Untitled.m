I=imread('11.jpg'); 
B1=imrotate(I,40,'nearest'); %最邻近插补
B2=imrotate(I,40,'bilinear');%双线性插补 
B3=imrotate(I,40,'bicubic'); %双立方插补
%三种方法的运算速度不同，画质不同。其中最邻近插补法的画质最差，
%图像旋转使用B=imrotate(A,angle,method)
figure,
subplot(221);imshow(I); title('原图'); 
subplot(222);imshow(B1); title('旋转 40°后图像');
subplot(223);imshow(B2); title('旋转 40°后图像');
subplot(224);imshow(B3); title('旋转 40°后图像');

I=imfinfo('11.jpg')
imwrite(B1,'00.jpg');
B1=imfinfo('00.jpg')