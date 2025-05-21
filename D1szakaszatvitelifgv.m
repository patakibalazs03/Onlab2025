%% Szakasz átviteli függvénye
Wp = tf(2*R*K_t,[C*La Ra*C+b*La Ra*b-K_b*K_t 0]);

Num = Wp.Numerator;
Den = Wp.Denominator;