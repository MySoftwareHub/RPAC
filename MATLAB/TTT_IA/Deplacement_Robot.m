function Deplacement_Robot(Case_a_jouer, Joueur, Tour, robot)

temps=5;
temps2=4;
temps_electroaimant=1;
disp(Joueur);
disp(Tour);

%Case 1
Pos1hdR = 'M1+01.1/M2-01.2/M3+01.8/M4+03.5/0'; %Position Ref to Case1
Pos1hmR = 'M1-01.1/M2+01.2/M3-01.8/M4-03.5/1'; %Case1 to Position Ref

Pos1bdR = 'M1+01.4/M2+01.8/M3+01.3/M4+01.1/0'; %Case1 to Position Ref
Pos1bmR = 'M1-01.4/M2-01.8/M3-01.3/M4-01.1/1'; %Case1 to Position Ref


%Case 2
Pos2hdR = 'M1+00.4/M2-00.7/M3+02.1/M4+02.9/0'; %Position Ref to Case2
Pos2hmR = 'M1-00.4/M2+00.7/M3-02.1/M4-02.9/1'; %Case2 to Position Ref

Pos2bdR = 'M1+01.5/M2+01.7/M3+01.3/M4+01.1/0'; %Case2 to Position Ref
Pos2bmR = 'M1-01.5/M2-01.7/M3-01.3/M4-01.1/1'; %Case2 to Position Ref



%Case 3
Pos3hdR = 'M1-00.2/M2-00.2/M3+02.5/M4+02.4/0'; %Position Ref to Case2
Pos3hmR = 'M1+00.2/M2+00.2/M3-02.5/M4-02.4/1'; %Case2 to Position Ref

Pos3bdR = 'M1+01.6/M2+01.6/M3+01.2/M4+01.2/0'; %Position Ref to Case2
Pos3bmR = 'M1-01.6/M2-01.6/M3-01.2/M4-01.2/1'; %Case2 to Position Ref



%Case 4
Pos4hdR = 'M1-00.8/M2+00.5/M3+03.0/M4+02.0/0'; %Position Ref to Case5
Pos4hmR = 'M1+00.8/M2-00.5/M3-03.0/M4-02.0/1'; %Case5 to Position Ref

Pos4bdR = 'M1+01.7/M2+01.5/M3+01.2/M4+01.2/0'; %Position Ref to Case2
Pos4bmR = 'M1-01.7/M2-01.5/M3-01.2/M4-01.2/1';  %Case2 to Position Ref



%Case 5
Pos5hdR = 'M1-01.2/M2+01.2/M3+03.5/M4+01.6/0'; %Position Ref to Case5
Pos5hmR = 'M1+01.2/M2-01.2/M3-03.5/M4-01.6/1'; %Case5 to Position Ref

Pos5bdR = 'M1+01.8/M2+01.4/M3+01.1/M4+01.3/0'; %Position Ref to Case2
Pos5bmR = 'M1-01.8/M2-01.4/M3-01.1/M4-01.3/1'; %Case2 to Position Ref


%Case 6
Pos1hdC = 'M1+03.5/M2+01.8/M3-01.2/M4+01.3/0'; %Position Ref to Case5
Pos1hmC = 'M1-03.5/M2-01.8/M3+01.2/M4-01.3/1'; %Case5 to Position Ref

Pos1bdC = 'M1+01.1/M2+01.3/M3+01.8/M4+01.3/0'; %Position Ref to Case2
Pos1bmC = 'M1-01.1/M2-01.3/M3-01.8/M4-01.3/1'; %Case2 to Position Ref


%Case 7
Pos2hdC = 'M1+03.0/M2+02.1/M3-00.7/M4+00.5/0'; %Position Ref to Case5
Pos2hmC = 'M1-03.0/M2-02.1/M3+00.7/M4-00.5/1'; %Case5 to Position Ref

Pos2bdC = 'M1+01.1/M2+01.3/M3+01.7/M4+01.4/0'; %Position Ref to Case2
Pos2bmC = 'M1-01.1/M2-01.3/M3-01.7/M4-01.4/1'; %Case2 to Position Ref


%Case 8
Pos3hdC = 'M1+02.5/M2+02.5/M3-00.2/M4-00.1/0'; %Position Ref to Case5
Pos3hmC = 'M1-02.5/M2-02.5/M3+00.2/M4+00.1/1'; %Case5 to Position Ref

Pos3bdC = 'M1+01.2/M2+01.2/M3+01.6/M4+01.5/0'; %Position Ref to Case2
Pos3bmC = 'M1-01.2/M2-01.2/M3-01.6/M4-01.5/1'; %Case2 to Position Ref


%Case 9
Pos4hdC = 'M1+02.1/M2+03.0/M3+00.5/M4-00.8/0'; %Position Ref to Case5
Pos4hmC = 'M1-02.1/M2-03.0/M3-00.5/M4+00.8/1'; %Case5 to Position Ref

Pos4bdC = 'M1+01.2/M2+01.2/M3+01.5/M4+01.7/0'; %Position Ref to Case2
Pos4bmC = 'M1-01.2/M2-01.2/M3-01.5/M4-01.7/1'; %Case2 to Position Ref



PRefRond_1 = 'M1-01.1/M2-01.0/M3+01.4/M4+01.3/0';%Postion Ref to Position Ref Rond
PRefRond_2 = 'M1+01.1/M2+01.0/M3-01.4/M4-01.3/1';%Postion Ref Rond to Position Ref


PRefCroix_1 = 'M1+01.4/M2+01.4/M3-01.0/M4-01.0/0';%Postion Ref to Position Ref Croix
PRefCroix_2 = 'M1-01.4/M2-01.4/M3+01.0/M4+01.0/1';%Postion Ref Croix to Position Ref

%Case 1
Pos1_1 = 'M1+02.3/M2+01.5/M3+02.4/M4+03.2/1'; %Position Ref to Case1
Pos1_2 = 'M1-02.3/M2-01.5/M3-02.4/M4-03.2/0'; %Case1 to Position Ref

%Case 2
Pos2_1 = 'M1+02.7/M2+01.9/M3+01.9/M4+02.8/1'; %Position Ref to Case2
Pos2_2 = 'M1-02.7/M2-01.9/M3-01.9/M4-02.8/0'; %Case2 to Position Ref

%Case 3
Pos3_1 = 'M1+03.2/M2+02.4/M3+01.5/M4+02.4/1'; %Position Ref to Case3
Pos3_2 = 'M1-03.2/M2-02.4/M3-01.5/M4-02.4/0'; %Case3 to Position Ref

%Case 4
Pos4_1 = 'M1+01.8/M2+01.9/M3+02.8/M4+02.7/1'; %Position Ref to Case4
Pos4_2 = 'M1-01.8/M2-01.9/M3-02.8/M4-02.7/0'; %Case4 to Position Ref

%Case 5
Pos5_1 = 'M1+02.3/M2+02.3/M3+02.3/M4+02.2/1'; %Position Ref to Case5
Pos5_2 = 'M1-02.3/M2-02.3/M3-02.3/M4-02.2/0'; %Case5 to Position Ref

%Case 6
Pos6_1 = 'M1+02.8/M2+02.8/M3+01.9/M4+01.8/1'; %Position Ref to Case6
Pos6_2 = 'M1-02.8/M2-02.8/M3-01.9/M4-01.8/0'; %Case6 to Position Ref

%Case 7
Pos7_1 = 'M1+01.4/M2+02.4/M3+03.3/M4+02.3/1'; %Position Ref to Case7
Pos7_2 = 'M1-01.4/M2-02.4/M3-03.3/M4-02.3/0'; %Case7 to Position Ref

%Case 8
Pos8_1 = 'M1+01.9/M2+02.8/M3+02.8/M4+01.8/1'; %Position Ref to Case8
Pos8_2 = 'M1-01.9/M2-02.8/M3-02.8/M4-01.8/0'; %Case8 to Position Ref

%Case 9
Pos9_1 = 'M1+02.4/M2+03.3/M3+02.4/M4+01.4/1'; %Position Ref to Case9
Pos9_2 = 'M1-02.4/M2-03.3/M3-02.4/M4-01.4/0'; %Case9 to Position Ref


Electroaimant1 = 'M1+00.0/M2+00.0/M3+00.0/M4+00.0/1'; %Electroaimant on
Electroaimant2 = 'M1+00.0/M2+00.0/M3+00.0/M4+00.0/0'; %Electroaimant off


switch Case_a_jouer
    case 1
        Case_a_jouer_alle=Pos1_1;
        Case_a_jouer_retour=Pos1_2;
    case 2
        Case_a_jouer_alle=Pos2_1;
        Case_a_jouer_retour=Pos2_2;
    case 3
        Case_a_jouer_alle=Pos3_1;
        Case_a_jouer_retour=Pos3_2;
    case 4
        Case_a_jouer_alle=Pos4_1;
        Case_a_jouer_retour=Pos4_2;
    case 5
        Case_a_jouer_alle=Pos5_1;
        Case_a_jouer_retour=Pos5_2;
    case 6
        Case_a_jouer_alle=Pos6_1;
        Case_a_jouer_retour=Pos6_2;
    case 7
        Case_a_jouer_alle=Pos7_1;
        Case_a_jouer_retour=Pos7_2;
    case 8
        Case_a_jouer_alle=Pos8_1;
        Case_a_jouer_retour=Pos8_2;
    case 9
        Case_a_jouer_alle=Pos9_1;
        Case_a_jouer_retour=Pos9_2;
end

switch Tour
    case 1
               
        if Joueur==0 %Rond
            %récupération de la pièce ronde
            fwrite(robot, Pos1hdR); 
            pause(temps);
            fwrite(robot, Pos1bdR ); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos1bmR); 
            pause(temps2);
            fwrite(robot, Pos1hmR); 
            pause(temps);
            
            
        elseif Joueur==1 %Croix
            
            %récupération de la pièce en croix
            fwrite(robot, Pos1hdC); 
            pause(temps);
            fwrite(robot, Pos1bdC); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos1bmC); 
            pause(temps2);
            fwrite(robot, Pos1hmC); 
            pause(temps);
            
        end
            
        %Dépose sur le plateau
        fwrite(robot, Case_a_jouer_alle); 
        pause(temps2);
        fwrite(robot,Electroaimant2);
        pause(temps_electroaimant);
        fwrite(robot, Case_a_jouer_retour); 
        pause(temps2);
        
        
    case 2
        if Joueur==0
            %récupération de la pièce ronde
            fwrite(robot, Pos2hdR); 
            pause(temps);
            fwrite(robot, Pos2bdR ); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos2bmR); 
            pause(temps2);
            fwrite(robot, Pos2hmR); 
            pause(temps);
            
            
        elseif Joueur==1 %Croix
            
            %récupération de la pièce en croix
            fwrite(robot, Pos2hdC); 
            pause(temps);
            fwrite(robot, Pos2bdC); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos2bmC); 
            pause(temps2);
            fwrite(robot, Pos2hmC); 
            pause(temps);
            
        end
                          
        %Dépose sur le plateau
        fwrite(robot, Case_a_jouer_alle); 
        pause(temps);
        fwrite(robot,Electroaimant2);
        pause(temps_electroaimant);
        fwrite(robot, Case_a_jouer_retour); 
        pause(temps2);
   
        
    case 3
        
        if Joueur==0
            %récupération de la pièce ronde
            fwrite(robot, Pos3hdR); 
            pause(temps);
            fwrite(robot, Pos3bdR ); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos3bmR); 
            pause(temps2);
            fwrite(robot, Pos3hmR); 
            pause(temps);
            
            
        elseif Joueur==1 %Croix
            
            %récupération de la pièce en croix
            fwrite(robot, Pos3hdC); 
            pause(temps);
            fwrite(robot, Pos3bdC); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos3bmC); 
            pause(temps2);
            fwrite(robot, Pos3hmC); 
            pause(temps);
            
        end
            
        %Dépose sur le plateau
        fwrite(robot, Case_a_jouer_alle); 
        pause(temps);
        fwrite(robot,Electroaimant2);
        pause(temps);
        fwrite(robot, Case_a_jouer_retour); 
        pause(temps2);
        
    case 4
        
        if Joueur==0
            %récupération de la pièce ronde
            fwrite(robot, Pos4hdR); 
            pause(temps);
            fwrite(robot, Pos4bdR ); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos4bmR); 
            pause(temps2);
            fwrite(robot, Pos4hmR); 
            pause(temps);
            
            
        elseif Joueur==1 %Croix
            
            %récupération de la pièce en croix
            fwrite(robot, Pos4hdC); 
            pause(temps);
            fwrite(robot, Pos4bdC); 
            pause(temps2);
            fwrite(robot,Electroaimant1);
            pause(temps_electroaimant);
            fwrite(robot, Pos4bmC); 
            pause(temps2);
            fwrite(robot, Pos4hmC); 
            pause(temps);
            
        end
            
        %Dépose sur le plateau
        fwrite(robot, Case_a_jouer_alle); 
        pause(temps);
        fwrite(robot,Electroaimant2);
        pause(temps);
        fwrite(robot, Case_a_jouer_retour); 
        pause(temps2);
        
end

end