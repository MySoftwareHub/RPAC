function jogg(cas,robot)

   global bit_EM ;
   str_em = num2str(bit_EM) ;

   switch (cas)
       case 1 
          trame = strcat("M1+01.0/M2+00.0/M3+00.0/M4+00.0/",str_em) ;
       case 2
          trame = strcat("M1-01.0/M2+00.0/M3+00.0/M4+00.0/",str_em) ;
       case 3 
          trame = strcat("M1+00.1/M2+00.0/M3+00.0/M4+00.0/",str_em) ;
       case 4
          trame = strcat("M1-00.1/M2+00.0/M3+00.0/M4+00.0/",str_em) ;
       case 5
          trame = strcat("M1+00.0/M2+01.0/M3+00.0/M4+00.0/",str_em) ;
       case 6
          trame = strcat("M1+00.0/M2-01.0/M3+00.0/M4+00.0/",str_em) ;
       case 7
          trame = strcat("M1+00.0/M2+00.1/M3+00.0/M4+00.0/",str_em) ;
       case 8
          trame = strcat("M1+00.0/M2-00.1/M3+00.0/M4+00.0/",str_em) ;
       case 9
          trame = strcat("M1+00.0/M2+00.0/M3+01.0/M4+00.0/",str_em) ;
       case 10
          trame = strcat("M1+00.0/M2+00.0/M3-01.0/M4+00.0/",str_em) ;
       case 11
          trame = strcat("M1+00.0/M2+00.0/M3+00.1/M4+00.0/",str_em) ;
       case 12
          trame = strcat("M1+00.0/M2+00.0/M3-00.1/M4+00.0/",str_em) ;
       case 13
          trame = strcat("M1+00.0/M2+00.0/M3+00.0/M4+01.0/",str_em) ;
       case 14
          trame = strcat("M1+00.0/M2+00.0/M3+00.0/M4-01.0/",str_em) ;
       case 15
          trame = strcat("M1+00.0/M2+00.0/M3+00.0/M4+00.1/",str_em) ;
       case 16
          trame = strcat("M1+00.0/M2+00.0/M3+00.0/M4-00.1/",str_em) ;
       otherwise
          trame = strcat("M1+00.0/M2+00.0/M3+00.0/M4+00.0/",str_em) ;
   end 
  disp(trame) ;
  
  %send_robot(trame,robot) ;
end 

    