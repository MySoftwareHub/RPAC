function SIMU_RPAC(xf,yf,zf,robot)

%Fonction lançant la simulation et l'animation 3D.

global bit_EM;

%Variables de coordonnées persistentes d'un appel de la fonction à l'autre.
%Elles permettent de conserver la dernière position connue du porteur.
persistent xi ;
persistent yi ;
persistent zi ;

%Coordonnées nulles au début.
if isempty(xi)
    xi = 0 ;
    yi = 0 ;
    zi = 0 ;
end

%Traduction des données de l'interface graphique.
xf = str2double(xf.String) ;
yf = str2double(yf.String) ;
zf = str2double(zf.String) ;

if (xf <= 70) && (xf >= 0) && (yf <= 70) && (yf >= 0) && (zf <= 70) && (zf >= 0)
        
    %Dimensions du porteur.
    h_porteur = 9.8 ;
    c_porteur = 0 ;%sqrt(50) ; %Soit 10cm de diagonale.

    %Lancement de l'animation.
    [DELTA_C1,DELTA_C2,DELTA_C3,DELTA_C4] = animation(xi,yi,zi,xf,yf,zf,h_porteur,c_porteur) ;
    
    %Calcul des rotations des moteurs.
    [r_m1,r_m2,r_m3,r_m4] = calcul_rotation(DELTA_C1,DELTA_C2,DELTA_C3,DELTA_C4) ;
    
    trame = create_string(r_m1,r_m2,r_m3,r_m4,bit_EM) ;
    
    disp(trame) ;
    
    %send_robot(trame,robot) ;
    
    %La position finale devient la nouvelle position initiale.
    xi = xf ;
    yi = yf ;
    zi = zf ;
    
else
    
    msgbox('Les coordonnées sont en dehors de l''espace de travail du robot. [0 : 70] est la plage maximale sur chaque axe.', 'Erreur','error') ;
    
end



   





