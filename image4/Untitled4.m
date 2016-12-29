I=imread('11.jpg');
J=imread('12.jpg');
K=imadd(I,J);
X=imsubtract(I,J);
Y=immultiply(I,J);
Z=imdivide(I,J);
subplot(321);imshow(I); title('原图'); 
subplot(322);imshow(J); title('原图');
subplot(323);imshow(K); title('加法'); 
subplot(324);imshow(X); title('减法');
subplot(325);imshow(Y); title('乘法'); 
subplot(326);imshow(Z); title('除法');

I=imfinfo('11.jpg')
J=imfinfo('12.jpg')
imwrite(K,'jiafa.jpg');
K=imfinfo('jiafa.jpg')
imwrite(X,'jianfa.jpg');
X=imfinfo('jianfa.jpg')
imwrite(Y,'chengfa.jpg');
Y=imfinfo('chengfa.jpg')
imwrite(Z,'chufa.jpg');
Z=imfinfo('chufa.jpg')