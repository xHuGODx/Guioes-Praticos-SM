function [x,t] = funcao1b(Ta,f0,Np,ck)
%- 𝑇𝑎: Período de amostragem, em segundos;
%- 𝑓0: Frequência do sinal composto, em Hz;
%- 𝑁𝑝: Número de períodos a considerar para o sinal resultante;
%- c𝑘: Vetor (𝐾x1) com os valores de c𝑘 da série;

  N = round(Np/(f0*Ta));
  t = (0:N-1)*Ta;
  sumK = 0;
  for k = 1 : length(ck)
    ka = (1-length(ck))/2 + k-1;
    sumK = sumK + ck(k) * exp(1j*2*pi*ka*f0*t);
  end
  x = sumK;
  
end