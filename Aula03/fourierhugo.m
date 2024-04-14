function [x,t] = fourierhugo(Ta,f,Np,a,b)
%- 𝑇𝑎: Período de amostragem, em segundos;
%- 𝑓0: Frequência do sinal composto, em Hz;
%- 𝑁𝑝: Número de períodos a considerar para o sinal resultante;
%- 𝑎𝑘: Vetor (𝐾x1) com os valores de 𝑎𝑘 da série;
%- 𝑏𝑘: Vetor (𝐾x1) com os valores de 𝑏𝑘 da série.
  N = round(Np/(f*Ta));
  t = (0:N-1)*Ta;
  
  sumA = 0;
  sumB = 0;
  for k = 1 : length(a)
    sumA = sumA + a(k) * cos(2 * pi * (k-1) * f * t);
    sumB = sumB + b(k) * sin(2 * pi * (k-1) * f * t);
  end
  
  x = sumA + sumB;
  
end