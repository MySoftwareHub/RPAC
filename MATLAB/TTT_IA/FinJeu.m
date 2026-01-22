function Res= FinJeu(Tab)

fin=0;
Test=0;

p1=Tab(1);
p2=Tab(2);
p3=Tab(3);
p4=Tab(4);
p5=Tab(5);
p6=Tab(6);
p7=Tab(7);
p8=Tab(8);
p9=Tab(9);
   
    %test gagnant 1
     if (p1==p3)&&(p1~=0)
         if  p1==p2
            fin=p1; 
         end
     end  
     
     %test gagnant 2              
     if (p1==p7)&&(p1~=0)
         if  p1==p4           
            fin=p1;
         end
     end 
      
     %test gagnant 3
     if (p1==p9)&&(p1~=0)  
         if  p1==p5           
            fin=p1;
         end

     end
     
     %test gagnant 4
     if (p2==p8)&&(p2~=0)  
         if  p2==p5           
            fin=p2;
         end
     end
     
     %test gagnant 5
     if (p3==p7)&&(p3~=0)  
         if  p3==p5           
            fin=p3;
         end
     end
     
     %test gagnant 6
     if (p3==p9)&&(p3~=0)  
         if  p3==p6           
            fin=p3;
         end
     end
     
     %test gagnant 7
     if (p4==p6)&&(p4~=0)  
         if  p4==p5           
            fin=p4;
         end
     end
     
     %test gagnant 8
     if (p7==p9)&&(p7~=0)  
         if  p7==p8           
            fin=p7;
         end
     end  
     
     for i=1:9
         if Tab(i)==0
             Test=Test+1;
         end
     end
     
     if (Test==1)&&(fin==0)
         fin=3;
     end
     
     disp(fin);

     switch fin        
        case 1   
            Desactivation_Bouton(Tab);
            uicontrol('Style','text','String'," Les Ronds gagnent", 'Position', [480 625 58 40], 'ForeGroundColor','black') ;
            myicon = imread('victory.png');
            msgbox('Victoire des Ronds','Résultat','custom',myicon);
            
            
        case 2    
            Desactivation_Bouton(Tab);
            uicontrol('Style','text','String'," Les Croix gagnent", 'Position', [480 625 58 40], 'ForeGroundColor','black') ;
            myicon = imread('victory.png');
            msgbox('Victoire des Croix','Résultat','custom',myicon);
            
            
         case 3   
            Desactivation_Bouton(Tab);
            uicontrol('Style','text','String'," Partie nulle", 'Position', [480 625 58 40], 'ForeGroundColor','black') ;       
            myicon = imread('draw.png');
            msgbox('Partie nulle','Résultat','custom',myicon);
            
     end 
      
Res=fin;    
        
end   

