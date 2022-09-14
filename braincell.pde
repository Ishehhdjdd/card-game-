Card[] c = new Card[10];
ArrayList<String> showtext = new ArrayList<String>();
int[] count = new int[5];

void setup() {
  size(1000, 500);
  String abc = "ABCDE";
  for (int i = 0; i < c.length; i++) {
    int r = (int)random(5);
    while (count[r]>= 2) {
      r = (int)random(5);
    }
    c[i] = new Card(abc.substring(r, r + 1), i, false);
    count[r]++;
  }
}

void draw() {
  background(220);
  boolean fin = true ; 
  for (int i = 0; i < c.length; i++) {
    c[i].display();
    if ( c[i].position!=100){

      fin = false  ;
    }
  }
  text ( "time "+ frameCount/10, 300 ,100);
  textSize(70);
  if (fin == true){
  fill(200,0,0);
  
  
  text("win", 200,200);
frameRate(0);
  }


}

void mouseReleased() {
  if (showtext.size()>= 2) {
    String a1 = showtext.get(0);
    String a2 = showtext.get(1);
    if (a1.equals(a2)) {
      System.out.print(showtext);
      for (int i = 0; i < c.length; i++) {
        if (c[i].text.equals(a1)) {

          c[i].position = 100;
        }
      }
       showtext.clear();
    } else {

      hidecard();
    }




    return;
  }
  for (int i = 0; i < c.length; i++) {


    double d = dist(mouseX, mouseY, c[i].x, c[i].y);
    if (c[i].show ==  false && d < 30) {
      c[i].show = (!c[i].show);
      showtext.add(c[i].text);

      break;
    }
  }
}
void hidecard() {


  for (Card c1 : c) {
    c1.show = false;
  }
  showtext.clear();
}
