R=0.9;
teta=2*pi*(5000/fa);
num=[1 -2*cos(teta) 1];
den=[1 -2*R*cos(teta) R^2];

[H,f]=respfreq(num,den,fa);