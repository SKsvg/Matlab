IFG=imread('fore.jpg');
IBG=imread('back.jpg');
alpha=0.6;
I=alphaBlend(IFG,IBG,alpha);
subplot(1,3,1);imshow(rgb2gray(IFG));hold on;
subplot(1,3,2);imshow(rgb2gray(IBG));hold on;
subplot(1,3,3);imshow(I);