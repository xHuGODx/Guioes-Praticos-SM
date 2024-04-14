%% a) frequencia de amostragem tem de ser pelo menos 2 vezes maior que a frequencia do sinal
%ta = 0.2 logo fa = 5 hz fsinal = 2 logo e possivel reconstruir
Ta = 0.2;
t = 0:Ta:5;

x = sin(2*pi*t);

[y,t] = ReconstroiSinal(x,Ta);

plot(t,y)

%% b)
%ta =0.04 fa = 25 hz fsinal = 1 logo e possivel reconstruir
Ta = 0.04;
t = 0:Ta:5;

x = sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-(pi/4));

[y, t] = ReconstroiSinal(x,Ta);

plot(t,y)