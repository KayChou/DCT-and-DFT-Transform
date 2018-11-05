function [output] = DFT_part(input)
%DCT Transform
%input is an N by N matrix
%output is the dct transform of input
shape = size(input);
N = shape(1);
matrix = zeros(N);
for m=1:N
    for n=1:N
        matrix(m, n) = exp(-j*2*pi*(m-1)*(n-1)/N);
    end
end

input = double(input);
result = matrix * input * matrix';

output = zeros(shape);
for m = 1:6
    for n = 1:m
        output(m, n) = result(m, n);
    end
end
end

