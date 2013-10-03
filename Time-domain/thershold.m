function [] = thershold(A)
% 'A' can be changed according to difference situations (A = 0.015)
% 'value' is valid value and 'new_value' is the sampling value at current time
% The valid actual value will be returned by this program
% 'tic' and 'toc' are used to calculate the running time of the program 
tic;
syms value
value = evalin('base','data');
Len = size(value,1)
syms i
b = zeros(1,Len-1);
b(1)= value(1);
i = 2;
while(i<Len)
    if (abs(value(i) - value(i-1))<A)
        b(i) = value(i);
    else
        b(i) = b(i-1);
    end
    i=i+1;
end
assignin('base','y',b);
toc;    
