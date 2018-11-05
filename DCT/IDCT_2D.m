function [output] = IDCT_2D(input)
%DCT Transform
%input is an N by N matrix
%output is the dct transform of input
shape = size(input);
N = shape(1);
matrix = zeros(N);
for m=0:N-1
    if m==0
        c = sqrt(1/N);
    else
        c = sqrt(2/N);
    end
    for n=0:N-1
        matrix(m+1, n+1) = c * cos( pi*(n+0.5)*m/N );
    end
end
input = double(input);
output = matrix' * input * matrix ;
end

