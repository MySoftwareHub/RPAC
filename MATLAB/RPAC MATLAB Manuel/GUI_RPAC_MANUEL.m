%Code principal de l'IHM de pilotage du robot.

close all ;
clear all ;
clc ;


f = figure('Name',' IHM RPAC V6.0 (IHM mode manuel)','NumberTitle','off','Position',[20 60 1500 700],'MenuBar','none','Resize','Off') ; %RUN
%f = figure('Name',' IHM RPAC V6.0 (IHM mode manuel)','NumberTitle','off','Position',[20 60 1500 700],'Resize','Off') ; %DEV 

movegui('center') ;

p1 = uipanel(f,'Title','Coordonnées', 'Position', [0.01 0.7 0.3 0.3],'ForegroundColor','black') ;
p2 = uipanel(f,'Title','Electroaimant', 'Position', [0.01 0.4 0.3 0.3],'ForegroundColor','black') ;
p3 = uipanel(f,'Title','Mode jog', 'Position', [0.01 0.1 0.3 0.3],'ForegroundColor','black') ;

graph = axes(f,'Units','pixels','Position', [700 50 600 600],'Xgrid','on','Ygrid','on','Zgrid','on') ;
axis([-15 80 -15 80 0 85]) ;
grid on ;
hold on ;

choix_x = uicontrol(f,'Style','text','String','X :', 'Position', [25 620 85 20],'ForeGroundColor','black') ;
choix_y = uicontrol(f,'Style','text','String','Y :', 'Position', [25 570 85 20],'ForeGroundColor','black') ;
choix_z = uicontrol(f,'Style','text','String','Z :', 'Position', [25 520 85 20],'ForeGroundColor','black') ;

jogg_m1 = uicontrol(f,'Style','text','String','M1 :', 'Position', [25 225 85 20],'ForeGroundColor','black') ;
jogg_m2 = uicontrol(f,'Style','text','String','M2 :', 'Position', [25 175 85 20],'ForeGroundColor','black') ;
jogg_m3 = uicontrol(f,'Style','text','String','M3 :', 'Position', [25 125 85 20],'ForeGroundColor','black') ;
jogg_m4 = uicontrol(f,'Style','text','String','M4 :', 'Position', [25 75 85 20],'ForeGroundColor','black') ;

valeur_x = uicontrol(f,'Style','edit','String','0','Position', [100 623 50 20]) ;
valeur_y = uicontrol(f,'Style','edit','String','0','Position', [100 573 50 20]) ;
valeur_z = uicontrol(f,'Style','edit','String','0','Position', [100 523 50 20]) ;

move(0,0,0,9.8,0) ; 

uicontrol(f,'Style','text','String',"Etat :", 'Position', [25 300 85 20], 'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String',"Eteint", 'Position', [80 300 85 20], 'ForeGroundColor','black') ;

uicontrol(f,'Style','text','String','AUBERT, DECHENE, IBARRA, MOURIER, RICHARD', 'Position', [0 30 300 20],'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String','RPAC SOFTWARE, POC 2019/2021, HEI Campus Centre', 'Position', [10 10 300 20], 'ForeGroundColor','black') ;

bpAide = uicontrol(f,'Style','pushbutton','String','?','Position', [1460 660 30 30],'Callback','info()') ;

global bit_EM ;
bit_EM = 0 ;

%  delete(instrfindall) ; %Destruction de tous les ports séries
%  robot = serial('COM9','BaudRate',9600) ; %Déclaration d'un port série
%  fopen(robot) ; %Ouverture de la liaison
%  pause(2);
%  msgbox('Connexion au RPAC réussie.');

%fclose(robot) ; %Fermeture de la liaison

robot = 1 ;

%uicontrol(f,'Style','pushbutton','String','Connexion','Position', [1300 660 70 30],'Callback','robot = connect()') ;
%uicontrol(f,'Style','pushbutton','String','Déconnexion','Position', [1380 660 70 30],'Callback','disconnect(robot)') ;

uicontrol(f,'Style','pushbutton','String','Envoyer','Position', [250 560 150 60],'Callback','SIMU_RPAC(valeur_x,valeur_y,valeur_z,robot)');
uicontrol(f,'Style','pushbutton','String','Allumer','Position', [60 350 150 60],'Callback','electroaimant(1,robot)');
uicontrol(f,'Style','pushbutton','String','Eteindre','Position', [260 350 150 60],'Callback','electroaimant(0,robot)');

jogg_m1_1 = uicontrol(f,'Style','pushbutton','String','+1','Position', [100 225 30 30],'Callback','jogg(1,robot)') ;
jogg_m1_2 = uicontrol(f,'Style','pushbutton','String','-1','Position', [150 225 30 30],'Callback','jogg(2,robot)') ;
jogg_m1_3 = uicontrol(f,'Style','pushbutton','String','+0.1','Position', [200 225 30 30],'Callback','jogg(3,robot)') ;
jogg_m1_4 = uicontrol(f,'Style','pushbutton','String','-0.1','Position', [250 225 30 30],'Callback','jogg(4,robot)') ;

jogg_m2_1 = uicontrol(f,'Style','pushbutton','String','+1','Position', [100 175 30 30],'Callback','jogg(5,robot)') ;
jogg_m2_2 = uicontrol(f,'Style','pushbutton','String','-1','Position', [150 175 30 30],'Callback','jogg(6,robot)') ;
jogg_m2_3 = uicontrol(f,'Style','pushbutton','String','+0.1','Position', [200 175 30 30],'Callback','jogg(7,robot)') ;
jogg_m2_4 = uicontrol(f,'Style','pushbutton','String','-0.1','Position', [250 175 30 30],'Callback','jogg(8,robot)') ;

jogg_m3_1 = uicontrol(f,'Style','pushbutton','String','+1','Position', [100 125 30 30],'Callback','jogg(9,robot)') ;
jogg_m3_2 = uicontrol(f,'Style','pushbutton','String','-1','Position', [150 125 30 30],'Callback','jogg(10,robot)') ;
jogg_m3_3 = uicontrol(f,'Style','pushbutton','String','+0.1','Position', [200 125 30 30],'Callback','jogg(11,robot)') ;
jogg_m3_4 = uicontrol(f,'Style','pushbutton','String','-0.1','Position', [250 125 30 30],'Callback','jogg(12,robot)') ;

jogg_m4_1 = uicontrol(f,'Style','pushbutton','String','+1','Position', [100 75 30 30],'Callback','jogg(13,robot)') ;
jogg_m4_2 = uicontrol(f,'Style','pushbutton','String','-1','Position', [150 75 30 30],'Callback','jogg(14,robot)') ;
jogg_m4_3 = uicontrol(f,'Style','pushbutton','String','+0.1','Position', [200 75 30 30],'Callback','jogg(15,robot)') ;
jogg_m4_4 = uicontrol(f,'Style','pushbutton','String','-0.1','Position', [250 75 30 30],'Callback','jogg(16,robot)') ;

uicontrol(f,'Style','text','String','(rotation moteur)', 'Position', [325 225 85 20],'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String','(rotation moteur)', 'Position', [325 175 85 20],'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String','(rotation moteur)', 'Position', [325 125 85 20],'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String','(rotation moteur)', 'Position', [325 75 85 20],'ForeGroundColor','black') ;












