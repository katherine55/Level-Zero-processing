import ddf.minim.*;
int speed = 20;
Minim minim;  
AudioPlayer song;  
PImage pictureOfRecord;
void setup(){
  minim = new Minim(this);
  song = minim.loadFile("music.mp3", 512);

pictureOfRecord = loadImage("record12.jpg");
size(1026, 1045);
}

void draw(){
  song.pause();
  if(mousePressed){
  song.play();
}
if(mousePressed){rotateImage(pictureOfRecord, speed);
}
speed +=20;
image(pictureOfRecord, 0,0);
}
void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}
