function [ C,g ] = addtrack(s,A,e)
C=A; 
g=e;
fprintf('vous allez ajouter ou modifier une laison entre deux stations\n')
a=input('entez station 1\n','s');
b=input('entez station 2\n','s');
f=input('entrez la distance entre les deux stations\n');
c=nom2num(a,s); d=nom2num(b,s);
C(c,d)=1; C(d,c)=1;
g(c,d)=f; g(d,c)=f;


end

