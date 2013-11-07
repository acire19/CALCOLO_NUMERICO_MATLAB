%%====================================%%
%%== SISTEMI LINEARI.		==========%%
%%====================================%%
%%== Applicazioni PA=LU         ======%%
%%====================================%%

clc;
clear all;

n=50;
p=50000;        %% quattro sistemi..

x=zeros(n,p);   %% mi memorizzo i risultati
A=rand(n);
det(A)
b=sum(A,2);


%% ALGORITMO EFFICIENTE %%%
tic
[L, U, P]=lu(A);
for i=1:p
    y=L\(P*b);
    x(:,i)=U\y;
    b=b/(i+1);      %% genero termine noto per iterata successiva.
end
te=toc              %% ca 4 sec



%% ALGORITMO POCO EFFICIENTE %%%
x=zeros(n,p);   %% mi memorizzo i risultati
b=sum(A,2);

tic
for i=1:p
    x(:,i)=A\b;
    b=b/(i+1);      %% genero termine noto per iterata successiva.
end
tne=toc             %% ca 25 s    


