%%%%%%% COMPUTING 2D DFT %%%%%%%%%%%%

clc, clear
f1 = double(imread('img_3.tif'));
[row,col] = size(f1);
for x = 1:1:row
  for y = 1:1:col
    f(x,y) = f1(x,y) * (-1)^ (x+y);
  endfor
endfor
F = fft2(f);
figure(1), imshow(uint8(f1)), title("OG IMAGE")
figure(2), imagesc(log(1+abs(F))), title("MAGNITUTDE SPECTRUM")

%%%%%%% COMPUTING 2D DFT ENDS %%%%%%%%%%%%

%%%%%%% DESIGNING OF H(u,v) %%%%%%%%%%%%

D0 = 35;
n = 2;
for u = 1:1:row
  for v = 1:1:col
    D(u,v) = sqrt(((u-(row/2))^2) + ((v-(col/2))^2));
    H(u,v) = 1 - (1 / (1+((D(u,v)/D0) ^ 2*n)));
  endfor
endfor
figure(3), imshow(uint8(D)), title("DISTANCE IMAGE")
figure(4), imshow(H), title("FILTER")
figure(5), mesh(H)

%%%%%%% DESIGNING OF H(u,v) ENDS %%%%%%%%%%%%

%%%%%%%% FILTERING %%%%%%%%%%%

G = F .* H;
g = ifft2(G);
figure(6), imshow(uint8(abs(g))), title("FILTERED IMAGE")

%%%%%%% FILTERING ENDS %%%%%%%%%%%%


