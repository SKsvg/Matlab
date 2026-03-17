I=imread('coins.png');
if length(size(I))==3
    I=rgb2gray(I);
end

%bw=imbinarize(I);
se=strel('disk',5);

dilated=imdilate(bw,se);
eroded=imerode(bw,se);
opened=imopen(bw,se); %removes small objects from the foreground
closed=imclose(bw,se);

figure;
subplot(2,3,1);imshow(I); title('Original image');
subplot(2,3,2);imshow(bw); title('Binary image');
subplot(2,3,3);imshow(dilated);title('Dilated');
subplot(2,3,4);imshow(eroded);title('Erosion');
subplot(2,3,5);imshow(opened);title('Opned');
subplot(2,3,6);imshow(closed);title('Closed');

%BW1 = zeros(9,10);
%BW1(4:6,4:7)=1;
%SE=strel('diamond',3);
%SE=[0 1 0;0 1 1;1 1 1];

%dilation
%BW2=imdilate(BW1,SE);

%erosion
%BW3=imerode(BW1,SE);

