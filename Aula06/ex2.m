% % load("Guitar03.mat");
sound(x, fa);

Ta = 1/fa;
Espetro(x,Ta);
xlim([-2000, 2000]),