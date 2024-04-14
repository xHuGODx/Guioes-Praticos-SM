Ta = 0.01;

%% a)
%2 periodos = 2 segundo porque f=1
%100 periodos = 100 segundos porque f=1
f=1;
T=1/f;
Np = 100;
N=round(Np*T/Ta);
t=(0:N-1)*Ta;

x = sin(2*pi*t);

[X,f]=Espetro(x,Ta);

%% b)
f=1;
T=1/f;
Np=50;
N=round(Np*T/Ta);
t=(0:N-1)*Ta;

y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t-pi/4);

[X,f]=Espetro(y,Ta);
%% c)
% f = 10
%
f=20;
T=1/f;
Np=10;
N=round(Np*T/Ta);
t=(0:N-1)*Ta;

z = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2);

[X,f]=Espetro(z,Ta);

%% d)
%
f=1;
T=1/f;
Np=5;
N=round(Np*T/Ta);
t=(0:N-1)*Ta;

za = square(t*2*pi)/2 + 0.5; 


[X,f]=Espetro(za,Ta);

%% e)
%
f=1;
T=1/f;
Np=5;
N=round(Np*T/Ta);
t=(0:N-1)*Ta;

zb = sawtooth(2*pi*t);
[X,f]=Espetro(zb,Ta);