function [ e ] = fattrack( )
e=zeros(45);
e(21,23)=920;
e(21,22)=630;
e(20,22)=2009;
e(20,30)=1470;
e(30,31)=610;
e(31,32)=660;
e(32,33)=460;
e(33,34)=452;
e(34,35)=545;
e(35,36)=766;
e(36,37)=644;
e(19,20)=900;
e(18,19)=770;
e(17,18)=1110;
e(17,45)=901;
e(16,17)=1106;
e(15,16)=950;
e(14,15)=807;
e(13,14)=550;
e(12,13)=660;
e(11,12)=850;
e(10,11)=700;
e(9,10)=840;
e(8,9)=514;
e(7,8)=414;
e(6,7)=2606;
e(5,6)=521;
e(4,5)=483;
e(3,4)=698;
e(2,3)=1188;
e(1,2)=934;
e(1,38)=1242;
e(1,39)=475;
e(39,40)=1295;
e(40,41)=1165;
e(41,42)=1042;
e(42,43)=736;
e(27,43)=828;
e(27,44)=728;
e(17,44)=815;
e(11,24)=904;
e(24,25)=774;
e(25,26)=1249;
e(26,27)=1142;
e(27,28)=1173;
e(28,29)=1127;
e(20,29)=974;
for i=1:45
    for j=45:-1:1
    e(j,i)=e(i,j);
    end 
end
end

