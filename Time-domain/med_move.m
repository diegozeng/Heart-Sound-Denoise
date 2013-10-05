function [] = Moveaverage(N)
% Moving average algorithm (Low-pass characteristic)
% N is the length of the sequence
% 'data' is the original signal sequence(1 column with ';' between elements)
% Finally, store the results in matrix 'z'
% 'tic' and 'toc' are used to calculate the running time of the program 

tic;
x = zeros(1,N);
syms i j q p; 
k = 0;
da = evalin('base','data');
Len = size(da,1);
da = da';
da = [x,da];
b = zeros(1,Len);
syms count;
syms sum;
sum = 0;
%Len
%It is better to use vector to replace 'for-loop' in m-file.
for i = 1:1:Len
    for j =1:1:N
    x(j) = da(i + j);
    end
    for q = 1:1:N-1
            for p = 1:1:N-q
                if(x(p) > x(p+1))
                    temp(p) = x(p);
                    x(p) = x(p+1);
                    x(p+1) = temp(p);
                end
            end
    end  
    for count = 1:1:N   
        sum = sum + x(count);
        a = (sum-max(x)-min(x))/(N-2);
    end
    sum = 0;
    b(i) = a;
end
assignin('base','z',b);
toc;    


            