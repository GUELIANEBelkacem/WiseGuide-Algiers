function [ c ] = nom2num( a,S )
c=0;
r=size(S);
n=r(1);
for i=1:n
    if(strcmp(a,S{i,2})==1) 
    c=S{i,1}; 
    end
end
 if(c==0)
     error('station n''existe pas')
 end
    

end

