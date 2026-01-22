#include <SoftwareSerial.h>

SoftwareSerial ArduinoMaster(2,3);
String msg;

void setup(){
  //Serial.begin(9600);
  ArduinoMaster.begin(9600);   
  pinMode(13,OUTPUT) ; 
   pinMode(9,OUTPUT) ; 
}

void loop(){
  readSerialPort();

  if(msg=="0"){
    digitalWrite(13,LOW) ;
     digitalWrite(9,LOW) ;
    msg=""; 
  }
  if(msg=="1"){
    digitalWrite(13,HIGH) ;
     digitalWrite(9,HIGH) ;
    msg=""; 
  }
}

void readSerialPort(){
 while (ArduinoMaster.available()) {
   delay(10); 
   if (ArduinoMaster.available() >0) {
     char c = ArduinoMaster.read();  //gets one byte from serial buffer
     msg += c; //makes the string readString
   }
 }
 ArduinoMaster.flush();
}

