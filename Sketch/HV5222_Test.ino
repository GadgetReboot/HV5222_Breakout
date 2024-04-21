/*
  HV5222 Driver Test
  Uses Nano to clock 32 bits of data into HV5222 with a walking "1" cycling through all outputs 
  The driver output enable and 12v power supply must be controlled properly to prevent 
  unexpected driver output states during power up and while clocking data in.

  Gadget Reboot

*/

int clk = 2;            // driver clock
int datapin = 3;        // driver data
int oe = 4;             // driver output enable
int Ena12v = 5;         // 12v power supply enable (active high)
const byte maxCh = 32;  // 32 channel shift register

// turn all channels off
void clearOutputs() {
  disableOutput();
  digitalWrite(datapin, HIGH);
  delay(1);
  for (byte i = 0; i < 32; i++) {    // send data=0 to all driver channels to turn them off
    toggleClk();
  }
  enableOutput();
}

// set driver OE low (hardware inverted logic, so gpio is set high) to disable driver output pins
void disableOutput() {
  delay(1);
  digitalWrite(oe, HIGH);
  delay(1);
}

// set driver OE high (hardware inverted logic, so gpio is set low) to enable driver output pins
void enableOutput() {
  delay(1);
  digitalWrite(oe, LOW);
  delay(1);
}

// set clock low, then high to shift in a data bit (hardware has inverted logic)
void toggleClk() {
  delay(1);
  digitalWrite(clk, HIGH);
  delay(1);
  digitalWrite(clk, LOW);
  delay(1);
}

void setCh( int ch, boolean state ) {

  Serial.print("Turning output ch ");
  Serial.print(ch);
  Serial.println(state ? " On" : " Off");
  boolean chState = !state;              // invert the control signal since hardware is inverted

  disableOutput();
  //set the target channel state and set all other channels off
  if (ch > 1 && ch < 32) {
    digitalWrite(datapin, HIGH);            // turn off any channels after target channel eg. turn off ch7-32  if targeting ch6
    for (byte i = maxCh; i > ch; i--) {
      toggleClk();
    }
  }

  digitalWrite(datapin, chState);           // control the target channel as requested
  toggleClk();

  digitalWrite(datapin, HIGH);            // turn off any channels before target channel eg. turn off ch1-5  if targeting ch6
  for (byte i = ch; i > 1; i--) {
    toggleClk();
  }

  enableOutput();

}

void setup() {
  // set driver control signals (high gpio = low signal after transistor driver for clk, datapin, oe)
  digitalWrite(datapin, HIGH);
  digitalWrite(clk, LOW);      // keep clock high until time to shift data in on falling edge of clock
  digitalWrite(oe, HIGH);      // keep driver outputs disabled until data has been shifted in
  digitalWrite(Ena12v, HIGH);  // enable driver 12v power supply so HV5222 can power up with outputs disabled (oe pin)
  pinMode(oe, OUTPUT);
  pinMode(datapin, OUTPUT);
  pinMode(clk, OUTPUT);
  pinMode(Ena12v, OUTPUT);

  Serial.begin(115200);

  Serial.println("Setup: Clear outputs");
  clearOutputs();  // set all driver outputs to off
  delay(1000);
  Serial.println("Done setup.");
}

void loop() {

  // turn on one driver output at a time to test all 32 channels
  for (byte i = 1; i <= 32; i++) {
    setCh(i, true);
    delay(300);
  }


}
