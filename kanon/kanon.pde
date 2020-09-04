// Test code
//test 2
//test 3
Maskine m;
ArrayList<Kugle> kugler;
ArrayList<Box> boxes;


void setup() {
  size(800, 800);
  
  m = new Maskine();
  
  kugler = new ArrayList<Kugle>();
  for (int i = 0; i < 10; i++) kugler.add(new Kugle(50, 20));
  
  boxes = new ArrayList<Box>();
  for (int i = 0; i < 1; i++) boxes.add(new Box(650, 500, 100, 300));
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

void mousePressed(){
  
}
