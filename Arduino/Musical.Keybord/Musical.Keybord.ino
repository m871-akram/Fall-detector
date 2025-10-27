//Create a matrix with the frequencies of the muical notes C4,D4,E4,F4 
int notes[]={262,294,330,349};

void setup() {
  //To force transmission speed between Arduino and the computer to be 9600 bytes/second
  Serial.begin(9600); 
  }

void loop() {
   int PushedKeyValue=analogRead(A0);
   Serial.println(PushedKeyValue);
  //Depending on the value obtained, we make the piezometre vibrate at the correspondant frequence. If PushedKeyValue==1023 it will be a C4, for example.
  if (PushedKeyValue==1023){
    tone(8,notes[0]);
  }
  else if (PushedKeyValue >=990 && PushedKeyValue<=1010){
    tone(8,notes[1]);
  }
  else if (PushedKeyValue >=505 && PushedKeyValue<=515){
    tone(8,notes[2]);
  }
  else if (PushedKeyValue >=5 && PushedKeyValue<=10){
    tone(8,notes[3]);
  }
  else{
    noTone(8);
  }
}
