clc, clear
f = imread('img_3.tif');
[row,col] = size(f);
r1 = 150;
r2 = 200;

for x = 1:1:row
  for y = 1:1:col
    if f(x,y) >= r1 && f(x,y) <= r2
      g1(x,y) = 255; %with background
      g2(x,y) = 255; %without background
    else
      g1(x,y) = f(x,y);
      g2(x,y) = 0;
    endif
  endfor
endfor
g1;
g2;
figure(1), imshow(uint8(f)), title("OG IMAGE")
figure(2), imshow(uint8(g1)), title("Gray Level Slicing with BG")
figure(3), imshow(uint8(g2)), title("Gray Level Slicing w/o BG")

