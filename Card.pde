class Card {

  String text;
  int position;
  boolean show;
  int x ;
  int y;

  Card(String t, int i, boolean s) {
    text = t;
    position = i;
    show = s;
  }

  void display() {

    rectMode(CENTER);
    fill(20);

    // position:1  ==> x:180
    // position:2  ==> x:260
    // position:3  ==> x:340
    // ...
    x = position * 80 + 100;
    y = 250;

    if (show ==  true) {
      fill(240);
    }
    rect(x, y, 60, 60);
    if (show ==  true) {
      fill(0);
      textSize(46);
      text(text, x - 15, y + 15);
    }
  }
}
