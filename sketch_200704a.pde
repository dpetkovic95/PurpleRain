import processing.sound.*; 
Drop[] drops = new Drop[500];
Umbrella umbrella;
SoundFile file;
SoundFile file2;



void setup() {
  
  size(640, 360);
  
  file = new SoundFile(this,"rain5.mp3");
  file.amp(0.5);
  file2 = new SoundFile(this,"thunder.mp3");
  
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
    umbrella = new Umbrella();
    
  }
  file.play();
}

void draw() {
   background(138, 43, 226);
   for (int i = 0; i < drops.length; i++ ) {
     frameRate(60);
     drops[i].stop(umbrella);
     drops[i].show();
     drops[i].fall();
     
   }
   umbrella.display();
}

void mouseClicked() {
  
  file2.amp(1);
  file2.play();
  frameRate(5);
  background(250, 247, 252);
}
