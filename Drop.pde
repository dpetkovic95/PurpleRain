class Drop {
  
  
  float x = random(width);
  float y = random (height);
  float z = random(0, 20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0 , 20, 1, 20);
  
  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;
    
    if (y > height) {
      x = random(width);
      y = random(-200,-100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }
  
  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(255, 255, 255);
    line(x,y,x,y+len);
  }
  
  
  
  void stop(Umbrella u) {
 
    if (x > u.x-u.a/2 && x<u.x+u.a/2) {
      if(y >= u.y - u.b/2){
        x = random(width);
        y = random(-200,-100);
        yspeed = map(z, 0, 20, 4, 10);
    }
 }

}

}
