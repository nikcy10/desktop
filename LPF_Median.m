clc, clear
f1 = uint8(imread('img_3.tif'));
f = imnoise(f1,'salt & pepper');
[row,col] = size(f);
g=f;

for x = 2:1:row-1
  for y = 2:1:col-1
    temp = [f(x-1,y-1) f(x-1,y) f(x-1,y+1) ...
            f(x,y-1) f(x,y) f(x,y+1) ...
            f(x+1,y-1) f(x+1,y) f(x+1,y+1)];
    temp1 = sort(temp);
    g(x,y) = temp1(5);
  endfor
endfor
g;
figure(1), imshow(uint8(f1)), title("OG IMAGE")
figure(2), imshow(uint8(f)), title("NOISY IMAGE")
figure(3), imshow(uint8(g)), title("MEDIAN FILTERED IMAGE")

