function [IA Tab]=J1_vs_IA(Tab, robot)

    %Fonction aléatoire pour le Joueur numéro 1;
    Res=Aleatoire(1,2);
    
    if Res==1
        uicontrol('Style','text','String'," J1 = Rond IA = Croix", 'Position', [480 625 58 40], 'ForeGroundColor','black') ;
        bp_J1_vs_J2 = uicontrol('Style','togglebutton','String','J1 vs J2','Position', [75 635 70 30],'Enable', 'inactive') ;
        bp_J1_vs_IA = uicontrol('Style','togglebutton','String','J1 vs IA','Position', [275 635 70 30],'Enable', 'inactive') ;
        IA=2;
        
        if bp_J1_vs_IA.Enable == "inactive"
            Activation_Bouton();
        end

    elseif Res==2
        uicontrol('Style','text','String'," J1 = Croix IA = Rond", 'Position', [480 625 58 40], 'ForeGroundColor','black') ;
        bp_J1_vs_J2 = uicontrol('Style','togglebutton','String','J1 vs J2','Position', [75 635 70 30],'Enable', 'inactive') ;
        bp_J1_vs_IA = uicontrol('Style','togglebutton','String','J1 vs IA','Position', [275 635 70 30],'Enable', 'inactive') ;
        IA=1;
        
        pause(0.75);
                
        Case_a_jouer=Tour1(Tab);
        Tab(Case_a_jouer)=1;     
        
        if bp_J1_vs_IA.Enable == "inactive"
            Activation_Bouton();
        end
        
        Dessin_plateau(Tab);
        Deplacement_Robot(Case_a_jouer,0,1,robot);
        
        
    end   
end