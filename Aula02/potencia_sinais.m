function [potencia] = potencia_sinais(x,ts,t)
% x = sinal a ser analisado
% ta = periodo de amostragem
% T= periodo do sinal
n = t/ts;
potencia = x(1:n)*x(1:n)'/n;
end