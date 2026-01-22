%Code principal de l'IHM de pilotage du robot.

close all ;
clear all ;
clc ;
Tab=[0 0 0 0 0 0 0 0 0];
IA=0;
Tour=1;

%%Génération de la fenêtre
f = figure('Name',' IHM RPAC V5.0 (IHM Mode TTT)','NumberTitle','off','Position',[0 0 625 780],'MenuBar','none','Resize','Off') ; 
movegui('center') ;

%%Génération des encadrés
uipanel(f,'Title','État', 'Units', 'pixels', 'Position', [25 700 575 70],'ForegroundColor','black') ;
uipanel(f,'Title','Mode', 'Units', 'pixels', 'Position', [25 620 575 70],'ForegroundColor','black') ;
uipanel(f,'Title','Tic Tac Toe', 'Units', 'pixels', 'Position', [25 60 575 550],'ForegroundColor','black') ;

global joueur ;
joueur = 0 ;

%%LED
uicontrol('Style','pushbutton', 'Position', [302 725 15 15], 'Enable', 'off') ;

%%Boutons connexion, déconnexion
uicontrol(f,'Style','pushbutton','String','Connexion','Position', [175 718 70 30],'Callback','robot = connect()') ;
uicontrol(f,'Style','pushbutton','String','Déconnexion','Position', [375 718 70 30],'Callback','disconnect(robot)') ;


%%Bouton mode
uicontrol(f,'Style','togglebutton','String','J1 vs J2','Position', [75 635 70 30],'Callback','J1_vs_J2()', 'Enable', 'off') ;
uicontrol(f,'Style','togglebutton','String','J1 vs IA','Position', [275 635 70 30],'Callback','[IA Tab]=J1_vs_IA(Tab, robot)', 'Enable', 'off') ;

%%Cases
uicontrol(f,'Style','pushbutton','String','','Position', [60 480 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,1, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [260 480 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,2, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [460 480 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,3, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [60 280 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,4, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [260 280 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,5, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [460 280 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,6, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [60 80 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,7, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [260 80 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,8, robot)', 'Enable', 'off');
uicontrol(f,'Style','pushbutton','String','','Position', [460 80 100 100],'Callback','[Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,9, robot)', 'Enable', 'off');

%%Affichage données en bas
uicontrol(f,'Style','text','String','  AUBERT, DECHENE, IBARRA, MOURIER, RICHARD', 'Position', [0 30 300 20],'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String','TIC TAC TOE HMI, POC 2019/2021, HEI Campus Centre', 'Position', [10 10 300 20], 'ForeGroundColor','black') ;