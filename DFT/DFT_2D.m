function [output] = DFT_2D(input)
%DCT Transform
%input is an N by N matrix
%output is the dct transform of input
shape = size(input);
N = shape(1);
matrix = zeros(N);
for m=1:N
    for n=1:N
        matrix(m, n) = exp(-1j*2*pi*(m-1)*(n-1)/N);
    end
end
input = double(input);
output = matrix * input * matrix';
end

