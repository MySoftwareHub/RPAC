function [data] = create_string(r_m1,r_m2,r_m3,r_m4,em)

    %Cette fonction permet de composer la chaîne
    %de caractères à envoyer au robot.

    r_m1 = round(r_m1,1) ;
    r_m2 = round(r_m2,1) ;
    r_m3 = round(r_m3,1) ;
    r_m4 = round(r_m4,1) ;
    
    str1 = num2str(abs(r_m1)) ;
    str2 = num2str(abs(r_m2)) ;
    str3 = num2str(abs(r_m3)) ;
    str4 = num2str(abs(r_m4)) ;
    
    if r_m1 >= 0
        s_r_m1 = '+' ;
    else
        s_r_m1 = '-';
    end
        
    if r_m2 >= 0
        s_r_m2 = '+';
    else
        s_r_m2 = '-';
    end
    
    if r_m3 >= 0
        s_r_m3 = '+';
    else
        s_r_m3 = '-';
    end
    
    if r_m4 >= 0
        s_r_m4 = '+';
    else
        s_r_m4 = '-';
    end

    
    if r_m1 == 0
        str1 = '0.0' ;
    end
    
    if r_m2 == 0
        str2 = '0.0' ;
    end
    
    if r_m3 == 0
        str3 = '0.0' ;
    end
    
    if r_m4 == 0
        str4 = '0.0' ;
    end
    
    
    
    s1 = length(str1) ;
    s2 = length(str2) ;
    s3 = length(str3) ;
    s4 = length(str4) ;
    
    
    if s1 == 1
        str1 = strcat("0",str1);
    end
    
    if s2 == 1
        str2 = strcat("0",str2);
    end
     
     if s3 == 1
        str3 = strcat("0",str3);
     end
     
     if s4 == 1
        str4 = strcat("0",str4);
     end
     
    if s1 == 3
        str1 = strcat("0",str1);
    end
    
    if s2 == 3
        str2 = strcat("0",str2);
    end
     
     if s3 == 3
        str3 = strcat("0",str3);
     end
     
     if s4 == 3
        str4 = strcat("0",str4);
     end
     
     
     
    if (s1 == 1) & (r_m1 ~= 0)
        str1 = strcat(str1,".0");
    end
    
    if (s2 == 1) & (r_m2 ~= 0)
        str2 = strcat(str2,".0");
    end
     
     if (s3 == 1) & (r_m3 ~= 0)
        str3 = strcat(str3,".0");
     end
     
     if (s4 == 1) & (r_m4 ~= 0)
        str4 = strcat(str4,".0");
     end
     
     
     if s1 == 2
        str1 = strcat(str1,".0");
     end
     
     if s2 == 2
        str2 = strcat(str2,".0");
     end
     
     if s3 == 2
        str3 = strcat(str3,".0");
     end
     
     if s4 == 2
        str4 = strcat(str4,".0");
     end
    
     str_em = num2str(em);
     
    data = strcat("M1",s_r_m1,str1,"/","M2",s_r_m2,str2,"/","M3",s_r_m3,str3,"/","M4",s_r_m4,str4,"/",str_em) ;
  
end