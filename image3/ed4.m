close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
G1 = imadjust(I,[0 1],[1 0]);
G2 = imadjust(I,[0.25 0.75],[0 1]);
G3 = imadjust(I,[0 1],[0 1],2);
subplot(241);
imshow(G1);
title('��תͼ��');
subplot(242);
imshow(G2);
title('����ͼ��');
subplot(243);
imshow(G3);
title('Gamma��ǿͼ��');
subplot(244);
imshow(I);
title('ԭͼ��');
subplot(245);
imhist(G1);
title('��ת�Ҷ�ֱ��ͼ');
subplot(246);
imhist(G2);
title('����Ҷ�ֱ��ͼ');
subplot(247);
imhist(G3);
title('Gamma��ǿ�Ҷ�ֱ��ͼ');
subplot(248);
imhist(I);
title('ԭֱ��ͼ');