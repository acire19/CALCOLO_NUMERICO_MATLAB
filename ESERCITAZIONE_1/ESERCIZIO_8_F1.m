%%%%% esercizio 8 foglio 1  %%%%%%%%%
%%%%% esercizio 8 foglio 1  %%%%%%%%%
%%%%% esercizio 8 foglio 1  %%%%%%%%%

clc;
clear all;                      %pulisco la memoria di matlab... 

t=5;
a=1.483593;
b=1.484111;
a_=chop(a,t);       %numero maxcchina corrrispondente ad a (tecnica arrotondamento ii))
b_=chop(b,t);       % affetti da errore di arrotondamento...
s=a-b               %sottrazione con mooolta precisione...
s_=chop(a_-b_,t)    % operazione macchina

er=abs(s-s_)/abs(s) % errore reltivo su s_, e' piu' grande della precisione di macchina-> e' avvenuto qlc di instabile


