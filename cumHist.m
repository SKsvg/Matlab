function H = cumHist(h)
H = zeros(1,256); %length(h)          H(0)=h(0)
H(1) = h(1);                         %H(i)=H(i-1)+h(i)    i=1,2,....,255
for i = 2:256
    H(i) = H(i-1)+h(i);
end