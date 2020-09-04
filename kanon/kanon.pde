// Test code
//test 2
//test 3
ArrayList<Kugle> kugler;
ArrayList<Box> boxes;
Maskine m;

void setup() {
  size(800, 800);
  kugler = new ArrayList<Kugle>();
  boxes = new ArrayList<Box>();
  for (int i = 0; i < 1; i++) boxes.add(new Box(650, 500, 100, 300));
  m = new Maskine(kugler);
}

void draw() {
  background(255);
  m.display();
  
  for (Kugle kugle : kugler) {
    ArrayList<Kugle> kugler2 = new ArrayList<Kugle>(kugler);
    kugler2.remove(kugle);

    // Her opdaterers hver kanonkugle's lokation og tjekker for dens kollision
    // med de andre inde i det array der hedder kugler2.
    // Der tjekkers også kollision mellem box og kuglerne
    // Til sidst "displayer" jeg dem bare.
    kugle.update();
    kugle.checkCollision(kugler2, boxes);
    kugle.display();
  }

  for (Box box : boxes) box.display();
}

void keyPressed() {
   m.action();
   println(key);
}
