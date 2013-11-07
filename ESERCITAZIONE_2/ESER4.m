%%====================================%%
%%== SISTEMI LINEARI.		==========%%
%%====================================%%
%%== Choleski                =========%%
%%====================================%%

clc;
clear all;
n=5;
B=rand(n);
det(B);

A=B'*B;   %% se B è non simmetrica, A è simmetrica e definita positiva
A-A';      %% dovrebbe essere 0 (verifichiamo la simmetria)
eig(A);    %% controliamo che autovalori>0

R=chol(A); %% R è tale che A=R'*R

%% A^-1=R^-1*(R^-1)'   // così è più efficiente
R1=inv(R);
inversa=R1*R1';
inv(A)-inversa        %% il risultato è circa 10^-13.. non precississimo perchè MATLAB usa inversa un po' diversa e bisognerebbe controllare
                       %% il condizionamento


