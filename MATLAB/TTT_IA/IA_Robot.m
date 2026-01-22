function pos=IA_Robot(Tour,Tab,J)


if Tour==1
    
    Case_a_jouer=Tour1(Tab);
    
elseif Tour==2
    
    Case_a_jouer=Tour2(Tab,J);    
    
elseif Tour==3
     
    Case_a_jouer=Tour3(Tab,J);
    
elseif Tour==4
    
    Case_a_jouer=Tour4(Tab,J);

end    
        
        
pos=Case_a_jouer;    

