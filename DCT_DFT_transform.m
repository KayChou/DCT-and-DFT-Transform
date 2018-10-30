clear;
img = imread("lena.jpg");
subplot(1, 3, 1);
imshow(img);
title("Origin Image");

% DCT Transform
img_dct = dct2(img);
subplot(1, 3, 2);
imshow(img_dct)
title("DCT Transform")

% DFT Transform
shape = size(img);
dft_matrix = dctmtx(shape(1));
img_dft = dft_matrix*double(img)*dft_matrix';
subplot(1, 3, 3);
imshow(img_dft);
title("DFT Transform");
