function [NumBits, NumBPS] = GeraMensagem2(f, CompMesg, nBits)

    % Gera uma mensagem aleatória com base nas frequências
    simbolos = 1:length(f);
    mensagem = randsample(simbolos, CompMesg, true, f);

    % Calcula o número total de bits
    NumBits = sum(nBits(mensagem));

    % Calcula o número médio de bits por símbolo
    NumBPS = NumBits / CompMesg;
end