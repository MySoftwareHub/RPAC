// Use MultiStepper class to manage multiple steppers and make them all move to 
// the same position at the same time for linear 2d (or 3d) motion.
#include <AccelStepper.h>
#include <MultiStepper.h>

#include <SoftwareSerial.h>

#define motorInterfaceType 4

SoftwareSerial ArduinoSlave(50,51);

String msg;

//Pas necessaires pour faire 1 tour (360°).
const int stepsPerRevolution = 201;

//Variables qui contientent le nombre de pas à effectuer.
int steps; 
int steps2;
int steps3;
int steps4;
  
//Trame contenant l'info.
String frame =""; 

AccelStepper stepper1 = AccelStepper(motorInterfaceType, 8,9,10,11);
AccelStepper stepper2 = AccelStepper(motorInterfaceType, 3,4,5,6);
AccelStepper stepper3 = AccelStepper(motorInterfaceType, 14,15,16,17);
AccelStepper stepper4 = AccelStepper(motorInterfaceType, 18,19,20,21);

//Jusqu'à 10 moteurs en parallèle.
MultiStepper steppers;


void setup()
{
  Serial.begin(9600);
  ArduinoSlave.begin(9600);       
  pinMode(13,OUTPUT);
  
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  
  pinMode(14,OUTPUT);
  pinMode(15,OUTPUT);
  pinMode(16,OUTPUT);
  pinMode(17,OUTPUT);
  
  pinMode(18,OUTPUT);
  pinMode(19,OUTPUT);
  pinMode(20,OUTPUT);
  pinMode(21,OUTPUT);

  digitalWrite(13,LOW);
  
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
  digitalWrite(10,LOW);
  digitalWrite(11,LOW); 

  digitalWrite(3,LOW);
  digitalWrite(4,LOW);
  digitalWrite(5,LOW);
  digitalWrite(6,LOW); 

  digitalWrite(14,LOW);
  digitalWrite(15,LOW);
  digitalWrite(16,LOW);
  digitalWrite(17,LOW);

  digitalWrite(18,LOW);
  digitalWrite(19,LOW);
  digitalWrite(20,LOW);
  digitalWrite(21,LOW);

  
  // Configure each stepper
  stepper1.setMaxSpeed(200);
  stepper2.setMaxSpeed(200);
  stepper3.setMaxSpeed(200);
  stepper4.setMaxSpeed(200);
  
  // Then give them to MultiStepper to manage
  steppers.addStepper(stepper1);
  steppers.addStepper(stepper2);
  steppers.addStepper(stepper3);
  steppers.addStepper(stepper4);
}



void loop() 
{
  int i ; 
    
  String motor_1 = "" ;
  String motor_2 = "" ;
  String motor_3 = "" ;
  String motor_4 = "" ;

  String data_m1 = "" ;
  String data_m2 = "" ;
  String data_m3 = "" ;
  String data_m4 = "" ;
  String data_elec = "" ;

  float f_data_m1 ;
  float f_data_m2 ;
  float f_data_m3 ;
  float f_data_m4 ;



while (Serial.available () > 0)  {

  frame+=(char)Serial.read();
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
  digitalWrite(10,LOW);
  digitalWrite(11,LOW); 

  digitalWrite(3,LOW);
  digitalWrite(4,LOW);
  digitalWrite(5,LOW);
  digitalWrite(6,LOW); 

  digitalWrite(14,LOW);
  digitalWrite(15,LOW);
  digitalWrite(16,LOW);
  digitalWrite(17,LOW);

  digitalWrite(18,LOW);
  digitalWrite(19,LOW);
  digitalWrite(20,LOW);
  digitalWrite(21,LOW);
  
 
  
}


    //Trame de texte
//frame = "M1+00.0/M2+00.0/M3+00.0/M4+00.0/1" ; //Pour test.
          
    if(frame.length() == 33) {
      
      for(i = 0; i <= 6; i++) {
        motor_1.concat(frame[i]) ;
        } 

      for(i = 0; i <= 6; i++) {
        motor_2.concat(frame[i+8]) ;
        } 

      for(i = 0; i <= 6; i++) {
        motor_3.concat(frame[i+16]) ;
        } 

      for(i = 0; i <= 6; i++) {
        motor_4.concat(frame[i+24]) ;
        } 

    data_elec = frame[32] ; 
  data_elec=data_elec.toInt();


      if((motor_1[0] == 'M') && (motor_1[1] == '1')){
        
        for(i = 0; i <= 4; i++) {
    
            data_m1.concat(motor_1[i+2]) ;
            
            }
      }

      if((motor_2[0] == 'M') && (motor_2[1] == '2')){
    
        for(i = 0; i <= 4; i++) {
    
            data_m2.concat(motor_2[i+2]) ;
            
            }
      }

      if((motor_3[0] == 'M') && (motor_3[1] == '3')){
    
        for(i = 0; i <= 4; i++) {
    
            data_m3.concat(motor_3[i+2]) ;
            
            }
      }
    
      if((motor_4[0] == 'M') && (motor_4[1] == '4')){
    
        for(i = 0; i <= 4; i++) {
    
            data_m4.concat(motor_4[i+2]) ;
            
            }
      }

      if(data_elec == "1"){
        
        digitalWrite(13, HIGH);
        ArduinoSlave.print(data_elec);
       
      }
      else {
       
        digitalWrite(13, LOW);
        ArduinoSlave.print(data_elec);
        
      }
     //Serial.println(data_elec) ;
     
      
//tours à faire pour chaque moteur
  f_data_m1 = data_m1.toFloat() ;
  f_data_m2 = data_m2.toFloat() ;
  f_data_m3 = data_m3.toFloat() ;
  f_data_m4 = data_m4.toFloat() ;


//  Serial.println(f_data_m1) ;    //pour debug au cas où
//  Serial.println(f_data_m2) ;    //pour debug au cas où
//  Serial.println(f_data_m3) ;    //pour debug au cas où
//  Serial.println(f_data_m4) ;    //pour debug au cas où
 

//tours en steps
steps = f_data_m1 * stepsPerRevolution; 
steps2 = f_data_m2 * stepsPerRevolution; 
steps3 = f_data_m3 * stepsPerRevolution; 
steps4 = f_data_m4 * stepsPerRevolution; 



  
long positions[4]; // Array of desired stepper positions
 stepper1.setCurrentPosition(0); 
 stepper2.setCurrentPosition(0); 
 stepper3.setCurrentPosition(0); 
 stepper4.setCurrentPosition(0);


   //Move to a different coordinate
  positions[0] = steps;
  positions[1] = steps2;
  positions[2] = steps3;
  positions[3] = steps4;
  steppers.moveTo(positions);   
  
  steppers.runSpeedToPosition(); // Blocks until all are in position

  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
  digitalWrite(10,LOW);
  digitalWrite(11,LOW); 

  digitalWrite(3,LOW);
  digitalWrite(4,LOW);
  digitalWrite(5,LOW);
  digitalWrite(6,LOW); 

  
  digitalWrite(14,LOW);
  digitalWrite(15,LOW);
  digitalWrite(16,LOW);
  digitalWrite(17,LOW);

  digitalWrite(18,LOW);
  digitalWrite(19,LOW);
  digitalWrite(20,LOW);
  digitalWrite(21,LOW);
  
 delay(1000) ; 

  //reboot
  frame="";
  data_elec="";
  
}
}
