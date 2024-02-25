clc
clear all
close all

%%% Hexagonal lattice

% defining crystal
hexa=crystalSymmetry('hexagonal')
figure(1)
plot(hexa)

%% direction
hkil=Miller(-3,2,1,1,hexa,'hkil')
uvtw=Miller(2,-1,-1,0,hexa,'uvtw')

figure(2)
plot(hkil)

figure(3)
plot(uvtw)

%% symmetrise hex directions
methods(hkil); 

hexa_dir=hkil.symmetrise

unique(hexa_dir,'noSymmetry')

figure(4)
plot(hexa_dir.symmetrise)