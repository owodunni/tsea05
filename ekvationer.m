%% Ekvationer för att lösa inlämningsuppgift 1-1080

%% Variabler

R1  = 5.6E3;
R2  = 9E3;
R3  = 9.7E3;
R4  = 6.8E3;
R5  = 3.5E3;
R6  = 4.8E3;
R7  = 6.8E3;
R8  = 5.5E3;
R9  = 2.5E3;
R10 = 2.8E3;

E1  = 3;
E2  = 6;
I01 = 1E-3;
I02 = 2E-3;

%% Slinganalys

A=[-R4-R7-R6-R9   R4+R6             -R7          R9     ;
    R6+R4        -R1-R8-R6-R4-R3    -R3          0      ;
   -R7           -R3                -R3-R7-R8    0      ;
    R9            0                  0          -R10-R9];

B=[ R6*I02;
   -R8*I02-R3*I01-R6*I02-E1;
   -R3*I02;
    E2   ];
I=A\B

%% Nodanalys

&& Totala resistansen
