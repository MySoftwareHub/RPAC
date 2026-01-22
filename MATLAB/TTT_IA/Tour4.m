function Res=Tour4(Tab,J)

Case_a_jouer=0;

for i=1:9
    if (Tab(i)~=J)&&(Tab(i)~=0)
        Tab(i)=10;
    end
end
     
     
l1=Tab(1)+Tab(2)+Tab(3);
l2=Tab(4)+Tab(5)+Tab(6);
l3=Tab(7)+Tab(8)+Tab(9);

c1=Tab(1)+Tab(4)+Tab(7);
c2=Tab(2)+Tab(5)+Tab(8);
c3=Tab(3)+Tab(6)+Tab(9);

d1=Tab(1)+Tab(5)+Tab(9);
d2=Tab(3)+Tab(5)+Tab(7);  

val=J*2;

if (l1==val)
    if Tab(1)==0
        Case_a_jouer=1;
    elseif Tab(2)==0
        Case_a_jouer=2;
    else
        Case_a_jouer=3;
    end
end
        
if (l2==val)
    if Tab(4)==0
        Case_a_jouer=4;
    elseif Tab(5)==0
        Case_a_jouer=5;
    else
        Case_a_jouer=6;
    end
end
        
        
 if (l3==val)
    if Tab(7)==0
        Case_a_jouer=7;
    elseif Tab(8)==0
        Case_a_jouer=8;
    else
        Case_a_jouer=9;
    end
 end
        
 if (c1==val)
    if Tab(1)==0
        Case_a_jouer=1;
    elseif Tab(4)==0
        Case_a_jouer=4;
    else
        Case_a_jouer=7; 
    end
 end
 
 
 if (c2==val)
    if Tab(2)==0
        Case_a_jouer=2;
    elseif Tab(5)==0
        Case_a_jouer=5;
    else
        Case_a_jouer=8; 
    end
 end
 
 if (c3==val)
    if Tab(3)==0
        Case_a_jouer=3;
    elseif Tab(6)==0
        Case_a_jouer=6;
    else
        Case_a_jouer=9; 
    end
 end
 
 if (d1==val)
    if Tab(1)==0
        Case_a_jouer=1;
    elseif Tab(5)==0
        Case_a_jouer=5;
    else
        Case_a_jouer=9; 
    end
 end
 
 
 if (d2==val)
    if Tab(3)==0
        Case_a_jouer=3;
    elseif Tab(5)==0
        Case_a_jouer=5;
    else
        Case_a_jouer=7; 
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
    