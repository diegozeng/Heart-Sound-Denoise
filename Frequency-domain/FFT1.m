function [] = FFT1(a,N)
Y = fft(a,N);
Pyy = Y.*conj(Y)/N;
f = 3000*(0:N/4)/(N/2); % Sample frequency is 6000 Hz
plot(f,Pyy(1:N/4+1))
figure
title('FFT analysis')
xlabel('Frequency(Hz)')