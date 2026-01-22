function send_robot(trame,robot)

 %Cette fonction permet d'écrire la trame sur le
 %port série associé au robot.

fwrite(robot, trame); 
disp("Envoyé");

end

