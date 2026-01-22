function disconnect(robot)

    Retour1 ='M1-01.9/M2+02.2/M3+05.1/M4+02.1/0';
    Retour2 ='M1+02.0/M2+01.2/M3+01.0/M4+01.2/0';
    fwrite(robot,Retour1);
    pause(7.5);
    fwrite(robot,Retour2);
    fclose(robot) ; %Fermeture de la liaison
    uicontrol('Style','pushbutton', 'Position', [302 725 15 15], 'backgroundcolor', '#EC2525') ;
    uicontrol('Style','pushbutton','String','Déconnexion','Position', [375 718 70 30],'Callback','disconnect(robot)', 'Enable', 'inactive') ;
    uicontrol('Style','togglebutton','String','J1 vs J2','Position', [75 635 70 30],'Callback','J1_vs_J2()', 'Enable', 'inactive') ;
    uicontrol('Style','togglebutton','String','J1 vs IA','Position', [275 635 70 30],'Callback','[IA Tab]=J1_vs_IA(Tab)', 'Enable', 'inactive') ;
    pause(1);
    close all ;
end

