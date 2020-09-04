// Test code
//test 2
//test 3
Maskine m;
Box box;
ArrayList<Kugle> kugler; 


void setup() {
  size(800, 800);
  //lav kanonkugle
  kugler = new ArrayList<Kugle>();
  for (int i = 0; i < 10; i++) kugler.add(new Kugle(50, 20));
  m = new Maskine();
  box = new Box(650, 500, 100, 300);
}


void draw() {
  background(255);
  for (Kugle kugle : kugler) {
 
    ArrayList<Kugle> kugler2 = new ArrayList<Kugle>(kugler);
    kugler2.remove(kugle);
    
    // Her opdaterers hver kanonkugle's lokation og tjekker for dens kollision
    // med de andre inde i det array der hedder kugler2.
    // Der tjekkers også kollision mellem box og kuglerne
    // Til sidst "displayer" jeg dem bare.
    kugle.update();
    kugle.checkCollision(kugler2, box);
    kugle.display();
  }
  m.display();
  box.display();
}

void mousePressed(){


}
