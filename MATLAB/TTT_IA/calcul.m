function Res=calcul(Tab,J)

val=0;
test=10;

for i=1:9
    if Tab(i)~=J
        Tab(i)=0;
    else
        Tab(i)=1;
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


if l1==2
    
    i=1;
    while (test~=0) 
        
        test=Tab(i);
        i=i+1;
        
    end
    
    val=i-1;
    
    
elseif l2==2
    
    
    i=4;
    while (test~=0) 
        
        test=Tab(i);
        i=i+1;
        
    end
    
    val=i-1;
    
    
elseif l3==2
    
    
    i=7;
    while (test~=0) 
        
        test=Tab(i);
        i=i+1;
        
    end
    
    val=i-1;
   
    
elseif c1==2
    
    
    i=1;
    while (test~=0) 
        
        test=Tab(i);
        i=i+3;
        
    end
    
    val=i-3;
    
             
elseif c2==2 
    
    i=2;
    while (test~=0) 
        
        test=Tab(i);
        i=i+3;
        
    end
    
    val=i-3;

elseif c3==2
    
    
    i=3;
    while (test~=0) 
        
        test=Tab(i);
        i=i+3;
        
    end
    
    val=i-3;
    
         
elseif d1==2
    
    i=1;
    while (test~=0) 
        
        test=Tab(i);
        i=i+4;
        
    end
    
    val=i-4;
 
    
elseif d2==2
    
    i=3;
    while (test~=0) 
        
        test=Tab(i);
        i=i+2;
        
    end
    
    val=i-2;

end

      
Res=val;   
  
    
end

