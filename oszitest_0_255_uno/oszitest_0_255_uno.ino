/*
  Youtube Tutorial xr_arduino_02
  xr_ampel4
  Schaltet 3 leds in Funktion einer Ampel mit delay() als verzögerung. Test für Arduino.
  Änderung zu xr_ampel1: startmethode ist jetzt ledinit()
  Änderung zu xr_ampel2: Alle Funktionen der ampel jetzt per polling
  Änderung zu xr_ampel4: Zum Beweis das gepollt wird pulse auf grüne led
  This example code is in the public domain.
 
 */

// Getestet an folgenden Arduino Boards: uno,
 
// Pin 13 über Vorwiderstand an rote Led.
// Pin 12 über Vorwiderstand an gelbe Led.
// Pin 11 über Vorwiderstand an grüne Led.
// Pin 10 über Vorwiderstand an rote Led/Fussgaenger
// Pin 9  über Vorwiderstand an grüne Led/Fussgaenger
// 

int led_funktion; //speichert den aktuellen status der ampel



// Start nach Reset hier:
void setup() {                
  // initialisiere digitale output/input pins.
  // Initalisiere Ampel beim Start, kfz=rot, Fussgaenger=gruen
  pinMode(7,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(2,OUTPUT);
  pinMode(1,OUTPUT);
  pinMode(0,OUTPUT);
  
  
} //void setup

// Hauptschleife:
void loop() {
  
  led_funktion++;
  //delay(100);
  PORTD = led_funktion;
  
} //void loop


