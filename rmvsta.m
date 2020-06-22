function [t,C] = rmvsta( s,A )
a=input('donner le nom du station que vous allez supprimer\n','s');
c=size(s);
n=c(1);
k=nom2num(a,s);
C=A; t=s;
for i=1:n
    C(i,k)=0;
    C(k,i)=0;
end

for i=1:5
    t{k,i}=0;

end
end
