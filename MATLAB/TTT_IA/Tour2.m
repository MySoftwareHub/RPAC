function Res=Tour2(Tab,J)

p1=Tab(1);
p2=Tab(2);
p3=Tab(3);
p4=Tab(4);
p5=Tab(5);
p6=Tab(6);
p7=Tab(7);
p8=Tab(8);
p9=Tab(9);

if p1==J
               
        Case_a_jouer=1;

        while Tab(Case_a_jouer)~=0   
            Case_a_jouer=Aleatoire(1,6);
            if (Case_a_jouer==1)
                Case_a_jouer=7;
            end
            if (Case_a_jouer==6)
                Case_a_jouer=9;
            end
        end
        
        
    elseif p3==J
        
        Case_a_jouer=3;

        while Tab(Case_a_jouer)~=0   
            Case_a_jouer=Aleatoire(1,6);
            if (Case_a_jouer==3)
                Case_a_jouer=7;
            end
        
            if (Case_a_jouer==4)
                Case_a_jouer=9;
            end
        end 
        
        
        
    elseif p7==J   
        
        Case_a_jouer=7;

        while Tab(Case_a_jouer)~=0
            Case_a_jouer=Aleatoire(1,6); 
            if (Case_a_jouer==2)
                Case_a_jouer=8;
            end   
            
            if (Case_a_jouer==6)
                Case_a_jouer=9;
            end
        end 
        
        
        
    
    elseif p9==J 
        
        Case_a_jouer=9;

        while Tab(Case_a_jouer)~=0   
            Case_a_jouer=Aleatoire(1,6);
            if (Case_a_jouer==2)
                Case_a_jouer=7;
            end   
            
            if (Case_a_jouer==4)
                Case_a_jouer=8;
            end
        end  
        
        
    elseif p5==J 
        
        Case_a_jouer=Aleatoire(1,9);

        while Tab(Case_a_jouer)~=0   
            Case_a_jouer=Aleatoire(1,9);     
        end        
        
        
    elseif p2==J 
        
        Case_a_jouer=2;

        while Tab(Case_a_jouer)~=0
            Case_a_jouer=Aleatoire(1,4);
            if (Case_a_jouer==2)
                Case_a_jouer=5;
            end
        
            if (Case_a_jouer==4)
                Case_a_jouer=8;
            end
        end 
        
        
    elseif p4==J 
        
        Case_a_jouer=4;

        while Tab(Case_a_jouer)~=0
            Case_a_jouer=Aleatoire(1,4);
            if (Case_a_jouer==2)
                Case_a_jouer=5;
            end   
            
            if (Case_a_jouer==3)
                Case_a_jouer=6;
            end
        
            if (Case_a_jouer==4)
                Case_a_jouer=7;
            end
        end   
        
               
    elseif p6==J
        
        Case_a_jouer=6;

        while Tab(Case_a_jouer)~=0   
            Case_a_jouer=Aleatoire(1,4);
            if (Case_a_jouer==1)
                Case_a_jouer=5;
            end   
            
            if (Case_a_jouer==2)
                Case_a_jouer=9;
            end 
        end   
        
        
    elseif p8==J 
        
       Case_a_jouer=8;

        while Tab(Case_a_jouer)~=0   
            Case_a_jouer=Aleatoire(1,4);
            if (Case_a_jouer==1)
                Case_a_jouer=5;
            end   
            
            if (Case_a_jouer==3)
                Case_a_jouer=7;
            end 
            
            if (Case_a_jouer==4)
                Case_a_jouer=9;
            end
        end  
        
                
end


Res=Case_a_jouer;

end