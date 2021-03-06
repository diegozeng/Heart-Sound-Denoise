function [] = Moveaverage(N)
% Moving average algorithm (Low-pass characteristic)
% N is the length of the sequence
% 'data' is the original signal sequence
% Finally, store the results in matrix 'z'
% 'tic' and 'toc' are used to calculate the running time of the program 
tic;
x = zeros(1,N);
syms i j k;
i = 0;
j = 0; 
k = 0;
da = evalin('base','data');
Len = size(da,1);
b = zeros(1,Len);
syms count;
syms sum;
sum = 0;
Len
while(j<Len)   
    x(i+1) = da(j+1);
    i = i + 1;
    j = j + 1;
    if (i == N)
        i = 0;
    end
% It is better to use vector to replace 'for-loop' in m-file.
    for count = 1:1:N   
        sum = sum + x(count);
        a = sum/N;
    end
    sum = 0;
    b(k+1) = a;
    k = k + 1;
end
assignin('base','z',b);
toc;    
