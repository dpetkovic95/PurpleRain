class Umbrella {
  
  int x, y, a, b;

  Umbrella() {
    x = 0;
    y = 0;
    a = 100;
    b = 40;
  }

  void display() {
    x = mouseX;
    y = mouseY;
    
    noStroke();
    fill(0);
    rect(x-2.5,y-25,2.5,80);
    fill(0);
    noStroke();
    arc(x,y,a,b, PI, TWO_PI);
  }
}
