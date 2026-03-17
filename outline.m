I=imread('batman.jpg');
if length(size(I))==3
    I=rgb2gray(I);
end

se=strel('disk',5);
bwhat=imerode(bw,se);
boundary=~(bw-bwhat);
figure;imshow(boundary);title('Boundary Detecton');