I=imread('lena.jpg');
B=imcrop(I,[100 90 350 200]);% rgb2＝imcrop(rgb，RECT)，对彩色图像进行非交互式剪切,,
% RECT是四元素向量[xmin ymin width height] 例如：rgb2＝imcrop(rgb，[100 100 80 10])
subplot(121);imshow(I); title('原图'); 
subplot(122);imshow(B); title('剪切图');

B=rand(640,480)% 给B元素赋值
%B=rand(1,1) 
imwrite(B,'123.jpg');
B=imfinfo('123.jpg')