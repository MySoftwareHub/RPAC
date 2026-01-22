function Res=Tour3(Tab,J)

X=calcul(Tab,J);


if Tab(X)==0
    Case_a_jouer=X;
else
    
    Case_a_jouer=Aleatoire(1,9);

    while Tab(Case_a_jouer)~=0
   
        Case_a_jouer=Aleatoire(1,9);
        
    end
end


 if Case_a_jouer==0
    Case_a_jouer=Aleatoire(1,9);

    while Tab(Case_a_jouer)~=0
   
        Case_a_jouer=Aleatoire(1,9);
        
    end
 end
    
    Res=Case_a_jouer;
end
    
    


