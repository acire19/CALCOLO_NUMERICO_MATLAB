%%%%% ESERCIZIO 9 FOGLIO 1    %%%%%
%%%%% ESERCIZIO 9 FOGLIO 1    %%%%%
%%%%% ESERCIZIO 9 FOGLIO 1    %%%%%
clear all;
clc;

format short e
n=1:16;
x=10.^(-n);      % operazione puntuale..piu' eff. che ones
f4=inline('((x+1).^2.-1))./(x)');    % nn voglio operazioni fra vettori... le definisco puntuali.
f4x=f4(x);                       % valuto l'espressione nel vettore x
[x' f4x'];                        % cosi' lo stampo meglio... si fenomena cancellazione numerica...


%% espressione valutata senza cancellazione numerica...
f4e=inline('x+2');
f4ex=f4e(x);                       % valuto l'espressione nel vettore x
[x' f4x' f4ex']                        % cosi' lo stampo meglio
