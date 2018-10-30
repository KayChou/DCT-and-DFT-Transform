clear; clc;
N=4;
X =[26    18    87    85;
    80    26    58    62;
    43    15    55    35;
    91    14    14    51];
A=zeros(N);
for i=0:N-1
    if i==0
        c=sqrt(1/N);
    else
        c=sqrt(2/N);
    end 
    for j=0:N-1          
        A(i+1,j+1)=c*cos(pi*(j+0.5)*i/N);
    end
end
D = A*X*A';
DD = dct2(X);
imshow(DD)
