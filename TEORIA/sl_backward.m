%%=============================================%%
%%== SISTEMI LINEARI                     ======%%
%%=============================================%%
%%== Metodo di sostituzione all'indietro.   ===%%
%%=============================================%%

clc;
clear all;

n=4;        % ordine della matrice dei coeff.

%% genero matrice non singolare pseudo-causale e triang.superiore di ordine n... %%
matrSingolare=1;
A=eye(n);
while matrSingolare
   A=rand(n,n);
   if det(A)~=0
       A=triu(A);
       matrSingolare=0;
   end    
end
A

%% genero vettore dei termini noti in modo che il vettore x sia composto da tutti 1.
b=sum(A,2)

x=zeros(n, 1);

%% calcolo l'n-esima soluzione:
x(n)=b(n)/A(n,n);

%% calcolo le restanti soluzioni:
for i=n-1:-1:1
    s=0;
    s=A(i,i+1:n)*x(i+1:n);
    x(i)=(b(i)-s)/A(i,i);
end

%% stampo i risultati:
x'
