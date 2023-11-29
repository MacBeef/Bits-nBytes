int bitNum;
char randomChar;
String randomString;

void setup() {
  bitNum = 0;
  randomChar = ' ';
  randomString = "";

  print("Her har vi en byte:  ");
  byteMaker();

  print("Her har vi en character:  ");
  charMaker();

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

void charMaker() {
  forBitMine();
  randomChar = char(bitNum);
  println(randomChar);
  bitNum = 0;
}

void stringMaker() {
  for (int i = 0; i < 4; i++) {
    forBitMine();
    randomString = randomString + char(bitNum);
    bitNum = 0;
  }
  println(randomString);
  randomString = "";
}
