function [S] = stations( )
S=cell(45,5);
for i=1:45
    for j=1:5
        S{i,j}=0;
    end 
end
for i=1:45
    S{i,1}=i;
end
for i=1:23
    S{i,3}=1;
end
for i=24:37
    S{i,4}=1;
end
for i=38:45
    S{i,5}=1;
end
S{1,2}='deux bassins'; 
S{1,5}=1;
S{2,2}='complexe mohamed boidiaf';
S{3,2}='chevaley';
S{4,2}='chateauneuf';
S{5,2}='el biar';
S{6,2}='scals';
S{7,2}='oued koreich';
S{8,2}='bab el ouad';
S{9,2}='place des martyrs';
S{10,2}='larbi ben mhidi';
S{11,2}='tafourah grande poste';
S{11,4}=1;
S{12,2}='khalfa bou khalfa';
S{13,2}='1er mai';
S{14,2}='aissat idir';
S{15,2}='hamma';
S{16,2}='jardin dessai';
S{17,2}='les fusilles';
S{17,5}=1;
S{18,2}='cite amirouche';
S{19,2}='cite mere et soleil';
S{20,2}='hai el badr';
S{20,4}=1;
S{21,2}='ain naadja 1';
S{22,2}='ain naadja 2';
S{23,2}='gue de constantine';
S{24,2}='didouche mourad';
S{25,2}='addis abeba';
S{26,2}='el madanie';
S{27,2}='garidi';
S{27,5}=1;
S{28,2}='jolie vue';
S{29,2}='ben omar';
S{30,2}='bachdjarrah 1';
S{31,2}='bachdjarrah 2';
S{32,2}='el harrach gare';
S{33,2}='el harrach marche';
S{34,2}='hassan badi';
S{35,2}='5 maisons';
S{36,2}='makoudi';
S{37,2}='bab ezzouar';
S{38,2}='dely brahim';
S{39,2}='ben aknoun';
S{40,2}='cite malki';
S{41,2}='paradou';
S{42,2}='said hamdine';
S{43,2}='bir mourad rais';
S{44,2}='les annasers';
S{45,2}='hassiba ben boual';

end

