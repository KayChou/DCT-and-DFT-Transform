function [output] = DCT_part(input)
%DCT Transform
%input is an N by N matrix
%output is the dct transform of input
shape = size(input);
N = shape(1);
matrix = zeros(N);
for i=0:N-1
    if i==0
        c = sqrt(1/N);
    else
        c = sqrt(2/N);
    end
    for j=0:N-1
        matrix(i+1, j+1) = c * cos( pi*(j+0.5)*i/N );
    end
end
input = double(input);
result = matrix * input * matrix';

output = zeros(shape);
for i = 1:6
    for j = 1:i
        output(i, j) = result(i, j);
    end
end
end

