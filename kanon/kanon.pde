// Test code
//test 2
//test 3
Maskine m;
ArrayList<Kugle> kugler; 


void setup() {
  size(800, 800);
  kugler = new ArrayList<Kugle>();
  for (int i = 0; i < 10; i++) kugler.add(new Kugle(50, 20));
  m = new Maskine();
}


void draw() {
  background(255);
  for (Kugle kugle : kugler) {
    // Jeg bliver nødt til at lave et helt nyt array,
    // så jeg kan fjerne den hoppebold jeg arbejder med lige nu i det nuværende loop
    // da jeg ikke skal bruge den samme hoppebold til at tjekke om jeg har ramt :D
    ArrayList<Kugle> kugler2 = new ArrayList<Kugle>(kugler);
    kugler2.remove(kugle);
    
    // Her opdaterer jeg hver hoppebold's lokation og tjekker for dens kollision
    // med alle andre hoppebolde inde i det array der hedder hoppeBolde2.
    // Jeg tjekker også kollision for hver bold og alle bakkerne
    // Til sidst "displayer" jeg dem bare.
    kugle.update();
    kugle.checkCollision(kugler2);
    kugle.display();
  }
  m.display();
}

void mousePressed(){


}
