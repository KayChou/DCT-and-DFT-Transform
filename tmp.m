clear;clc
addpath('./DFT')

img1 = imread("lena.jpg");
subplot(2, 3, 1)
imshow(img1);
title("Origin Image1");

img1_dft = DFT_2D(img1);
subplot(2, 3, 2);
imshow(img1_dft)
title("È«¾ÖDFT±ä»»")

subplot(2, 3, 5)
img1_idft = IDFT_2D(img1_dft);
imshow(abs(int8(img1_idft)));
title("Image1 IDFT");

