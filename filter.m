I = imread('lena.png');

if length(size(I))==3
    I=rgb2gray(I);
end

%applying gaussian noise
%I = imnoise(I, 'salt & pepper');

H = @(x) min(x(:));
JMin = nlfilter(I,[3 3],H);

H = @(x) max(x(:));
JMax = nlfilter(I,[3 3],H);

H = @(x) median(x(:));
JMedian = nlfilter(I,[3 3],H);



H1 = fspecial('average');
H2 = fspecial('gauss');
H3 = fspecial('laplacian');
H4 = fspecial('unsharp');

Box = imfilter(I,H1);
Gauss = imfilter(I,H2);
MexHat = imfilter(I,H3);
USM = imfilter(I,H4);

subplot(2,3,1); imshow(I); hold on; title('Input Image');
subplot(2,3,2); imshow(Box); hold on; title('Box Filter');
subplot(2,3,3); imshow(Gauss); hold on; title('Gaussian Filter');
subplot(2,3,4); imshow(MexHat); hold on; title('Mexican Hat Filter');
subplot(2,3,5); imshow(USM); hold on; title('USM Filter');