#include <Arduino.h>
const int ledPin2 = 2; // LED connected to digital pin 2
const int ledPin5 = 5; // LED connected to digital pin 5
const int ledPin7 = 7; // LED connected to digital pin 7

// Define a perceivable delay for pin 7's continuous toggling
const int toggleDelay = 250; // milliseconds (e.g., 250ms for a quarter-second blink)

void setup() {
  // Set the LED pins as outputs
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin5, OUTPUT);
  pinMode(ledPin7, OUTPUT);

  // --- Initial state for Pin 2 ---
  // Pin 2 is ON at the "start of sim", then turns OFF and stays OFF.
  digitalWrite(ledPin2, HIGH); // Turn pin 2 ON (simulating initial state)
  delay(100);                  // Short delay to observe initial ON state

  // --- Actions after the "start of sim" initial state ---
  digitalWrite(ledPin2, LOW);  // Turn pin 2 OFF and keep it OFF
  digitalWrite(ledPin5, HIGH); // Turn pin 5 ON and keep it ON
}

void loop() {
  // --- Pin 7 toggles continuously and independently ---
  digitalWrite(ledPin7, HIGH); // Turn pin 7 ON
  delay(toggleDelay);          // Wait for 'toggleDelay' milliseconds
  digitalWrite(ledPin7, LOW);  // Turn pin 7 OFF
  delay(toggleDelay);          // Wait for another 'toggleDelay' milliseconds
}