clear;
addpath('./DFT')

img = imread("lena.jpg");
subplot(1, 3, 1);
imshow(img);
title("Origin Image");

% Global DCT Transform
img_dft = DFT_2D(img);
subplot(2, 3, 2);
imshow(img_dft)
title("全局DFT变换")
subplot(2, 3, 5)
img_idft = IDFT_2D(img_dft);
imshow(abs(uint8(img_idft)));
title("全局DFT反变换")

% block DCT Transform
img_dft = blkproc(img, [8, 8], 'DFT_part');
subplot(2, 3, 3);
imshow(abs(img_dft));
title("分块DFT变换")
subplot(2, 3, 6);
img_idft = blkproc(img_dft, [8, 8], 'IDFT_2D');
img_idft = abs(img_idft);
imshow(uint8(img_idft));
title("分块DFT逆变换")

