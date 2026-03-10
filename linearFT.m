I=imread('lena.jpg');
F = fspecial('laplacian',0);
J = linearFilter(I,F);
subplot(1,2,1);imshow(rgb2gray(I));hold on;
subplot(1,2,2);imshow(J);hold on;