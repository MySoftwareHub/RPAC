function [Tab Tour joueur]=Jeu(Tab,Tour,IA,joueur,position, robot)
   
    temps=0.75;
    jIA=2;

    if IA==1
        joueur=1;
    elseif IA==2
        joueur=0;
    end
    
      
    if (joueur == 0)
        Tab(position)=1;
    elseif (joueur == 1)
        Tab(position)=2;
    end
    
    Dessin_plateau(Tab);
    Deplacement_Robot(position, joueur, Tour, robot);
    
    if (IA==0)&&(joueur==1)
        Tour=Tour+1;
    end
            
    if IA==0
        if joueur==0
            joueur=1;
        elseif joueur==1
            joueur=0;
        end
    end
    
    
            
    Res= FinJeu(Tab);
    
    if (IA~=0)&&(Res==0)
        
        pause(temps); 

        if IA==1
            Tour=Tour+1;
        end

        if Tour==1    
            Case_a_jouer=Tour1(Tab);    
        elseif Tour==2
            Case_a_jouer=Tour2(Tab,IA);        
        elseif Tour==3     
            Case_a_jouer=Tour3(Tab,IA);    
        elseif Tour==4
            Case_a_jouer=Tour4(Tab,IA);
        end  

        Tab(Case_a_jouer)=IA;
      
        if IA==1
            jIA=0;
        elseif IA==2
            jIA=1;
        end
        
        Dessin_plateau(Tab); 
        Deplacement_Robot(Case_a_jouer, jIA, Tour, robot);
        
        if IA==2
            Tour=Tour+1;
        end
        
        Res= FinJeu(Tab);
    end        
end

