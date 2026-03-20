%resizing
%I= imread('camera.jpg');
%J=imresize(I,[128 128]);

%padding
I= imread('camera.jpg');
I=im2double(I);
H=[1 1 1;1 1 1;1 1 1]/9;
[K,L]=size(H);
[M,N]=size(I);

pad = floor(K/2);
padded = padarray(I,[pad pad]);

J=zeros(M,N);

for x= 1:M
    for y=1:N
        region=padded(x:x+K-1,y:y+L-1);
        J(x,y)=sum(sum(region.*H));
    end
end

imshow(J);