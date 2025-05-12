%% Eloszor a valos modellhez tartozo szimulaciot kell lefuttatni
t = Mod.Mod.time;
y = Mod.Mod.signals(1).values;
r = Mod.Mod.signals(2).values;
%% Majd az egyszerusitett modellhez tartozo szimulaciot kell lefuttatni
y2 = Egymod.EgyMod.signals(2).values;
t2 = Egymod.EgyMod.time;
%% Utána pedig plot-olas
figure(1);
hold on;
plot(t,r);
plot(t,y);
plot(t2,y2);
hold off;