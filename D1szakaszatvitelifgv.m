%% Szakasz átviteli függvénye
Wp = tf(R*K_t,[C*La Ra*C+b*La Ra*b+K_b*K_t 0]);
Num = Wp.Numerator;
Den = Wp.Denominator;

%% Zérus-pólus-erősítés felbontás
Wp_zpk = zpk(Wp); %innen megkapható a kiejteni kívánt pólus

%% Egység erősítés Ap meghatározásához
% Td+Tc = 12.1787
Tder = 12.1787; %A kiejteni kívánt pólus, átírható
Ar = 10; % Td/Tc = 10, ha nem ez az arány az elvárt átírható
Tc = Tder/(1+Ar);
Td = Tder-Tc;
W01 = series(Wp,tf([Tder 1],[Tc 1]));
%% Fázistartalék
bode(W01);
%% Ap meghatározása

ApdB = 4.83; %A bode diagramról leolvasandó a kívánt fázistartalékhoz
% az erősítés értéke dB-ben
Ap = 1/(10^(ApdB/20));

%% Paraméterek a Simulink blokknak
N = 1/Tc;
P = Ap;
D = Td*Ap;
