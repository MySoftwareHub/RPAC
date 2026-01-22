function J1_vs_J2()

    uicontrol('Style','text','String'," J1 = Rond J2 = Croix", 'Position', [480 625 58 40], 'ForeGroundColor','black') ;
    bp_J1_vs_J2 = uicontrol('Style','togglebutton','String','J1 vs J2','Position', [75 635 70 30],'Enable', 'inactive') ;
    bp_J1_vs_IA = uicontrol('Style','togglebutton','String','J1 vs IA','Position', [275 635 70 30],'Enable', 'inactive'); 
        
    if bp_J1_vs_J2.Enable == "inactive"
        Activation_Bouton();
    end
end