class Group {
  String name;
  ArrayList<Country> countries;
  float x, y;
  
  Group(String name, float x, float y) {
    this.name = name;
    this.countries = new ArrayList<Country>();
    this.x = x;
    this.y = y;
  }
  
  void addCountry(String name, String flagPath) {
    float countryY = y + countries.size() * 45;
    countries.add(new Country(name, flagPath, x, countryY));
  }
  
  void display() {
    fill(0);
    textSize(14);
    textAlign(LEFT);
    text(name, x, y - 20);
    
    for (Country c : countries) {
      c.display();
    }
  }
}
