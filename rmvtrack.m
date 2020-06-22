function [ C ] = rmvtrack(s,A)
fprintf('vous allez supprimer une laison entre deux stations\n');
a=input('entez station 1\n','s');
b=input('entez station 2\n','s');
c=nom2num(a,s); d=nom2num(b,s);
C=A; 
C(c,d)=0; C(d,c)=0; 

end

