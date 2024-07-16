clc;
m1=1;
m2=1;
m3=1;
m4=1;

n=3.5;

d1=1.6;
d2=1.6;
d3=2.2;
d4=2.2;

Omega1=d1^(-n);
Omega2=d2^(-n);
Omega3=d3^(-n);
Omega4=d4^(-n);

N0=1;

gamdbTh=3;

Pdb1=(0:1:20);
Pdb2=10;
NT=4;
NR=4;
NOL=10^7;

[OP]= OutageProbability(m1,m2,m3,m4,Omega1,Omega2,Omega3,Omega4,N0,gamdbTh,Pdb1,Pdb2,NT, NR,NOL);
semilogy(Pdb1,OP,'-*');
legend({'OP'},'Location','southeast')
xlabel('Transmit SNR')
ylabel('Outage Probability')
% caption=sprintf('outage probability');
% title(caption,'FontSize',10);
