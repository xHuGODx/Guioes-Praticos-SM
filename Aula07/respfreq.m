function [H,f] = respfreq(num,den,fa)
    [H1,~] = freqz(num,den,1024,fa, 'whole');
    N = length(H1);
    f = (-N/2 : N/2 - 1) * (fa/N);
    aux = fftshift(H1);
    H = abs(aux).^2;
    plot(f,H);
end