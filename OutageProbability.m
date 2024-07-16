function[OP]= OutageProbability(m1,m2,m3,m4,Omega1,Omega2,Omega3,Omega4,N0,gamdbTh,Pdb1,Pdb2,NT, NR,NOL)
Alpha1=m1/Omega1;
Alpha2=m2/Omega2;
Alpha3=m3/Omega3;
Alpha4=m4/Omega4;
P2=10^(Pdb2/10);
gamTh=10^(gamdbTh/10);
for jj=1:length(Pdb1)
    P1(jj)=10^(Pdb1(jj)/10);
    gammabar1 = P1(jj)/N0;
    gammabar2 = P2/N0;
    OP(jj)=0;    
    for ii=1:NOL
        gamma1=gamrnd(NT*m1,1/Alpha1);
        gamma2=gamrnd(NR*m2,1/Alpha2);
        gamma3=gamrnd(NT*m3,1/Alpha3);
        gamma4=gamrnd(m4,1/Alpha4);
        gammaR=min(gammabar1*gamma1,gammabar2*gamma2);
        gammaE1=gammabar1*gamma1*gamma3;
        gammaE2=min(gammabar1*gamma1,gammabar2*gamma4);
        gammaE=max(gammaE1,gammaE2);
        if(gammaR<gamTh)
                OP(jj)=OP(jj)+1;
        end    
    end
    OP(jj)=OP(jj)/NOL;
end