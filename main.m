clear;
addpath('./DCT')

img = imread("lena.jpg");
subplot(1, 3, 1);
imshow(img);
title("Origin Image");

% Global DCT Transform
img_dct = DCT_2D(img);
subplot(2, 3, 2);
imshow(img_dct)
title("ȫ��DCT�任")
subplot(2, 3, 5)
img_idct = IDCT_2D(img_dct);
imshow(uint8(img_idct));
title("ȫ��DCT���任")

% block DCT Transform
img_dct = blkproc(img, [8, 8], 'DCT_part');
subplot(2, 3, 3);
imshow(img_dct)
title("�ֿ�DCT�任")
subplot(2, 3, 6)
img_idct = blkproc(img_dct, [8, 8], 'IDCT_2D');
imshow(uint8(img_idct));
title("�ֿ�DCT��任")
