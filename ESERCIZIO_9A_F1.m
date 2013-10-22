
%%%%%%   ESERCIZIO 9.a FOGLIO 1 %%%%%
%%%%%%   ESERCIZIO 9.a FOGLIO 1 %%%%%
%%%%%%   ESERCIZIO 9.a FOGLIO 1 %%%%%

clear all;
clc;
format long e;

n=[1:1:16];
x=10.^(-n);

%% funzione di partenza, si verifica cancellazione numerica..%%
f1=inline('(1-cos(x))./(x.^2)');
f1x=f1(x);

%% funzione modificata, no cancellazione numerica... %%
f1c=inline('0.5-((x.^2)/(2*3*4))');
f1cx=f1c(x);

%% stampo i risultati...%%
[x' f1x' f1cx']
