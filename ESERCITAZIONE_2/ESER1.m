%%====================================%%
%%== SISTEMI LINEARI.		==========%%
%%===================================%%
%%== Matrice di Hilbert &condizionamento.
%%===================================%%
clc;
clear all;

format long e;
n=15;
A=hilb(n);
b=sum(A,2);
cond(A)     %% se n=5, è >> 1 (10^5)
x=A\b     %% dovremmo lavorare in precisione OO... uso gauss con pivoting parziale-> algoritmo stabile... 

%% anche le lavorassi in precisione infinita, non otterrei buoni risultati perchè il problema è mal condizionato.
%% solo le prime cifre sono giuste...

%% calcoliamo l'errore relativo
errore=(norm(ones(n,1)-x))/(norm(ones(n,1)))    %% di default norma 2

%% ^^^ se n=5, K(A)=10^5... errore ca 10^-12 (ok, ci sta...)