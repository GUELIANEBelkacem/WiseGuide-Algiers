function [ x,y,z,c ] = mdftp2_disque(  )

format short
c=cell(11,8);
x=zeros(1,10);
y=zeros(1,10);
z=zeros(1,10);
c{1,1}='m';
c{1,2}='V';
c{1,3}='t';
c{1,4}='Qv';
c{1,5}='Fimp(prat)';
c{1,6}='delta(Fimp(prat))';
c{1,7}='Fimp(th)';
c{1,8}='Qv2';
c{2,1}=0.65;
c{3,1}=0.60;
c{4,1}=0.55;
c{5,1}=0.50;
c{6,1}=0.45;
c{7,1}=0.40;
c{8,1}=0.35;
c{9,1}=0.30;
c{10,1}=0.25;
c{11,1}=0.20;
c{2,2}=0.01;
c{3,2}=0.01;
c{11,2}=0.003;
for i=4:10
    c{i,2}=0.005;
end
c{2,3}=23.31;
c{3,3}=24.69;
c{4,3}=12.63;
c{5,3}=13.16;
c{6,3}=15.00;
c{7,3}=17.38;
c{8,3}=19.56;
c{9,3}=25.72;
c{10,3}=33.97;
c{11,3}=75;
p=1000;
g=9.81;
d=0.0065;
e=0.008;
D1=0.040;
D2=0.035;
t=0;
Qv=0;
m=0;
V=0;
R=D1/2;
r=D2/2;
S1=pi*((d/2)^2);
S2=pi*(R^2-(R-e)^2);
k=0;
dt=1;
n=0;
for i=2:11
    m=c{i,1};
    V=c{i,2};
    t=c{i,3};
    Qv=V/t;
    c{i,4}=Qv;
    Fprat=m*g;
    c{i,5}=Fprat;
    Fth=p*(Qv^2)*(1/S1)+g*p*(S1*(R-e)+pi*(R^2)*e);
    c{i,7}=Fth;
    c{i,8}=(Qv)^2;
    k=k+p*(1/S1);
    df=2*Fprat'*(dt/t);
    c{i,6}=df;
    x(1,i-1)=(Qv)^2;
    y(1,i-1)=Fth;
    z(1,i-1)=Fprat;
    n=n+g*p*(S1*(R-e)+pi*(R^2)*e);
end
k=k/10;
k
c
n=n/(10*g);
n
hold off
plot(x,y,'r')
grid on
hold on
plot(x,z,'g')




end