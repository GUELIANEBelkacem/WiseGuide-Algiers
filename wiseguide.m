function [] = wiseguide(s,A,e)
w=0;
disp('welcome to wiseguide')
a=input('vous etes a\n','s');
b=input('vous aller a\n','s');
c=nom2num(a,s); d=nom2num(b,s);
[f,g]=dijkstra(A,e,c,d);
fprintf('vous allez passer par :\n\n')
l=length(g);
for i=1:l
    
w=[w,'-----',num2nom(g(i),s)];

end
w

fprintf('\nla distance totale est  %d  m\n\n',f)

end

