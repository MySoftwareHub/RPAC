function choix_joueur()
    global joueur ;
    if (joueur == 0)
        joueur = 1 ;
        uicontrol('Style','text','String',"J2 (rouge)", 'Position', [330 640 85 20], 'ForeGroundColor','black') ;
    elseif (joueur == 1)
        joueur = 0 ;
        uicontrol('Style','text','String',"J1 (vert)", 'Position', [330 640 85 20], 'ForeGroundColor','black') ;
    end 
end

