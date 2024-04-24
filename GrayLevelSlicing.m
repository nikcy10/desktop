clc, clear
% f = [3 4 7 ; 6 5 0 ; 2 2 1 ; 1 5 7 ; 0 6 2]
f = imread('img_3.tif');
r1 = 150;
r2 = 200;
[row,col] = size(f);
for x = 1:1:row
  for y = 1:1:col
    if f(x,y) >= r1 && f(x,y) <= r2
      g1(x,y) = 255; %without background
      g2(x,y) = 255; %with background
    else
      g1(x,y) = 0; %without background
      g2(x,y) = f(x,y); %with background
    endif
  endfor
end
g1;
g2;
figure(1), imshow(uint8(f)), title('OG IMAGE')
figure(2), imshow(uint8(g1)), title('Without Background')
figure(3), imshow(uint8(g2)), title('With Background')
