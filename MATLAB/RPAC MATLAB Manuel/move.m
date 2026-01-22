function [L1,L2,L3,L4] = move(x_porteur,y_porteur,z_porteur,h_porteur,c_porteur) 
    
    %Cette fonction permet de placer le porteur à une position données en
    %paramètres. Elle est entièrement paramétrable en terme de dimension du
    %porteur. Elle calcule les longueurs des cables pour une position
    %donnée.

    %Coordonnées du coin 1 du porteur.
    x_c1 = x_porteur-(c_porteur/2) ;
    y_c1 = y_porteur-(c_porteur/2) ;
    z_c1 = z_porteur + h_porteur ;
    
    %Coordonnées du coin 2 du porteur.
    x_c2 = x_porteur-(c_porteur/2) ;
    y_c2 = y_porteur-(c_porteur/2)+c_porteur ;
    z_c2 = z_porteur + h_porteur ;
   
    %Coordonnées du coin 3 du porteur.
    x_c3 = x_porteur-(c_porteur/2)+c_porteur ;
    y_c3 = y_porteur-(c_porteur/2)+c_porteur ;
    z_c3 = z_porteur + h_porteur ;
     
    %Coordonnées du coin 4 du porteur.
    x_c4 = x_porteur-(c_porteur/2)+c_porteur ;
    y_c4 = y_porteur-(c_porteur/2) ;
    z_c4 = z_porteur + h_porteur ;

    %NOTA : La bibliothèque gérant le cube donne les coordonnées du cube
    %dans l'un de ses coins. Des calculs sont donc nécessaires afin de
    %placer l'origine au centre du cube. Voilà pourquoi les coordonnées du
    %cube et de ses coins semblent complexes à première vue.

    %Création du porteur d'après la bibliothèque plotcube.
    plotcube([c_porteur c_porteur h_porteur],[x_porteur-(c_porteur/2) y_porteur-(c_porteur/2) z_porteur],0.1,[0 0 1]) ; 
    
    d_m1_x = 10.3 - 0.25  ;
    d_m1_y = 7.3  - 0.25;
    
    d_m2_x = 8.3 - 0.25;
    d_m2_y = 6  - 0.25;
    
    d_m3_x = 7.8  - 0.25;
    d_m3_y = 6.8  - 0.25;
    
    d_m4_x = 7.8  - 0.25;
    d_m4_y = 11.2 - 0.25;
    
    d_m1_z = 80.5 ;
    d_m2_z = 80.5 ;
    d_m3_z = 80.5 ;
    d_m4_z = 80.5 ;
   
    %Création des marqueurs représentant les poulies.
    %Numérotation associée sur le graphique.
    plot3(0-d_m1_x ,0-d_m1_y,d_m1_z,'.','MarkerSize',50,'color','y') ;
    text(0-d_m1_x ,0-d_m1_y,d_m1_z + 6.4,"M1",'BackgroundColor','white','EdgeColor','black','HorizontalAlignment','center') ;
    plot3(0-d_m2_x ,70+d_m2_y,d_m2_z,'.','MarkerSize',50,'color','y') ;
    text(0-d_m2_x,70+d_m2_y,d_m2_z + 6.4,"M2",'BackgroundColor','white','EdgeColor','black','HorizontalAlignment','center') ;
    plot3(70+d_m3_x,70+d_m3_y,d_m3_z,'.','MarkerSize',50,'color','y') ;
    text(70+d_m3_x,70+d_m3_y,d_m3_z + 6.4,"M3",'BackgroundColor','white','EdgeColor','black','HorizontalAlignment','center') ;
    plot3(70+d_m4_x,0-d_m4_y,d_m4_z,'.','MarkerSize',50,'color','y') ;
    text(70+d_m4_x,0-d_m4_y,d_m4_z + 6.4,"M4",'BackgroundColor','white','EdgeColor','black','HorizontalAlignment','center') ;
 
    %Création des cables.
    plot3([0-d_m1_x x_c1],[0-d_m1_y y_c1],[d_m1_z z_c1],'k') ; %Cable 1.
    plot3([0-d_m2_x x_c2],[70+d_m2_y y_c2],[d_m2_z z_c2],'k') ;  %Cable 2.
    plot3([70+d_m3_x x_c3],[70+d_m3_y y_c3],[d_m3_z z_c3],'k') ;   %Cable 3.
    plot3([70+d_m4_x x_c4],[0-d_m4_y y_c4],[d_m4_z z_c4],'k') ;  %Cable 4.
    
    %Création des pilônes.
    plot3([0-d_m1_x 0-d_m1_x],[0-d_m1_y 0-d_m1_y],[0 d_m1_z],'k','LineWidth',5) ;         %Pilône 1.
    plot3([0-d_m2_x 0-d_m2_x],[70+d_m2_y 70+d_m2_y],[0 d_m2_z],'k','LineWidth',5) ;     %Pilône 2.
    plot3([70+d_m3_x 70+d_m3_x],[70+d_m3_y 70+d_m3_y],[0 d_m3_z],'k','LineWidth',5) ;  %Pilône 3.
    plot3([70+d_m4_x 70+d_m4_x],[0-d_m4_y 0-d_m4_y],[0 d_m4_z],'k','LineWidth',5) ;      %Pilône 4.
    
    %Création de la cage supérieure.
    plot3([0-d_m1_x 0-d_m2_x],[0-d_m1_y 70+d_m2_y],[d_m1_z d_m1_z],'k','LineWidth',5) ; 
    plot3([0-d_m2_x 70+d_m3_x],[70+d_m2_y 70+d_m3_y],[d_m2_z d_m2_z],'k','LineWidth',5) ;
    plot3([70+d_m4_x 70+d_m3_x],[0-d_m4_y 70+d_m3_y],[d_m3_z d_m3_z],'k','LineWidth',5) ; %oulaaaa bizarre
    plot3([0-d_m1_x 70+d_m4_x],[0-d_m1_y 0-d_m4_y],[d_m4_z d_m4_z],'k','LineWidth',5) ; %oulaaaa bizarre
    
    %Création de la zone de travail.
    plot3([0 0],[0 70],[0 0],'r') ; %L1.
    plot3([0 70],[70 70],[0 0],'r') ;  %L2.
    plot3([70 70],[0 70],[0 0],'r') ;   %L3.
    plot3([0 70],[0 0],[0 0],'r') ;  %L4.
    plot3([0],[0],[70],'r+') ; %P1.
    plot3([0],[70],[70],'r+') ; %P2.
    plot3([70],[0],[70],'r+') ; %P3.
    plot3([70],[70],[70],'r+') ; %P4.
   
    %Titre des axes du graphique 3D.
    xlabel('X') ;
    ylabel('Y') ;
    zlabel('Z') ;

    %Calcul des longueurs des cables pour une position donnée.
    %Utilisation du théorême de Pythagore dans l'espace.
    L1 = sqrt((0-d_m1_x - x_c1)^2+(0-d_m1_y - y_c1)^2+(d_m1_z - z_c1)^2) ; %Longueur cable 1.
    L2 = sqrt((0-d_m2_x - x_c2)^2+(70+d_m2_y - y_c2)^2+(d_m2_z - z_c2)^2) ; %Longueur cable 2.
    L3 = sqrt((70+d_m3_x - x_c3)^2+(70+d_m3_y - y_c3)^2+(d_m3_z - z_c3)^2) ; %Longueur cable 3.
    L4 = sqrt((70+d_m4_x - x_c4)^2+(0-d_m4_y - y_c4)^2+(d_m4_z - z_c4)^2) ; %Longueur cable 4.
    
end

