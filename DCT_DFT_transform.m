clear;
img = imread("lena.jpg");
subplot(1, 3, 1);
imshow(img);
title("Origin Image");

% DCT Transform
img_dct = DCT_2D(img);
subplot(2, 3, 2);
imshow(img_dct)
title("DCT Transform")
subplot(2, 3, 5)
img_idct = IDCT_2D(img_dct);
imshow(img_idct);
title("IDCT Transform")

% DST Transform
%img_dst = dst(img);
img_dst = DST_2D(img);
subplot(2, 3, 3);
imshow(img_dst);
title("DST Transform");
subplot(2, 3, 6)
img_idst = IDST_2D(img_dst);
imshow(img_idst)
title("IDST Transform")
