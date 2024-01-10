fname = "arctic_b0539.wav";
[s, fs] = audioread(fname);

sound = s(:,1);
sound = sound(221*65:221*95);
egg = s(:,2);
egg = egg(221*65:221*95);

[gci,gco] = dypsa(sound,fs);

%differnced egg finding.
n = length(egg);
x = zeros(n, 1);

for k=2:n
    x(k) = egg(k) - egg(k-1);
end

y = zeros(length(sound), 1); 
N = length(gci);

for i = 1:N 
    y(gci(i)-8,1) = 1;
end

frames = 1:length(sound);
figure()
subplot(2,1,1);
plot(y(2050:4650,1));
%plot(y)
ylim([-0.5,2]);
xlabel("frames")
title("Epochs detected through DYPSA (corrected)");
subplot(2,1,2);
plot(x(2050:4650,1)/max(abs(x)));
%plot(x/abs(max(x)))
xlabel("frames")
title("Differenced egg signal")

