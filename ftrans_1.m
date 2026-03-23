f=zeros(20,20);
f(1:4,1:6)=1;

f1=zeros(20,20);
f1(8:12,7:13)=1;

F = fft2(f);
F2 = fftshift(F);

F1 = fft2(f1);
F3 = fftshift(F1);

figure,
subplot(2,2,1);imshow(f);
subplot(2,2,2);imshow(log(1+abs(F2)),[]);
subplot(2,2,3);imshow(f1);
subplot(2,2,4);imshow(log(1+abs(F3)),[]);