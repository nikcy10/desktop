clc, clear
% f = [3 4 7 ; 6 5 0 ; 2 2 1 ; 1 5 7 ; 0 6 2]
f = imread('img_3.tif');
r1 = 135;
[row,col] = size(f);
for x = 1:1:row
  for y = 1:1:col
    if f(x,y) > r1
      g(x,y) = 255;
    else
      g(x,y) = 0;
    endif
  endfor
end
g;
figure(1), imshow(uint8(f)), title('OG IMAGE')
figure(2), imshow(uint8(g)), title('THRESHOLD')
