/*
  Diese Anwendung zählt die Variable xtest hoch
  
 
  This example code is in the public domain.
 */
 
// Pin 13 has an LED connected on most Arduino boards.
// give it a name:
int led = 13;
int xtest;
// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);     
}

// the loop routine runs over and over again forever:
void loop() {
  digitalWrite(led, HIGH);   // LED An
  delay (25);
  digitalWrite(led, LOW);    // LED Aus
  delay (25);
  xtest=100;
  xtest=xtest+100;
  xtest=xtest-100;
  xtest=xtest*33;
  xtest=xtest/33;
  
  
}
