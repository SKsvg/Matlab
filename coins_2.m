I = imread('circles.png');

se = strel('disk',3);

bw=im2bw(I);

eroded=imerode(bw,se);
dilated=imdilate(eroded,se);

figure,
subplot(1,2,1);imshow(I);
subplot(1,2,2);imshow(dilated);
