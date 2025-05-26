%% Szakasz átviteli függvénye
Wp = tf(R*K_t,[C*La Ra*C+b*La Ra*b-K_b*K_t 0]);
Num = Wp.Numerator;
Den = Wp.Denominator;

%% Egység erősítés Ap meghatározásához
% Td+Tc = 121.8
Tder = 121.8; %A kiejteni kívánt pólus
Ar = 10; % Td/Tc = 10
Tc = Tder/(1+Ar);
Td = Tder-Tc;
W01 = series(Wp,tf([Tder 1],[Tc 1]));
bode(W01);

%% Ap = 1.0839e-3
Ap = 9.1;
Wpd = tf(Ap*[Tc+Td 1],[Tc 1]);
W02 = series(Wp,Wpd);
bode(W02);

%% Így megvan a szabályozó, ezt diszkretizáljuk
Ts = 0.02;
Dpd = c2d(Wpd,0.02,'zoh');
