function [ c ] = num2nom( a,S )
c=' ';
r=size(S);
n=r(1);
for i=1:n
    if(a==S{i,1}) 
    c=S{i,2}; 
    end
end
 if(c==' ')
     error('station n''existe pas')
 end
    

end

