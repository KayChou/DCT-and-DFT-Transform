clear;
img = imread("lena.jpg");
subplot(1, 3, 1);
imshow(img);
title("Origin Image");

% DCT Transform
img_dct = DCT_2D(img);
subplot(1, 3, 2);
imshow(img_dct)
title("DCT Transform")

% DST Transform
%img_dst = dst(img);
img_dst = DST_2D(img);
subplot(1, 3, 3);
imshow(img_dst);
title("DST Transform");
