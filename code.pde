int bitNum;
char randomChar;
String randomString;
int strLength;
boolean reset;



void setup() {
  bitNum = 0;
  randomChar = ' ';
  randomString = "";
  strLength = int(random(2, 11));
  
  byteMaker();
  println("Her har vi en byte:  " + bitNum);

  charMaker();
  println("Her har vi en character:  " + randomChar);
  
  stringMaker();
  println("Her har vi en string:  " + randomString);
  
}
void draw() {
}

boolean bitMine() {
  return random(0, 2) < 1;
}

byte byteMaker() {
  for (int i = 7; i > 0; i--) {
    if (bitMine()) {
      bitNum += int(pow(2, i));
    }
  }
  return byte(bitNum);
}


char charMaker() {
  byteMaker();
  randomChar = char((bitNum));
  if (reset) {
    bitNum = 0;
  }
  return randomChar;
}


String stringMaker() {
  reset = false;
  for (int i = 0; i < strLength; i++) {
    charMaker();
    randomString += randomChar;
    reset = true;
    bitNum = 0;
  }
  return randomString;
}

int intMaker() {
  
}
