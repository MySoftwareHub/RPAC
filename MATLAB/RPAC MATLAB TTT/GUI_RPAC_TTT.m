%Code principal de l'IHM de pilotage du robot.

close all ;
clear all ;
clc ;

f = figure('Name',' IHM RPAC V5.0 (IHM Mode TTT)','NumberTitle','off','Position',[20 60 1500 700],'MenuBar','none','Resize','Off') ; 
movegui('center') ;

p = uipanel(f,'Title','Contrôle Tic Tac Toe', 'Position', [0.01 0.1 0.4 0.9],'ForegroundColor','black') ;

graph = axes(f,'Units','pixels','Position', [750 50 600 600],'Xgrid','on','Ygrid','on') ;
axis([0 3 0 3]) ;
grid on ;
hold on ;

global joueur ;
joueur = 0 ;

uicontrol(f,'Style','text','String',"Joueur :", 'Position', [275 640 85 20], 'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String',"J1 (vert)", 'Position', [330 640 85 20], 'ForeGroundColor','black') ;

robot = 1 ;

uicontrol(f,'Style','pushbutton','String','Choix joueur','Position', [440 625 150 60],'Callback','choix_joueur()') ;

uicontrol(f,'Style','pushbutton','String','C1','Position', [60 500 100 100],'Callback','TTT(1,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C2','Position', [260 500 100 100],'Callback','TTT(2,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C3','Position', [460 500 100 100],'Callback','TTT(3,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C4','Position', [60 300 100 100],'Callback','TTT(4,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C5','Position', [260 300 100 100],'Callback','TTT(5,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C6','Position', [460 300 100 100],'Callback','TTT(6,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C7','Position', [60 100 100 100],'Callback','TTT(7,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C8','Position', [260 100 100 100],'Callback','TTT(8,joueur,robot)');
uicontrol(f,'Style','pushbutton','String','C9','Position', [460 100 100 100],'Callback','TTT(9,joueur,robot)');

line([0 3],[0 0],'Color','k') ;
line([0 3],[1 1],'Color','k') ;
line([0 3],[2 2],'Color','k') ;
line([0 3],[3 3],'Color','k') ;
line([0 0],[0 3],'Color','k') ;
line([1 1],[0 3],'Color','k') ;
line([2 2],[0 3],'Color','k') ;
line([3 3],[0 3],'Color','k') ;

bpAide = uicontrol(f,'Style','pushbutton','String','?','Position', [1460 660 30 30],'Callback','info()') ;

uicontrol(f,'Style','text','String','AUBERT, DECHENE, IBARRA, MOURIER, RICHARD', 'Position', [0 30 300 20],'ForeGroundColor','black') ;
uicontrol(f,'Style','text','String','RPAC SOFTWARE, POC 2019/2020, HEI Campus Centre', 'Position', [10 10 300 20], 'ForeGroundColor','black') ;

















