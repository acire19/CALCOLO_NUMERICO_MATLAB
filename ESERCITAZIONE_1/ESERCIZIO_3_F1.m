%------ ESERCIZIO n.3 -------%
%------ ESERCIZIO n.3 -------%
%------ ESERCIZIO n.3 -------%

n=10;               % dimensione della matrice.
x=5*ones(n,1);      % vettore a n componenti uguali a 1.
AD=diag(x);         % matrice diagonale dove sulla diag ho n elementi uguali a 5.
y=3*ones(n-1,1);    % sulla codiagonale ho n-1 elementi... codiag superiore
ACS=diag(y,1);
z=-ones(n-1, 1);    % codiagon inferiore.
ACI=diag(z, -1);

% sommo le tre matrici... 
A=AD+ACS+ACI;

% modifico alcuni elementi...
A([5 8],:)=2           % selezione righe 5,8 e tutte le colonne 
                       % e pongo qst elementi uguali a 2.
                       