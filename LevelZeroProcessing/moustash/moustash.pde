
PImage mustache;
void setup(){
  PImage pug = loadImage("Pug_portrait.jpg");
  size(pug.width, pug.height);
  background(pug);
  mustache = loadImage("images.png");
}
void draw(){
  if(mousePressed){
    image(mustache, mouseX - 145, mouseY - 130);
  }
}
