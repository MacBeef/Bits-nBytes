byte bitNum;
char randomChar;
String randomString;
int strLength;
int randomInt;
boolean reset;



void setup() {
  bitNum = 0;
  randomChar = ' ';
  randomString = "";
  strLength = int(random(2, 11));
  
  byteMaker();
  println("Her har vi en byte:  " + bitNum);

  charMaker();
  println("Her har vi en char:  " + randomChar);
  
  stringMaker();
  println("Her har vi en string:  " + randomString);
  
  intMaker();
  println("Her har vi en int:  " + randomInt);
  
}
void draw() {
}

boolean bitMine() {
  return random(0, 2) < 1;
}

//contains 8 bits
byte byteMaker() {
  for (int i = 7; i > 0; i--) {
    if (bitMine()) {
      bitNum += int(pow(2, i));
    }
  }
  return bitNum;
}

//contains 8 bits
char charMaker() {
  byteMaker();
  randomChar = char((bitNum));
  if (reset) {
    bitNum = 0;
  }
  return randomChar;
}

//contains 8 * strLength bits
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

//contains 32 bits
int intMaker() {
  for(int i = 0; i < 4; i++){
    byteMaker();
    randomInt += bitNum;
  }
  return randomInt;
}
