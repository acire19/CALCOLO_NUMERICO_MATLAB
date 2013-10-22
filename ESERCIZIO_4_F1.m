% ESRCIZIO 4 FOGLIO 1 %
% ESRCIZIO 4 FOGLIO 1 %
% ESRCIZIO 4 FOGLIO 1 %

clc;
clear all;                      %pulisco la memoria di matlab...
lambda=10;

A=[1:4; 2:5 ; 3:6 ; 4:7]       % matrice A

%%%%% MATRICE P1     %%%%%%%%
P1=eye(4);                      %matrice indenita di n=4;
P1(2,2)=lambda;
L1=P1*A;                            % se moltiplico a sx, moltiplico tutti gli elemnti sulla riga 2
R1=A*P1;                            % se moltp a dx, moltp tutti gli elementi sulla colonna 2


%%%% MATRICE P2      %%%%%%%%%
P2=eye(4);
P2([2 4], :)= P2([4 2], :);         % scambio le righe 2 e 4.
L2=P2*A;                             % su A, ho scambiato la seconda e la quarta riga...
R2=A*P2;                             % su A, ho scambiato la quarta e seconda colonna...

%%%% MATRICE P3      %%%%%%%%%
P3=eye(4);
P3(4,2)=lambda;
L3=P3*A                             % su A, la IV riga e' =(II riga *10)+(IV riga)...COMBINAZIONE LINEARE
R3=A*P3                             % su A, la IV colonna e' (IV colonna*10)+(II colonna)...





