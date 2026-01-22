function [L1,L2,L3,L4] = animation(x0,y0,z0,xf,yf,zf,h_porteur,c_porteur)
    
    %Cette fonction permet de gérer l'animation 3D entre deux positions
    %données en paramètre. Elle permet de calculer le delta de cable à
    %enrouler ou dérouler entre deux positions.
    
    time = 0.05 ; %Temps entre chaques positions de l'animation.
    
    [L1_0,L2_0,L3_0,L4_0] = move(x0,y0,z0,h_porteur,c_porteur) ; %Position initiale l'animation.
    pause(time) ; %Délai.
    cla ; %Efface les données des axes.
    
    %Algorithme de gestion du déplacement. Algorithme réalisé au feeling un
    %soir. Concentré de magie noire, de sorcellerie et de pure zayounerie.
    %Différents cas de figure sont réalisés suivant la quantité de
    %déplacement à réaliser dans chaques axes.
    
    pas_x = xf-x0 ;
    pas_y = yf-y0 ;
    pas_z = zf-z0 ;
    
    [az,el] = view ;
    
    if pas_x > 0
        y = y0 - (pas_y/pas_x) ;
        z = z0 - (pas_z/pas_x) ;
        for i = x0:1:xf 
            move(i,y + (pas_y/pas_x) , z + (pas_z/pas_x) ,h_porteur,c_porteur) ;
            pause(time) ;
            cla ; 
            view(az + i,el);
            y = y + (pas_y/pas_x) ;
            z = z + (pas_z/pas_x) ;
        end
    end
    
    if pas_x < 0
        y = y0 + (pas_y/pas_x) ;
        z = z0 + (pas_z/pas_x) ;
        for i = x0:-1:xf 
            move(i,y - (pas_y/pas_x) , z - (pas_z/pas_x) ,h_porteur,c_porteur) ;
            pause(time) ;
            cla ; 
            view(az + i,el);
            y = y - (pas_y/pas_x) ;
            z = z - (pas_z/pas_x) ;
        end
    end
    
    if pas_x == 0 && pas_y > 0
        z = z0 - (pas_z/pas_y) ;
        for i = y0:1:yf 
            move(xf,i , z + (pas_z/pas_y) ,h_porteur,c_porteur) ;
            pause(time) ;
            cla ;
            view(az + i,el);
            z = z + (pas_z/pas_y) ;
        end
    end
    
    if pas_x == 0 && pas_y < 0
        z = z0 + (pas_z/pas_y) ;
        for i = y0:-1:yf 
            move(xf,i , z - (pas_z/pas_y) ,h_porteur,c_porteur) ;
            pause(time) ;
            cla;
            view(az + i,el);
            z = z - (pas_z/pas_y) ;
        end
    end
    
    if pas_x == 0 && pas_y == 0 && pas_z < 0
        for i = z0:-1:zf 
            move(xf,yf,i,h_porteur,c_porteur) ;
            pause(time) ;
            view(az + i,el);
            cla ; 
        end
    end
    
    if pas_x == 0 && pas_y == 0 && pas_z > 0
        for i = z0:1:zf 
            move(xf,yf,i,h_porteur,c_porteur) ;
            pause(time) ;
            view(az + i,el);
            cla ; 
        end
    end
    
    %Affichage de la position finale.
    [L1_f,L2_f,L3_f,L4_f] = move(xf,yf,zf,h_porteur,c_porteur) ;
    
    %Calcul des deltas de cable.
    L1 = L1_f - L1_0 ;
    L2 = L2_f - L2_0 ;
    L3 = L3_f - L3_0 ;
    L4 = L4_f - L4_0 ;
    
end