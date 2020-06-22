function [  ] = wisemesure( s,A )
r=size(s);
n=r(1);
a=input('vous voulez savoir\nle nombre de station ----> tapez 1\nle nombre de laisons ----> tapez 2\n');
if(a~=1 && a~=2) 
    error('1 ou 2')
end
if(a==1)
    b=input('a quelle etape?\ntapez\n1 ----> etape 1\n2 ----> etape 2\n3 ----> etape 3\n4 ----> totale\n');
if(b~=1 && b~=2 && b~=3 && b~=4)
    error('1 ou 2 ou 3 ou 4 seulment\n')
end
if(b==1)
    k=0;
    for i=1:n
        if (s{i,3}==1)
            k=k+1;
        end
    end
    fprintf('le nombre de stations a l''etape %d est %d\n',b,k)
end
if(b==2)
    k=0;
    for i=1:n
        if (s{i,4}==1)
            k=k+1;
        end
    end
    fprintf('le nombre de stations a l''etape %d est %d\n',b,k)
end
if(b==3)
    k=0;
    for i=1:n
        if (s{i,5}==1)
            k=k+1;
        end
    end
    fprintf('le nombre de stations a l''etape %d est %d\n',b,k)
end
if(b==4)
    k=0;
    for i=1:n
        if (s{i,1}~=0)
            k=k+1;
        end
    end
    fprintf('le nombre de stations totale est %d\n',k)
end
end
if(a==2)
    b=input('a quelle etape?\ntapez\n1 ----> etape 1\n2 ----> etape 2\n3 ----> etape 3\n4 ----> totale\n');
if(b~=1 && b~=2 && b~=3 && b~=4)
    error('1 ou 2 ou 3 ou 4 seulment\n')
end
if(b==1)
    k=0;
    for i=1:n
        if (s{i,3}==1)
            k=k+1;
        end
    end
    fprintf('le nombre de laisons a l''etape %d est %d\n',b,k-1)
end
if(b==2)
    k=0;
    for i=1:n
        if (s{i,4}==1)
            k=k+1;
        end
    end
    fprintf('le nombre de laisons a l''etape %d est %d\n',b,k-1)
end
if(b==3)
    k=0;
    for i=1:n
        if (s{i,5}==1)
          k=k+1;
        end
    end
    fprintf('le nombre de stations a l''etape %d est %d\n',b,k-1)
end
if(b==4)
    k=0;
    for i=1:n
        if (s{i,1}~=0)
            k=k+1;
        end
    end
    fprintf('le nombre de stations totale est %d\n',k-3)
end
end
end

