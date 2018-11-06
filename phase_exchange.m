clear, clc
addpath('./DFT')

img1 = imread("lena.jpg");
img2 = rgb2gray( imread("pic.jpg") );

subplot(2, 3, 1)
imshow(img1);
title("Origin Image1");

subplot(2, 3, 4)
imshow(img2);
title("Origin Image2");

img1_dft = blkproc(img1, [8, 8], 'DFT_2D');
amp1 = abs(img1_dft);
phase1 = angle(img1_dft);
img2_dft = blkproc(img2, [8, 8], 'DFT_2D');
amp2 = abs(img2_dft);
phase2 = angle(img2_dft);

img11_dft = amp1 .* exp(1j*phase2);
img22_dft = amp2 .* exp(1j*phase1);
subplot(2, 3, 2)
imshow(img11_dft);
title("Phase exchange DFT Spectrum")
subplot(2, 3, 5)
imshow(img22_dft);


img1_idft = blkproc(img11_dft, [8, 8], 'IDFT_2D');
img2_idft = blkproc(img22_dft, [8, 8], 'IDFT_2D');

subplot(2, 3, 3)
imshow((uint8(img1_idft)));
title("Image1 IDFT");
subplot(2, 3, 6)
imshow((uint8(img2_idft)));
title("Image2 IDFT");