function robot = connect()
    delete(instrfindall) ; %Destruction de tous les ports séries
    robot = serial('COM9','BaudRate',9600) ; %Déclaration d'un port série
    fopen(robot) ; %Ouverture de la liaison
    pause(2);
    msgbox('Connexion au RPAC réussie.');
end

