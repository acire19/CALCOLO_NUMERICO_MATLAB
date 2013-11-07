%%====================================%%
%%== SISTEMI LINEARI.		==========%%
%%====================================%%
%%== Metodi iterativi - Jacobi    ====%%
%%====================================%%

clear all;
clc;
format long e;

%A=[1 -2 2; -1 1 -1; -2 -2 1];
A=[4 0 2/5; 0 5 2/5; 5/2 2 1];
b=sum(A,2);
n=3;
%% metodo di Jacobi %%%
kmax=100;        
x0=zeros(n,1);

%% a ogni iterata risolvo questo sistema Dx=b-Cx
D=diag(diag(A));        %% jacobi
D=tril(A);              %% gauss seider
C=A-D;

B=eye(n)-inv(D)*A;
rho=max(abs(eig(B)))      %% più questo è piccolo più è rapida la conevregenza

for k=1:kmax
   x=D\(b-C*x0)
   x0=x;

end