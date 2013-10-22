%%%%%%   ESERCIZIO 9.c FOGLIO 1 %%%%%
%%%%%%   ESERCIZIO 9.c FOGLIO 1 %%%%%
%%%%%%   ESERCIZIO 9.c FOGLIO 1 %%%%%

clear all;
clc;
format long e;

n=[1:1:16];
x=10.^(-n);

%% funzione di partenza, si verifica cancellazione numerica..%%
f3=inline('1-sqrt(1-(x.^2))');
f3x=f3(x);

%% funzione modificata, no cancellazione numerica... %%
f3c=inline('(x.^2)/(1+sqrt(1-(x.^2)))');
f3cx=f3c(x);

%% stampo i risultati...%%
[x' f3x']
f3cx

