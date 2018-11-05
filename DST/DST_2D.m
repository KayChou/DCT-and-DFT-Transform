function [output] = DST_2D(input)
%DST Transform
%input is an N by N matrix
%output is the dct transform of input
shape = size(input);
N = shape(1);
matrix = zeros(N);
for i=1:N
    c = 2 / sqrt(2*N+1);
    for j=1:N
        matrix(i, j) = c * sin( pi*j*i / (N+1) );
    end
end
input = double(input);
output = matrix' * input * matrix;
end