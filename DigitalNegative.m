clc,clear
f = imread('img_3.tif');
[row,col] = size(f);

for x = 1:1:row
  for y = 1:1:col
    g(x,y) = 255 - f(x,y);
  endfor
endfor
g;
figure(1), imshow(uint8(f)), title("OG IMAGE")
figure(2), imshow(uint8(g)), title("DIGITAL NEGATIVE")

