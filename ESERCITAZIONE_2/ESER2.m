%%====================================%%
%%== SISTEMI LINEARI.		==========%%
%%====================================%%
%%== PA=LU                   =========%%
%%====================================%%
clc;
clear all;
format;

A=[11 2 3 4; 0 8 2 3; 0 0 4 0; 1 0 0 5];
b=sum(A,2);
cond(A)         %% ca 3.7-> ben condizionato!

[L, U, P]=lu(A)  %% fattorizzazione PA=LU...

%% in questo caso P è la matrice identita= ak,k era sempre il piuù grande in modulo-> no scambi 
                 
%% risolvo il sistema lineare...

    %% PA=LU    LUx=Pb   Ux=y (è triang. superiore... se uso \ lui prima controlla la struttura di A-> sostituz. all'indietro)

    y=L\(P*b);
    x=U\y
    
    

