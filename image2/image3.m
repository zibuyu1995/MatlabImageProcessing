I=imread('11.jpg'); 
J=imcrop(I,[60 90 100 90]); % rgb2＝imcrop(rgb，RECT)，对彩色图像进行非交互式剪切,RECT是四元素向量[xmin ymin width height] 
%J=imcrop(I,[60 50 600 500]);
 
 figure,
subplot(311);imshow(I); title('原图'); 
subplot(312);imshow(J); title('剪切后的图像');
%subplot(313);imshow(J); title('剪切后图像(2)');

I=imfinfo('11.jpg')
imwrite(J,'J1.jpg');
B=imfinfo('J1.jpg')