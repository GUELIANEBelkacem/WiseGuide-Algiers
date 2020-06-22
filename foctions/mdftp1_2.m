function [ x,y,z,c ] = mdftp1_2(  )
format short
c=cell(12,8);
x=zeros(1,11);
y=zeros(1,11);
z=zeros(1,11);
c{1,1}='m';
c{1,2}='Z';
c{1,3}='Zcg';
c{1,4}='S';
c{1,5}='Lfp';
c{1,6}='(Fp)prat';
c{1,7}='delta((Fp)prat)';
c{1,8}='(Fp)th';
c{2,1}=0.22;
c{3,1}=0.20;
c{4,1}=0.19;
c{5,1}=0.17;
c{6,1}=0.15;
c{7,1}=0.14;
c{8,1}=0.12;
c{9,1}=0.1;
c{10,1}=0.09;
c{11,1}=0.07;
c{12,1}=0.05;
c{2,2}=0.101;
c{3,2}=0.095;
c{4,2}=0.091;
c{5,2}=0.086;
c{6,2}=0.08;
c{7,2}=0.078;
c{8,2}=0.072;
c{9,2}=0.065;
c{10,2}=0.062;
c{11,2}=0.055;
c{12,2}=0.046;
a=0.1;
d=0.1;
b=0.075;
Lp=0.28;
p=1000;
g=9.81;
Zcg=0; 
Zcp=0;
Fpth=0;
Lfp=0;
Fpprat=0;
Fpth=0;
Z=0;
S=0;
dZ=0.001;


for i=2:12
m=c{i,1};    
Z=c{i,2};
Zcg=Z/2;
c{i,3}=Zcg;
S=Z*b;
c{i,4}=S;
Lfp=d+a-(Z/3);
c{i,5}=Lfp;
Fpprat=m*g*(Lp./Lfp);
c{i,6}=Fpprat;
df=Fpprat*(dZ/Z);
c{i,7}=df;
Fpth=p*g*(Z.*b).*(Z./2);
c{i,8}=Fpth;
x(1,i-1)=Z;
y(1,i-1)=Fpth;
z(1,i-1)=Fpprat;




end
plot(x,y,'r')
grid on
hold on
plot(x,z,'g')


end