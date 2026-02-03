I = imread('cameraman.png');
h = histogram(I);
H = cumHist(h);
subplot(3,1,1);imshow(I);hold on;
subplot(3,1,2);bar(h);hold on;
subplot(3,1,3);bar(H);