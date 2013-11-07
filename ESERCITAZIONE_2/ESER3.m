%%====================================%%
%%== SISTEMI LINEARI.		==========%%
%%====================================%%
%%== PA=LU                   =========%%
%%====================================%%

 clc;
 clear all;

n=30;
A=rand(n);          %% pseudo causale
det(A)              %% non deve essere singolare

[L,U,P]= lu(A)

%% ALGOPRITMO DI INVERSIONE MATRICI CON PA=LU
%% A^-1=U^-1*L^-1*P

inversa=inv(U)*inv(L)*P     %% in qst caso posso usarlo xk' nn conosco l'algoritmo per invertire matrice triangolare.
inversa-inv(A)              %% modo per controllare l'esattezza di PA=LU... dovrebbe essere 0 o qlc di piccolo (10^-16)


