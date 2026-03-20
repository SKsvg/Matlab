%frequency domain
%f=zeros(30,30);
%f(5:24,13:17)=1;

%F=fft2(f,256,256);
%F2=fftshift(F);

%figure,
%subplot(1,2,1);imshow(f);
%subplot(1,2,2);imshow(log(1+abs(F2)),[]); %cleary visualyse frequencies

%apply
I= imread('camera.jpg');
I=im2double(I);

F=fft2(I);
F_shift=fftshift(F);

figure,
imshow(log(1+abs(F_shift)),[]);
title('frequency spectram');