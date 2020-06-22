function [ w ] = voisins(s,A)
g=input('vous allez chercher les voisins d''une station\nentrez le nom du station\n','s')
c=size(s);
n=c(1);
w=0;
k=nom2num(g,s);
v=0;
for i=1:n
    if(A(k,i)~=0)
        v=[i,v];
    end
end
l=length(v);
for i=1:l-1
    
w=[w,'-----',num2nom(v(i),s)];

end


end

