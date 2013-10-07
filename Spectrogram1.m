function []=Spectrogram(data)
%Data is the time sequence of the Hs signal.
[b,f,t] = specgram(data,512,6000,512,384);
imagesc(t,f,20*log10(abs(b)))
axis xy
xlabel('Time(s)');
ylabel('Frequency(Hz)')
colormap(jet);
colorbar