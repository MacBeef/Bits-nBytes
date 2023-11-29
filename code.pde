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

  print("Her har vi en byte:  ");
  byteMaker();

  print("Her har vi en character:  ");
  charMaker(true);

  print("Her har vi en string:  ");
  stringMaker();
}
void draw() {
}

boolean bitMine() {
  if (random(0, 2) > 1) {
    return true;
  }
  return false;
}

void forBitMine() {
  for (int i = 0; i < 8; i++) {
    if (bitMine()==true) {
      bitNum = bitNum + int(pow(2, i));
    }
  }
}

void byteMaker() {
  forBitMine();
  println(bitNum);
  bitNum = 0;
}

void charMaker(boolean print) {
  forBitMine();
  randomChar = char(bitNum);
  if (reset) {
    bitNum = 0;
  }
  if (print) {
    println(randomChar);
  }
}

void stringMaker() {
  reset = false;
  for (int i = 0; i < strLength; i++) {
    charMaker(false);
    randomString = randomString + randomChar;
    reset = true;
    bitNum = 0;
  }
  println(randomString);
  randomString = "";
}

void intMaker() {
}
