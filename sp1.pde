class Country {
  String name;
  PImage flag;
  float x, y;
  
  Country(String name, String flagPath, float x, float y) {
    this.name = name;
    this.flag = loadImage(flagPath);
    this.x = x;
    this.y = y;
  }
  
  void display() {
    fill(255); // Hvid baggrund
    rect(x, y, 160, 40); // baggrund
    image(flag, x, y, 40, 40); // flag
    fill(0);
    textSize(12);
    textAlign(LEFT, CENTER);
    text(name, x + 50, y + 20); // tekst ved siden af flag
  }
}
