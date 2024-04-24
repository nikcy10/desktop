clc, clear

f = imread('img_3.tif');
low1 = min(min(f))
high1 = max(max(f))

F = abs(fft2(f));

low2 = min(min(F))
high2 = max(max(F))

figure(1), imshow(uint8(f)), title('OG Image')
figure(2), imagesc(fftshift(log(1+F))), title('Fourier Spectrum')

