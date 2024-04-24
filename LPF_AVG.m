clc
clear

##f = [3 3 3 3 3 3 3 3;...
##     3 3 3 3 3 3 3 3;...
##     3 3 3 3 3 3 3 3;...
##     3 3 3 3 3 3 3 3;...
##     201 201 201 201 201 201 201 201;...
##     201 201 201 201 201 201 201 201;...
##     201 201 201 201 201 201 201 201;...
##     201 201 201 201 201 201 201 201]

f1 = uint8(imread('img_3.tif'));
f = imnoise(f1,'gaussian');

[row,col] = size(f);
W = [1 1 1;1 1 1;1 1 1]/9;
g=f;

for x = 2:1:row-1
  for y = 2:1:col-1
    g(x,y) = f(x-1,y-1)*W(1,1) + f(x-1,y)*W(1,2) + f(x-1,y+1)*W(1,3)+...
             f(x,y-1)*W(2,1) + f(x,y)*W(2,2)  + f(x,y+1)*W(2,3)+...
             f(x+1,y-1)*W(3,1) + f(x+1,y)*W(3,2) + f(x+1,y+1)*W(3,3);
  end
end
g;
figure(1),imshow(uint8(f1)),title('OG Image')
figure(2),imshow(uint8(f)),title('Noisy Image')
figure(3),imshow(uint8(g)),title('Low Pass Averaging Filtered Image')
