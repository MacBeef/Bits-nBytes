int res = 0;
char rand;

void setup() {
}
void draw() {
  byteMaker();
  charMaker();
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
      res = res + int(pow(2, i));
    }
  }
}

void byteMaker() {
  forBitMine();
  println(res);
  res = 0;
}

void charMaker() {
  forBitMine();
  rand = char(res);
  println(rand);
  res = 0;
}

void stringMaker() {
  forBitMine();
  print(res);
  res = 0;
}
