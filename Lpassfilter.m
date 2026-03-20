%ideal low-pass filter
img= imread('camera.jpg');
[M,N] = size(img);

F=fft2(img);
F_shift=fftshift(F);
D0=30;

[u,v]=meshgrid(-N/2:N/2-1,-M/2:M/2-1);
D=sqrt(u.^2+v.^2);

H=D<=D0;

G=H.*F_shift;
g=real(ifft2(ifftshift(G))); %Inverse Fast Fourier Transform
imshow(g,[]);
title('Low pass filtered image');