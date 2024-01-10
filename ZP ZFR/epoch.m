fname = "arctic_b0539.wav";
[s, fs] = audioread(fname);

sound = s(:,1);
sound = sound(221*65:221*95);
egg = s(:,2);
egg = egg(221*65:221*95);

n = length(egg);
x = zeros(n, 1);

for k=2:n
    x(k) = egg(k) - egg(k-1);
end

%[WinLen]=xcorrWinLen(s,fs);    % Window length for trend removal
[zfSig]=zp_zeroFreqFilter(sound,fs,0.98); % ZFF Signal
[epochs]=epochExtract(zfSig,0);  % Epoch Extraction

x = x(24:length(x));

figure()
subplot(2,1,1);
plot(epochs(2050:4650,1));
ylim([-0.5,2]);
xlabel("frames")
title("Epochs detected through zp-zff");
subplot(2,1,2);
plot(x(2050:4650,1)/max(abs(x)));
xlabel("frames")
title("Differenced egg signal")
