/*
  HV5222 Driver Test
  Uses Nano to clock 32 bits of data into HV5222
  Data value "1" turns on a driver output (bringing it to ground)
  Data value "0" turns off a driver output

  The driver output enable and 12v power supply must be controlled properly to prevent
  unexpected driver output states during power up and while clocking data in.

  Gadget Reboot

*/

int datapin = 2;            // driver data
int clk = 3;                // driver clock
int oe = 4;                 // driver output enable
int Ena12v = 5;             // 12v power supply enable (active high)
const byte maxCh = 32;      // 32 channel shift register
const int shiftDelay = 50;  // microsecond delay to use for shifting data

// turn all channels off
void clearOutputs() {
  disableOutput();
  digitalWrite(datapin, HIGH);
  delayMicroseconds(shiftDelay);
  for (byte i = 0; i < 32; i++) {    // send data=0 to all driver channels to turn them off
    toggleClk();
  }
  enableOutput();
}

// set driver OE low (hardware inverted logic, so gpio is set high) to disable driver output pins
void disableOutput() {
  delayMicroseconds(shiftDelay);
  digitalWrite(oe, HIGH);
  delayMicroseconds(shiftDelay);
}

// set driver OE high (hardware inverted logic, so gpio is set low) to enable driver output pins
void enableOutput() {
  delayMicroseconds(shiftDelay);
  digitalWrite(oe, LOW);
  delayMicroseconds(shiftDelay);
}

// set clock low, then high to shift in a data bit (hardware has inverted logic)
void toggleClk() {
  delayMicroseconds(shiftDelay);
  digitalWrite(clk, HIGH);
  delayMicroseconds(shiftDelay);
  digitalWrite(clk, LOW);
  delayMicroseconds(shiftDelay);
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

// turn on one channel at a time to test all outputs
void walkingOneTest() {
  for (byte i = 1; i <= 32; i++) {
    setCh(i, true);
    delay(300);
  }
}

void displayNumber(int num) {
  //separate the digits out of the integer
  byte ones = num % 10;
  byte tens = (num / 10) % 10;
  byte hund = (num / 100) % 10;

  Serial.print("Number ");
  Serial.println(num);

  Serial.print("Ones ");
  Serial.print(ones);

  Serial.print(" Tens ");
  Serial.print(tens);

  Serial.print(" Hundreds ");
  Serial.println(hund);

  byte hvChannel[32];  // array of on/off data for HV outputs
  for (int i = 0; i <= 31; i++) {  // make sure array is init with all 0
    hvChannel[i] = 0;
  }

  // set a bit for each digit that will be turned on
  // Hundreds [0..9] = HV output [1..10]
  // Tens     [0..9] = HV output [11..20]
  // Ones     [0..9] = HV output [21..30]

  // Add 20 to the Ones digit value to jump to that part of the array
  // and set a bit to turn on a digit
  hvChannel[ones + 20] = 1;

  // if the tens digit is needed, add array position offset 10 and control that digit (don't show leading zeros)
  if (num > 9) hvChannel[tens + 10] = 1;

  // if the hundreds digit is needed, (no array offset needed) control that digit (don't show leading zeros)
  if (num > 99) hvChannel[hund] = 1;

  Serial.println("HV Output Pins [32..1]");

  // shift the array data to the HV driver in the correct order for the shift register to decode, and turn on the outputs
  disableOutput();
  for (int i = 31; i >= 0; i--) {
    boolean dataVal;
    if (hvChannel[i] == 0)
      dataVal = HIGH;
    else
      dataVal = LOW;
    digitalWrite(datapin, dataVal); // turn HV channels on or off (inverted hardware logic) based on array data
    toggleClk();
  }
  enableOutput();

  for (int i = 31; i >= 0; i--) {
    boolean dataVal;
    if (hvChannel[i] == 0)
      dataVal = HIGH;
    else
      dataVal = LOW;
    Serial.print(dataVal ? "1" : "0");
  }
  Serial.println();
  Serial.println();
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
}

void loop() {

  //walkingOneTest();  // turn on one driver output at a time to test all 32 channels


  // count from 0 to 999 using 3 Nixie IN-12 digits
  // output 1-10 = Hundreds digit 0-9
  // output 11-20 = Tens digit 0-9
  // output 21-30 = Ones digit 0-9

  for (int i = 0; i <= 999; i++) {
    displayNumber(i);
    delay(300);
  }


}
