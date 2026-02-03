function H = eqttist(H,I)
if length(size(I))==3
    I=rgb2gray(I);
end
[m,n]=size(I);
for i=1:m
    for j=1:n
        a = I(i,j);
        b = floor((H(a)*255)/(m*n));
        H(i,j)=b;
    end
end
    