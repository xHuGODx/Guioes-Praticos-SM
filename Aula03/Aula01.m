%Ex 2
Ta = 0.01;
f0 = 1;
Np = 5;
K = 100;

ak = zeros(1, K);
bk = zeros(1, K-1);

impares = 1:2:K-1;
bk(impares) = 4./(impares*pi);
bk = [0,bk];

[x, t] = fourierhugo(Ta, f0, Np, ak, bk);

plot(t,x)
xlabel('t');
ylabel('x(t)');
grid on;
%% 
%Ex 4
Ta=0.001;
Np=4;
K=100;
T=1; 
f=1/T;
t=0:Ta:T;

x=sawtooth(2*pi*f*t+pi/2,1/2);

[ak,bk]=fourier_coef(Ta,T,x,K);
[x,t]=fourier_func(Ta,f,Np,ak,bk);

plot(t,x);
%% 