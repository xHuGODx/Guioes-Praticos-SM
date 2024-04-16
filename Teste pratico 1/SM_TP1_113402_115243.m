
%%Por alguma razão aparece um subplot que não criamos que substitui o
%%gráfico "Sinal 1b)" passado alguns segundos. Não conseguimos corrigir mas
%%quando corremos o código relativo a este sinal separadamente aparece o
%%sinal corretamente.

%%1b)
ck = zeros(1,101);
for k = 1:length(ck)
    if rem((k-1),2)~=0
        ka = (1-length(ck))/2 + k-1;
        ck(k) = -4*1j/(pi*ka);
    end
end
Ta=0.001;
f0=0.5;
Np=5;

[x,t]=funcao1b(Ta,f0,Np,ck);
figure
plot(t,x);
title("Sinal 1b)")


%%2b)

[s, Fa]=exame(118,2);

N = length(s);
Ta = 1/Fa; 
t=(0:N-1).*Ta;
fs = (0:(N-1))*Fa/N-Fa/2; %periodo = 0.5s / frequência = 2Hz


%%2c)

X = (1/N) * fftshift(fft(s,N));
figure
plot(t,s);
title("Sinal 2c)")
grid on
xlabel("t(s)");
ylabel("s");
figure
stem(fs, abs(X));
title("Espetro 2c)")
grid on
xlabel("f(Hz)");
ylabel("Magnitude");

%%2f)

Flt = ones(1,length(fs));
Flt(fs<-12 | fs>12) = 0;
H = X .* Flt;
figure
stem(fs, abs(H))
title("Espetro filtrado 2f)")

x = ifft(ifftshift(H))*N;
fa = max(2)*2;
Ta = 1/fa;
t = (0:N-1)*Ta;

figure
plot(t,x);
title("Sinal filtrado 2f)")
xlabel("Tempo (s)");
ylabel("Amplitude");
grid;

