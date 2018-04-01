I=imread('11.jpg'); 
B=imresize(I,1/3);  % B=imresize(A,m,method) 返回为A的m倍]大小的图像
C=imresize(I,3,'nearest');
figure,
subplot(311);imshow(I); title('原图'); 
subplot(312);imshow(B); title('缩小1/3后图像');
subplot(313);imshow(C); title('放大3后图像');
disp('图像灰度平均值ֵ')
mean2(I);

  
I=imfinfo('11.jpg')
imwrite(B,'01.jpg');
B=imfinfo('01.jpg')
imwrite(C,'02.jpg');
C=imfinfo('02.jpg')