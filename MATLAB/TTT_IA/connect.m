function robot = connect()

    P0_PosRef ='M1-00.1/M2-03.5/M3-06.1/M4-03.3/0';
    delete(instrfindall) ; %Destruction de tous les ports séries
    robot = serial('COM9','BaudRate',9600) ; %Déclaration d'un port série
    fopen(robot) ; %Ouverture de la liaison
    disp(robot);
    pause(2);
    fwrite(robot, P0_PosRef);
    uicontrol('Style','pushbutton', 'Position', [302 725 15 15], 'backgroundcolor', '#3DE43C') ;
    pause(6.3);
    uicontrol('Style','pushbutton','String','Connexion','Position', [175 718 70 30],'Callback','robot = connect()', 'Enable', 'inactive') ;
    uicontrol('Style','togglebutton','String','J1 vs J2','Position', [75 635 70 30],'Callback','J1_vs_J2()', 'Enable', 'on') ;
    uicontrol('Style','togglebutton','String','J1 vs IA','Position', [275 635 70 30],'Callback','[IA Tab]=J1_vs_IA(Tab, robot)', 'Enable', 'on') ;
end

