function [r_m1,r_m2,r_m3,r_m4] = calcul_rotation(DELTA_C1,DELTA_C2,DELTA_C3,DELTA_C4)

%Suivant le design du treuil, une rotation enroule 10cm de câble.
    r_m1 = DELTA_C1 / 10 ;
    r_m2 = DELTA_C2 / 10 ;
    r_m3 = DELTA_C3 / 10 ;
    r_m4 = DELTA_C4 / 10 ;
    
end