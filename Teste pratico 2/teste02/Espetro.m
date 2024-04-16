function [X, f] = Espetro(x, Ta)
    %Retorna e apresenta o espetro (amplitude apenas) de um sinal (passado
    %através do seu vetor de amostras, x) amostrado com período de amostragem
    %Ta
    %O gráfico do espetro apresenta no eixo das abcissas a frequência em Hz,
    %desde -fa/2 + fa/2, onde f0 = 1/T0
    N = length(x);
    X = fftshift(fft(x))/N; 
    fa = 1./Ta;
    f = (0:N-1).*fa./N - fa./2;
    stem(f,abs(X))
    xlabel('Frequency (Hz)')
    ylabel('Magnitude')
    title('Magnitude')
    grid on
end

