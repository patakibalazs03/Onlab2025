MSRTB és startup.m: ahhoz, hogy a Moblie Robotics Toolbox működjön, a startup.m scriptet (ami a matlab indításakor lefut) átírtam, hogy futtasson le egy scriptet az MSRTB mappában
(Dinamika, Kinematika_B, Motor, sensor, WheelAngVel).slx: A szakasz egyes részeinek modellje
distance.m, lines_intersect.m, theta2vector.slx, metszespont.slx: a sensor.slx-ben felhasznált függvények és modellek
peldasensor.slx: egy simulink modell a sensor.slx teszteléséhez
Szakasz.slx, Szakaszmotornelkul.slx: a szakasz modellje simulinkben, valamint egy másik modell ami nem tartalmazza a motort, hogy a szakasz bemenetére egyből a nyomatékot lehessen adni
onlabscript.m: az onlab2.slx futtatása előtt kell lefuttatni, hogy a paraméterek a workspace-be kerüljenek
onlab2.slx: a zárt kör modellje, ami bonolultabb
Testingscript.m: a TheoryTesting.slx-hez szükséges paramétereket tartalmazza
TheoryTesting.slx: a tervezéshez használt szabályozó kör
NucleoBoard.slx: ezzel próbálgattam a nucleora csinálni programot
maxtau.slx: egy olyan határhelyzet modellje, ahol a tau maximális értékét meg lehet határozni
DisplayFunc.mlx: egy live script, ami végigvisz a két zárt kör összehasonlításán
A többi általában csak cache fájl, vagy valami hasonló kevésbé fontos.
