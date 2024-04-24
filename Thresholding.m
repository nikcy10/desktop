clc, clear
f = imread('img_3.tif');
[row,col] = size(f);
r1 = 135;

for x = 1:1:row
  for y = 1:1:col
    if f(x,y) < r1
      g(x,y) = 0;
    else
      g(x,y) = 255;
    endif
  endfor
endfor
g;
figure(1), imshow(uint8(f)), title("OG IMAGE")
figure(2), imshow(uint8(g)), title("THRESHOLDING")

