function [ t,C,h ] = addsta( s,A,e )
h=e;
a=input('quel est le nom du station que vous voulez ajouter\n','s');
b=input('a quelle etape apartient elle (entre 1 et 3)\n');
c=size(s);
n=c(1);

v=zeros(n,1); 
t=zeros(1,n+1);
C=[A,v];
C=[C;t];
h=[h,v];
h=[h;t];
t=s;
for i=1:5
    t{n+1,i}=0;
end
t{n+1,1}=n+1;
t{n+1,2}=a;
t{n+1,b+2}=1;
d=input('apparitient elle a une autre ligne y/n\n','s')
if(d=='y')
    f=input('a quelle etape apartient elle (entre 1 et 3)\n');
    t{n+1,f+2}=1;
end


end

