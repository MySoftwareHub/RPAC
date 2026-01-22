function electroaimant(etat,robot)

    %Cette fonction permet de changer l'état de 
    %l'électroaimant lors d'un appui sur le bouton.
    %Elle génère aussi la trame.

    %Changement du bit de gestion de l'électroaimant.
    global bit_EM ;
    
    if etat == 1 && bit_EM == 1
        bit_EM = 1 ;
        uicontrol('Style','text','String',"Allumé", 'Position', [80 300 85 20], 'ForeGroundColor','black') ;
    elseif etat == 0 && bit_EM == 1
        bit_EM = 0 ;
        uicontrol('Style','text','String',"Eteint", 'Position', [80 300 85 20], 'ForeGroundColor','black') ;
    elseif etat == 1 && bit_EM == 0
        bit_EM = 1 ;
        uicontrol('Style','text','String',"Allumé", 'Position', [80 300 85 20], 'ForeGroundColor','black') ;
    elseif etat == 0 && bit_EM == 0
        bit_EM = 0 ;
        uicontrol('Style','text','String',"Eteint", 'Position', [80 300 85 20], 'ForeGroundColor','black') ;
    end
    
    str_em = num2str(bit_EM) ;
    
    trame = strcat("M1","+","00.0","/","M2","+","00.0","/","M3","+","00.0","/","M4","+","00.0","/",str_em) ;
    
    disp(trame) ;
    
    %send_robot(trame,robot) ;
    
end