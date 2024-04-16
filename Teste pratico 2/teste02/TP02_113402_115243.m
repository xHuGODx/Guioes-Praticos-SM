subplot(1,1,1)

%% alinea 1
[x,t,num,den]=exame2(2023,1);
a=diff(t); %alinea 1: os valores de a vão ser todos iguais: o a é o periodo de amostragem
ta = mean(a);
fa = 1/ta; %f = 1/T
%% alinea 2
y = filter(num,den,x);
figure(1);
plot(t,y);
figure(2);
Espetro(y,ta); %algumas frequências são removidas ou a sua magnitude é diminuida.

%% alinea 3
figure(3);
Espetro(x,ta);
figure(4);
respfreq(num,den,fa); 
%o filtro elimina as frequências entre 0 e ~35Hz (equivalente para o simétrico) e diminui a magnitude das que estiverem
%no intervalo ~35Hz a ~100Hz (equivalente para o simétrico). As restantes frequências ficam inalteradas

%% alinea 4
% sistema para remover frequência 10Hz (e -10Hz)
R=0.9; teta=2*pi*(10/fa);
num=[1 -2*cos(teta) 1];
den=[1 -2*R*cos(teta) R^2];
%
figure(5);
respfreq(num,den,fa);

figure(6);
subplot(3,1,1);
Espetro(x,ta); %resposta em frequência do sinal x
subplot(3,1,2);
respfreq(num,den,fa); %resposta em frequência do filtro
y = filter(num,den,x);
subplot(3,1,3);
Espetro(y,ta); %resposta em frequência do sinal y (filtrado)